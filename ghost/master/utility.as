function ParagraphBreak
{
	return "\n\n\n";
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