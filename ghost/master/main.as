function OnAosoraDefaultSaveData
{
	Save.Data.TalkInterval = 300;
	Save.Data.BalloonLines = 8;
	Save.Data.ChickenScratchStyle = "cursive"; //cursive, print, type
	DebugMode = false;
	
	Save.Data.Chickens = [];
	Save.Data.ReservedChickens = [];
}

function OnAosoraLoad
{
	TalkTimer.RandomTalk = OnTalkControl;
	TalkTimer.RandomTalkIntervalSeconds = Save.Data.TalkInterval;
	TalkBuilder.Default.Head = "\0\b[0]";
	TodaysLetter = [];
	ChainTalkQueue = [];
	LastTalk = "";
	TimeSinceLastTalk = Time.GetNowUnixEpoch();
	SetSurfaceRestoreRand();
	CurrentBalloon = "";
	CurrentBalloonPattern = Random.GetIndex(0,11) * 10; //0-10
	RemainingTalks = 10; //Can randomize this a bit (though chains kinda take care of that), may also need to adjust based on how much we write in total
	RotateChickens();
}

function OnTranslate
{
	talkstr = (Shiori.Reference[0]).ToString();
	
	if (CurrentBalloon == "Chicken Scratch")
	{
		local balloonnum = CurrentBalloonPattern;
		if (Save.Data.ChickenScratchStyle == "print") balloonnum += 1000;
		else if (Save.Data.ChickenScratchStyle == "type") balloonnum += 2000;
		
		talkstr = talkstr.Replace("\0\b[0]","\0\b[{balloonnum}]");
	}
	
	//The second check is to exclude the Aosora error balloon from autopause
	if (!(talkstr.Contains("\![no-autopause]") || talkstr.Contains("■Aosora")))
	{
		talkstr = talkstr.Replace(", ",",\w4 ");
		talkstr = talkstr.Replace(". ",".\w8\w8 ");
		talkstr = talkstr.Replace(": ",".\w8\w8 ");
		talkstr = talkstr.Replace("; ",".\w8 ");
		talkstr = talkstr.Replace("! ",".\w8\w8 ");
		talkstr = talkstr.Replace("? ",".\w8\w8 ");
		talkstr = talkstr.Replace("\![ap-n]","\w8\w8");
	}
	
	return talkstr;
}

function OnBoot
{
	LastTalk = BootTalk();
	return  LetterDisplay([LastTalk]) + OnBalloonLinesCommand();
}

function OnClose
{
	local closetalk = CloseTalk();
	return LetterDisplay([LastTalk,closetalk]) + "\x[noclear]" + EnvelopeDisplay();
}

function OnFinish
{
	return "\s[2]\_w[1000]" + OnClose();
}

function EnvelopeDisplay
{
	if (CurrentBalloon == "Chicken Scratch")
	{
		local rand = Random.GetIndex(0,4);
		return "\w[1000]\c\b[1000{rand}0] \_w[2000]";
	}
}

function OnTalkControl
{
	if (RemainingTalks > 0)
	{
		if (LastTalk != "") TodaysLetter.Add(CleanLetterTags(LastTalk));
		
		//I had to reinvent chains because the normal RandomTalkQueue doesn't route through any of my control functions when called by TalkTimer... I'll report it later but for now this should work
		if (ChainTalkQueue.length > 0)
		{
			LastTalk = Reflection.Get("{ChainTalkQueue[0]}")();
			ChainTalkQueue.Remove(0);
		}
		else
		{
			RemainingTalks--;
			LastTalk = Reflection.Get("RandomTalk")();
		}
		
		return LetterDisplay([LastTalk]);
	}
}

//Catch \a, key press, etc
function OnAITalk
{
	return TalkTimer.CallRandomTalk();
}

function LetterDisplay(arg)
{
	//Because when closing, we don't want to change LastTalk (in case the user cancels) but we also need to include both LastTalk and the closing dialogue in the letter... we have to do this
	local instantdisplay = TodaysLetter;
	local regulardisplay = arg[arg.length - 1];
	arg.Remove(arg.length - 1);
	instantdisplay.AddRange(arg);
	
	Debug.WriteLine("arg: {DisplayArray(arg)}");
	Debug.WriteLine("instantdisplay: {DisplayArray(instantdisplay)}");
	Debug.WriteLine("regulardisplay: {regulardisplay}");
	
	local display = "";
	display += "\![quicksection,1]";
	for (local i = 0; i < instantdisplay.length; i++)
	{
		if (i > 0) display += ParagraphBreak();
		display += instantdisplay[i];
	}
	if (instantdisplay.length > 0) display += ParagraphBreak();
	if (instantdisplay.length > 0) display += "\n[{Save.Data.BalloonLines}00] \n[-{Save.Data.BalloonLines}00]";
	if (CurrentBalloon == "Chicken Scratch" && Save.Data.ChickenScratchStyle == "cursive") display += ""; //This feels weird but also I am worried that there may be more conditions later and so don't want to make it a ! ??? idk i'm very tired right now, i'll probably realize there's a way better way to do this later
	else display += "\n[50]";
	display += "\![quicksection,0]";
	display += regulardisplay;
	return display;
}

function OnReviewAll
{
	local display = "";
	display += "\![quicksection,1]\![set,autoscroll,disable]";
	for (local i = 0; i < TodaysLetter.length; i++)
	{
		if (i > 0) display += ParagraphBreak();
		display += TodaysLetter[i];
	}
	if (TodaysLetter.length > 0) display += ParagraphBreak();
	display += CleanLetterTags(LastTalk);
	display += "\![quicksection,0]\x";
	return display;
}

function OnKeyPress
{
	if (Shiori.Reference[0] == "t") return OnAITalk;
	else if (Shiori.Reference[0] == "r") return OnLastTalk;
	else if (Shiori.Reference[0] == "f1") return "\![open,readme]";
}

function OnMouseDoubleClick
{
	if (Shiori.Reference[3] == 0 && Shiori.Reference[5] == 0) return OnMainMenu("init");
}

function OnBalloonChange
{
	local output = "";
	if (BalloonIsOpen()) output += "\C";
	output += OnBalloonLinesCommand();
	return output;
}

function OnSecondChange
{
	if (Shiori.Reference[3] == 0) TimeSinceLastTalk = Time.GetNowUnixEpoch();
	
	local since = Time.GetNowUnixEpoch() - TimeSinceLastTalk;
	
	if (since >= SurfaceRestoreRand) return OnSurfaceRestore;
}

function OnSurfaceRestore, OnWindowStateRestore
{
	TimeSinceLastTalk = Time.GetNowUnixEpoch();
	
	local output = "";
	output += "\1\s[-1]";
	if (RemainingTalks > 0)
	{
		output += "\0\s[0]";
	}
	else
	{
		output += "\0\s[1]";
	}
	return output;
}

function SetSurfaceRestoreRand
{
	SurfaceRestoreRand = Random.GetIndex(30,180);
}

function OnNotifyBalloonInfo
{
	CurrentBalloon = Shiori.Reference[0];
}