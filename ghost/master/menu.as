function OnMainMenu(cause)
{
	local linebreak = "\n\n";
	if (IsScriptFont()) linebreak = "\n\n[50]";
	local m = "";
	
	if (cause != "init") m += "\C\![lock,balloonrepaint]\c";
	m += "\0\b[0]\![quicksection,true]\![set,autoscroll,disable]\![no-autopause]";
	
	if (RemainingTalks > 0) m += "\![*]\__q[OnAITalk]Next\__q";
	else m += "\![*]\f[color,disable]Next\f[color,default]";
	//Shouldn't happen under normal circumstances, but may happen in edge cases
	m += "  ";
	if (LastTalk == "") m += "\![*]\f[color,disable]Replay\f[color,default]";
	else m += "\![*]\__q[OnLastTalk]Replay\__q";
	m += "  ";
	if (LastTalk == "") m += "\![*]\f[color,disable]Review\f[color,default]";
	else m += "\![*]\__q[OnReviewAll]Review\__q";
	
	m += linebreak;
	
	if (RemainingTalks <= 0) m += "\![*]\__q[OnFinish]Finish and send\__q" + linebreak;
	
	local talkrates = [
		{time: 0, label: "Off"},
		{time: 60, label: "1m"},
		{time: 180, label: "3m"},
		{time: 300, label: "5m"},
		{time: 600, label: "10m"},
		{time: 900, label: "15m"},
	];
	
	m += "Talk rate:\n";
	foreach (talkrate in talkrates)
	{
		if (talkrate.time == Save.Data.TalkInterval) m += "\f[underline,1]\_a[OnChangeTalkRate,{talkrate.time}]{talkrate.label}\_a\f[underline,default]";
		else  m += "\__q[OnChangeTalkRate,{talkrate.time}]{talkrate.label}\__q";
		m += " ";
	}
	m += "\c[char,1]";
	
	local fonts = [
		{style: "cursive", label: "Cursive"},
		{style: "print", label: "Print"},
		{style: "type", label: "Type"},
	];
	
	if (CurrentBalloon == "Chicken Scratch")
	{
		m += linebreak;
		m += "Writing style:\n";
		foreach (font in fonts)
		{
			if (font.style == Save.Data.ChickenScratchStyle) m += "\f[underline,1]\_a[OnChangeBalloonStyle,{font.style}]{font.label}\_a\f[underline,default]";
			else  m += "\__q[OnChangeBalloonStyle,{font.style}]{font.label}\__q";
			m += "  ";
		}
	}
	
	m += linebreak;
	m += "\![*]\__q[blank]Close menu\__q";
	
	if (DebugMode)
	{
		m += linebreak;
		m += "\f[name,courier new]\f[height,14]Current chickens:\n";
		foreach (chicken in Save.Data.Chickens)
		{
			m += "\![*]{chicken}\n[50]";
		}
		
		m += linebreak;
		m += "Reserved chicken names:\n";
		foreach (chicken in Save.Data.ReservedChickens)
		{
			m += "\![*]{chicken}\n[50]";
		}
		
	}
	
	m += "\![unlock,balloonrepaint]";
	return m;
}

function OnLastTalk
{
	return LetterDisplay([LastTalk]);
}

function OnChangeTalkRate
{
	local time = Shiori.Reference[0].ToNumber();
	Save.Data.TalkInterval = time;
	TalkTimer.RandomTalkIntervalSeconds = time;
	TalkTimer.RandomTalkElapsedSeconds = 0;
	return OnMainMenu;
}

function OnChangeBalloonStyle
{
	Save.Data.ChickenScratchStyle = Shiori.Reference[0];
	return "\C\![lock,balloonrepaint]\c\0\b[0]{OnBalloonLinesCommand}\![raise,OnMainMenu]";
}