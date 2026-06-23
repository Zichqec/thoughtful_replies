function OnAosoraDefaultSaveData
{
	Save.Data.TalkInterval = 300;
	Save.Data.BalloonLines = 10; //TODO adjust this based on our default balloon
	Save.Data.ChickenScratchStyle = "cursive"; //cursive, print, type
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
	CurrentBalloonPattern = Random.GetIndex(0,11); //0-10
}

function OnTranslate
{
	talkstr = (Shiori.Reference[0]).ToString();
	
	if (CurrentBalloon == "Chicken Scratch")
	{
		local balloonnum = CurrentBalloonPattern;
		if (Save.Data.ChickenScratchStyle == "print") balloonnum += 1000;
		else if (Save.Data.ChickenScratchStyle == "type") balloonnum += 2000;
		
		talkstr = talkstr.Replace("\0\b[0]","\0\b[{balloonnum}0]");
	}
	
	return talkstr;
}

function OnBoot
{
	LastTalk = BootTalk();
	return  OnLetterDisplay() + OnBalloonLinesCommand();
}

function OnClose
{
	LastTalk = CloseTalk() + "\x";
	return OnLetterDisplay();
}

function OnTalkControl
{
	if (LastTalk != "") TodaysLetter.Add(CleanLetterTags(LastTalk));
	
	//I had to reinvent chains because the normal RandomTalkQueue doesn't route through any of my control functions when called by TalkTimer... I'll report it later but for now this should work
	if (ChainTalkQueue.length > 0)
	{
		LastTalk = Reflection.Get("{ChainTalkQueue[0]}")();
		ChainTalkQueue.Remove(0);
	}
	else LastTalk = Reflection.Get("RandomTalk")();
	
	return OnLetterDisplay();
}

//Catch \a, key press, etc
function OnAITalk
{
	return TalkTimer.CallRandomTalk();
}

function OnLetterDisplay
{
	local display = "";
	display += "\![quicksection,1]";
	for (local i = 0; i < TodaysLetter.length; i++)
	{
		if (i > 0) display += ParagraphBreak();
		display += TodaysLetter[i];
	}
	if (TodaysLetter.length > 0) display += ParagraphBreak();
	if (TodaysLetter.length > 0) display += "\n[{Save.Data.BalloonLines}00] \n[-{Save.Data.BalloonLines}00]"; //TODO that \n[50] on the end there may need to be removed or adjusted... it works for the SSP default balloon, but...
	if (CurrentBalloon == "Chicken Scratch" && Save.Data.ChickenScratchStyle == "cursive") display += ""; //This feels weird but also I am worried that there may be more conditions later and so don't want to make it a ! ??? idk i'm very tired right now, i'll probably realize there's a way better way to do this later
	else display += "\n[50]";
	display += "\![quicksection,0]";
	display += LastTalk;
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
	
	Debug.WriteLine("since: {since} | SurfaceRestoreRand: {SurfaceRestoreRand}");
	if (since >= SurfaceRestoreRand) return OnSurfaceRestore;
}

function OnSurfaceRestore, OnWindowStateRestore
{
	TimeSinceLastTalk = Time.GetNowUnixEpoch();
	
	local output = "";
	output += "\1\s[-1]";
	output += "\0\s[0]";
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