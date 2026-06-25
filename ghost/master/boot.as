talk BootTalk
{
	%{ local weather = weathergreeting(); }
	\s[0]{Greetings} {Wanderer},
	
	How is the weather where you are? \s[20]It has been {weather.type} here. \s[22]{weather.detail}
}

talk BootTalk
{
	\s[1]{Greetings} {Wanderer},
	
	Your last letter was a delightful read! \s[21]The same is true of all your letters, of course, but it's not every day that you have a tale to tell as exciting as {raidingadragonsden}.
	
	\s[20]Truly, your courage is most admirable. I am glad to hear that {youaresafeandsound}, and that your experience has enriched your life in more ways than one.
	
	\s[30]\_w[3500]\s[22]\w8\w8I am afraid that what I write back will seem dull in comparison, but nevertheless I shall elaborate on the events of the day.
}

talk BootTalk
{
	\s[2]{Greetings} {Wanderer},
	
	My most sincere apologies for the lateness of this letter! \s[3]The last several days have been a whirlwind, both metaphorically and at times literally.
	
	\s[23]I spent about a week running to and fro, trying to keep on top of projects and deadlines that were all coming due at the same time. And then{emdash}\s[37]wouldn't you know it{emdash}\s[7]the wind started blowing so hard I thought the village might fly away! \s[2]\w8\w8\w8Poor {chicken} was the only one not inside when the winds became strong, and I had to embark on a rescue mission.
	
	\s[0]\w8\w8Despite everything, we are all safe and sound. Some buildings sustained minor damage, but repairs are underway, and the atmosphere is cheerful.
	
	\s[1]I hope you have not been too terribly concerned by the delay. Rest assured that my next letter will be on its way to you shortly!
}

talk CloseTalk
{
	\s[8]\_w[8000]\s[7]\w8\w8\s[37]\w8\w8\s[7]\w8\w8My, it's later than I thought. \s[2]I had best send myself off to bed.
	
	{Sincerely},
	{Homebody}
}

talk CloseTalk
{
	\s[31]\_w[3500]\s[22]Ah... It appears that I am nearly out of ink. This is where I leave it for now, then.
	
	\s[2]I will obtain more ink at the market tomorrow, and write you another letter soon.
	
	\s[0]Until then,
	{Homebody}
}

talk CloseTalk
{
	\s[1]Well, I believe that is all the thoughts I have for tonight. \s[21]I am sure I will have more for you in a few nights' time, if not sooner.
	
	{Sincerely},
	{Homebody}
}