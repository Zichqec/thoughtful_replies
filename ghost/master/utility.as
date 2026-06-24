function ParagraphBreak
{
	if (IsScriptFont()) return "\n\n\n[half]";
	else return "\n\n\n";
}

function BalloonIsOpen
{
	if ((Shiori.Headers.Status.ToString()).Contains("balloon")) return true;
	else return false;
}

//This may need to change if we end up using multiple balloon sizes...
function OnBalloonLinesCommand
{
	return "\![get,property,OnBalloonLinesCheck,currentghost.balloon.scope(0).lines.initial]";
}

function OnBalloonLinesCheck
{
	//Saving this purely so that it doesn't get lost when reloading
	Save.Data.BalloonLines = Shiori.Reference[0].ToNumber();
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
	talkstr = talkstr.Replace("\x","");
	
	return talkstr;
}

function RotateChickens, Rotisserie
{
	local alivecount = 5;
	local reservecount = 20;
	
	//Remove excess chickens from reserved name list
	while (Save.Data.ReservedChickens.length > reservecount) Save.Data.ReservedChickens.Remove(0);
	
	//Remove excess living chickens OR remove one chicken if it's at the cap
	while (Save.Data.Chickens.length >= alivecount)
	{
		//If the reserve is full, remove the oldest
		if (Save.Data.ReservedChickens.length > reservecount) Save.Data.ReservedChickens.Remove(0);
		
		Save.Data.ReservedChickens.Add(Save.Data.Chickens[0]);
		Save.Data.Chickens.Remove(0);
	}
	
	//Fill list with chickens if it is not full
	while (Save.Data.Chickens.length < alivecount)
	{
		local name = chickenname();
		while (InArray(name,Save.Data.Chickens) || InArray(name,Save.Data.ReservedChickens)) name = chickenname();
		Save.Data.Chickens.Add(name);
	}
}

//I'm still surprised you don't seem to be able to search linear arrays...? Am I silly
function InArray(key, array)
{
	for (local i = 0; i < array.length; i++)
	{
		if (array[i] == key)
		{
			return true;
		}
	}
	return false;
}

function enable_debug
{
	if (Shiori.Reference[0] == 1) DebugMode = true;
	else DebugMode = false;
}

//because i'm dying........ i need to be able to display arrays as strings
function DisplayArray(array)
{
	local output = "";
	for (local i = 0; i < array.length; i++)
	{
		if (i > 0) output += ",";
		output += array[i];
	}
	return output;
}

function emdash
{
	if (CurrentBalloon == "Chicken Scratch")
	{
		if (Save.Data.ChickenScratchStyle == "cursive") return " - \w8";
		else return "—\w8";
	}
	else return "\f[name,Calibri]—\f[name,default]\w8";
}

function IsScriptFont
{
	if (CurrentBalloon == "Chicken Scratch" && Save.Data.ChickenScratchStyle == "cursive") return true;
	else return false;
}

function balloonnum
{
	if (CurrentBalloon == "Chicken Scratch")
	{
		local num = CurrentBalloonPattern;
		if (Save.Data.ChickenScratchStyle == "print") num += 1000;
		else if (Save.Data.ChickenScratchStyle == "type") num += 2000;
		
		return num;
	}
	else return 0;
}