function OnAosoraDefaultSaveData
{
	Save.Data.TalkInterval = 300;
}

function OnAosoraLoad
{
	TalkTimer.RandomTalk = OnTalkControl;
	TalkTimer.RandomTalkIntervalSeconds = Save.Data.TalkInterval;
	TodaysLetter = [];
	ChainTalkQueue = [];
	LastTalk = "";
}

function OnBoot
{
	LastTalk = BootTalk();
	return OnLetterDisplay();
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

function OnLastTalk
{
	return OnLetterDisplay;
}

function OnLetterDisplay
{
	
	local display = "";
	display += "\![quicksection,1]";
	for (local i = 0; i < TodaysLetter.length; i++)
	{
		if (i > 0) display += "\n\n\n\n";
		display += TodaysLetter[i];
	}
	if (TodaysLetter.length > 0) display += "\n\n\n\n"; //TODO it couuuld maybe be nice to set this up to jump so that all the previous text is off the balloon, then come back up? but only when set to the custom balloon, which we don't have yet...
	display += "\![quicksection,0]";
	display += LastTalk;
	return display;
}

//Removes pauses and such so that the letter doesn't have jumps when it is viewed/the sakurascript is kept as tidy as possible
function CleanLetterTags(talkstr)
{
	if (talkstr.IsNull()) talkstr = "";
	//Pauses
	talkstr = talkstr.Replace("\w8","");
	talkstr = talkstr.Replace("\w4","");
	
	//Add more as needed...
	
	return talkstr;
}

function OnKeyPress
{
	if (Shiori.Reference[0] == "t") return OnAITalk;
	else if (Shiori.Reference[0] == "r") return OnLastTalk;
	else if (Shiori.Reference[0] == "f1") return "\![open,readme]";
}