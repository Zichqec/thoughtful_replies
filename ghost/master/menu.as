function OnMainMenu(cause)
{
	local m = "";
	
	if (cause == "init") m += "\C\![lock,balloonrepaint]\c";
	m += "\0\b[0]\![quicksection,true]\![set,autoscroll,disable]";
	
	m += "\![*]\__q[OnAITalk]Next\__q";
	//Shouldn't happen under normal circumstances, but may happen in edge cases
	m += "  ";
	if (LastTalk == "") m += "\![*]\f[color,disable]Replay\f[color,default]";
	else m += "\![*]\__q[OnLastTalk]Replay\__q";
	m += "  ";
	if (LastTalk == "") m += "\![*]\f[color,disable]Review\f[color,default]";
	else m += "\![*]\__q[OnReviewAll]Review\__q";
	
	m += "\n\n";
	
	local talkrates = [
		{time: 0, label: "Off"},
		{time: 60, label: "1m"},
		{time: 180, label: "3m"},
		{time: 300, label: "5m"},
		{time: 600, label: "10m"},
		{time: 900, label: "15m"},
	];
	
	m += "Talk rate: ";
	foreach (talkrate in talkrates)
	{
		if (talkrate.time == Save.Data.TalkInterval) m += "\f[underline,1]\_a[OnChangeTalkRate,{talkrate.time}]{talkrate.label}\_a\f[underline,default]";
		else  m += "\__q[OnChangeTalkRate,{talkrate.time}]{talkrate.label}\__q";
		m += "  ";
	}
	
	m += "\n\n";
	m += "\![*]\__q[blank]Close menu\__q";
	
	m += "\![unlock,balloonrepaint]";
	return m;
}

function OnLastTalk
{
	return OnLetterDisplay;
}

function OnChangeTalkRate
{
	local time = Shiori.Reference[0].ToNumber();
	Save.Data.TalkInterval = time;
	TalkTimer.RandomTalkIntervalSeconds = time;
	TalkTimer.RandomTalkElapsedSeconds = 0;
	return OnMainMenu;
}