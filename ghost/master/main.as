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
	talkstr = talkstr.Replace("\_w[","\![dummy-"); //This is lazy of me, but I haven't messed with regex in Aosora yet...
	talkstr = talkstr.Replace("\![quicksection,0]","");
	talkstr = talkstr.Replace("\![quicksection,1]","");
	
	
	//Scoop out anything between the style start/end tags, because it's a ton of sakurascript tags that we don't need to run for the final result
	local temp = "";
	local slices = talkstr.Split("\![style-start]");
	temp += slices[0];
	for (local i = 0; i < slices.length; i++)
	{
		local slice = slices[i];
		
		if (slice.Contains("\![style-end]")) temp += slice.Split("\![style-end]",1)[1];
		//else temp += slice; //To catch the first piece... hum
	}
	talkstr = temp;
	
	return talkstr;
}

function style(type, word, wait, strokewait, newwait)
{
	if (type.IsNull()) return;
	if (word.IsNull()) return;
	
	local pause = "\_w[2000]";
	if (!wait.IsNull()) pause = "\_w[{wait}]";
	
	local strokepause = "\_w[100]";
	if (!strokewait.IsNull()) strokepause = "\_w[{strokewait}]";
	
	local newpause = "\_w[500]";
	if (!newwait.IsNull()) newpause = "\_w[{newwait}]";
	
	local len = word.length;
	local erase = "\c[char,{len}]";
	
	local output = "";
	
	output += "\![style-start]";
	output += word;
	output += "\![quicksection,1]";
	output += pause;
	
	for (local i = 0; i < len; i++)
	{
		output += erase;
		if (i == 0) output += " "; //Temp bandaid patch for what seems to be an SSP bug...
		if (i == len - 1) output += "\![style-end]";
		output += "\f[{type},1]";
		output += word.Substring(0,i + 1);
		output += "\f[{type},0]";
		output += word.Substring(i + 1);
		output += strokepause;
	}
	
	output += newpause;
	output += "\![quicksection,0]";
	
	return output;
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