function OnSpectrePlugin@ConfirmCalibration
{
	return "\![raiseplugin,Spectre,OnCustomCalibrationConfirm,--option=exclude,sweat]";
}

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
	else if (Shiori.Reference[0] == "unamused") return "\0\b[0]\s[30]"; //Hmm...
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