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

function homeurl
{
	return "https://raw.githubusercontent.com/Zichqec/thoughtful_replies/refs/heads/main/";
}

function OnTranslate
{
	local talkstr = (Shiori.Reference[0]).ToString();
	
	//Process {these} when used in script input - It's not as good as the YAYA version, it can't handle arguments (I tried and couldn't get it to properly process them), but it should at least let you demo basic word groups
	//Of course, this also isn't as helpful as it is in YAYA, since your dialogues can spread across multiple lines here... but still, it should help a bit
	//NOTE: there's a weird bug here... if I reload the ghost I can use this just fine, but then after opening the menu, suddenly it breaks??? I need to track that down if I want to develop this any further
	if (Shiori.Reference[1] == "" && Shiori.Reference[2] == "")
	{
		local temp = "";
		local slices = talkstr.Split((123).ToAscii());
		temp += slices[0];
		for (local i = 0; i < slices.length; i++)
		{
			local slice = slices[i];
			if (slice.Contains("}"))
			{
				local interpolate = slice.Split("}")[0];
				//Avoid a runtime error if a non-function or nonexistent function is passed
				try
				{
					temp += Reflection.Get(interpolate)();
				}
				catch
				{
					temp += (123).ToAscii() + interpolate + "}";
				}
				temp += slice.Split((125).ToAscii(),1)[1];
			}
		}
		talkstr = temp;
	}
	
	
	talkstr = talkstr.Replace("\0\b[0]","\0\b[{balloonnum}]");
	
	talkstr = AutoPause(talkstr);
	if (IsScriptFont())
	{
		//Requires the pauses from autopause, otherwise it interferes with other \n[] tags...
		talkstr = talkstr.Replace("\w8\w8\n\n","\w8\w8\n\n[50]");
		talkstr = talkstr.Replace("\w4\n\n","\w4\n\n[50]");
	}
	
	return talkstr;
}

function AutoPause(talkstr)
{
	//The second check is to exclude the Aosora error balloon from autopause
	if (!(talkstr.Contains("\![no-autopause]") || talkstr.Contains("■Aosora")))
	{
		talkstr = talkstr.Replace(", ",",\w4 ");
		talkstr = talkstr.Replace(". ",".\w8\w8 ");
		talkstr = talkstr.Replace(": ",":\w8\w8 ");
		talkstr = talkstr.Replace("; ",";\w8 ");
		talkstr = talkstr.Replace("! ","!\w8\w8 ");
		talkstr = talkstr.Replace("? ","?\w8\w8 ");
		talkstr = talkstr.Replace(",\n",",\w4\n");
		talkstr = talkstr.Replace(".\n",".\w8\w8\n");
		talkstr = talkstr.Replace(":\n",":\w8\w8\n");
		talkstr = talkstr.Replace(";\n",";\w8\n");
		talkstr = talkstr.Replace("!\n","!\w8\w8\n");
		talkstr = talkstr.Replace("?\n","?\w8\w8\n");
	}
	return talkstr;
}

function OnBoot
{
	LastTalk = BootTalk();
	return  "\0\s[0]" + LetterDisplay([LastTalk]) + OnBalloonLinesCommand();
}

function OnClose
{
	local closetalk = CloseTalk();
	return LetterDisplay([LastTalk,closetalk]) + "\x[noclear]" + EnvelopeDisplay() + "\-";
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
		return "\w[1000]\c\b[1000{rand}0]\_w[1000]\![set,alpha,0,1000] \_w[2000]";
	}
	else return "\![set,alpha,0,1000] \_w[1500]";
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
	
	local display = "";
	display += "\b[{balloonnum}]\![quicksection,1]\![no-autopause]";
	for (local i = 0; i < instantdisplay.length; i++)
	{
		if (i > 0) display += ParagraphBreak();
		display += instantdisplay[i];
	}
	if (instantdisplay.length > 0) display += ParagraphBreak();
	if (instantdisplay.length > 0) display += "\n[{Save.Data.BalloonLines}00] \n[-{Save.Data.BalloonLines}00]";
	if (IsScriptFont()) display += ""; //This feels weird but also I am worried that there may be more conditions later and so don't want to make it a ! ??? idk i'm very tired right now, i'll probably realize there's a way better way to do this later
	else display += "\n[50]";
	display += "\![quicksection,0]";
	display += AutoPause(regulardisplay);
	return display;
}

function OnReviewAll
{
	local display = "";
	display += "\b[{balloonnum}]\![quicksection,1]\![set,autoscroll,disable]\![no-autopause]";
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
	output += "\![set,alpha,100]";
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