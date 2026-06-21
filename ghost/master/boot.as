talk BootTalk
{
	%{ local weather = weathergreeting(); }
	{Greetings} {Wanderer},
	
	How is the weather where you are? It has been {weather.type} here. {weather.detail}
}

talk CloseTalk
{
	My, it's later than I thought. I had best send myself off to bed.
	
	{Sincerely},
	{Homebody}
}