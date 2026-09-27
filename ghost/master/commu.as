function OnSpectrePlugin@ConfirmCalibration
{
	return "\![raiseplugin,Spectre,OnCustomCalibrationConfirm,--option=exclude,sweat,unamused]";
}

//There is also some code in OnTranslate that handles balloon tags for expressions she does not have
function OnSpectrePlugin@Surface
{
	if (Shiori.Reference[0] == "normal") return "\0\b[0]\s[0]";
	else if (Shiori.Reference[0] == "embarrassed") return "\0\b[0]\s[22]";
	else if (Shiori.Reference[0] == "surprised") return "\0\b[0]\s[7]";
	else if (Shiori.Reference[0] == "discouraged") return "\0\b[0]\s[2]";
	else if (Shiori.Reference[0] == "smile") return "\0\b[0]\s[1]";
	else if (Shiori.Reference[0] == "relieved") return "\0\b[0]\s[21]";
	else if (Shiori.Reference[0] == "angry") return "\0\b[0]\s[23]";
	//else if (Shiori.Reference[0] == "sweat") return "\0\b[0]\s[0]";
	else if (Shiori.Reference[0] == "indignant") return "\0\b[0]\s[23]";
	else if (Shiori.Reference[0] == "thinking") return "\0\b[0]\s[130]";
	//else if (Shiori.Reference[0] == "unamused") return "\0\b[0]\s[30]";
}

function OnSpectrePlugin@Possession
{
	if (Random.GetIndex(0,4) == 0)
	{
		if (!RespondedToSpectre && !LetterFinished() && Save.Data.TalkInterval > 0)
		{
			RespondedToSpectre = true;
			LastTalk = SpectreTalk();
			return LetterDisplay([LastTalk]);
		}
	}
}

//—————————— Spectre responses ——————————
talk SpectreTalk
{
	\s[0]\_w[1500]Oh my, I apologize for my errant scribbling. I seem to have nodded off for a moment and begun writing in my sleep!
}

talk SpectreTalk
{
	\s[2]Oh dear, I seem to drifted off and made a bit of a mess on the page. My apologies.
}

talk SpectreTalk
{
	\s[2]Oh my, it seems I have drifted off a little and scrawled across the page. \s[3]Whatever I was trying to write, it's illegible...
	
	\s[0]Please ignore that section, it is not something you need to spend time deciphering.
}

talk SpectreTalk
{
	\s[2]Ah, that's strange... \s[0]I must have nodded off for a moment, I have no idea what I was trying to write in that last section. Please ignore it.
}

talk SpectreTalk
{
	\s[0]\_w[1500]\s[2]I have no idea what I was attempting to write just there, my apologies. I must have begun drifting into sleep, and the resulting scrawl was an effort to transcribe my thoughts as a dream began!
}