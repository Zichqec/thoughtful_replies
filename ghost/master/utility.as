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

/*
Chicken rotation:

Save an array of chicken names (associative so we can do Contains...? hum, maybe just make a helper function

Every so often (how often? every boot, or a random chance each boot?) delete a chicken from the array (random chicken, or the oldest one?)

When the array is not full to the desired amount, add new chickens until it reaches the desired amount (how much?)

Save recently deleted chickens to a separate array

Deleted chickens array should be first-in first-out

When the array has too many elements delete the oldest until it has the desired amount (how many?)

When adding new chickens to the rotation, check to make sure they aren't in the current chicken list, and that they're not in the recently deleted chickens list
*/

function RotateChickens
{
	local alivecount = 10;
	local reservecount = 20;
	
	while (ReservedChickens.length > reservecount) ReservedChickens.Remove(0);
	
	while (Chickens.length >= alivecount)
	{
		local rand = Random.GetIndex(0,Chickens.length);
		if (ReservedChickens.length > reservecount)
		{
			ReservedChickens.Remove(0);
			ReservedChickens.Add(Chickens[rand]);
		}
		Chickens.Remove(rand);
	}
	
	while (Chickens.length < alivecount)
	{
		local name = chickenname();
		while (InArray(name,Chickens)) name = chickenname();
		Chickens.Add(name);
	}
}

function chicken
{
	return Random.Select(Chickens);
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