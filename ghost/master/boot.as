talk BootTalk
{
	%{ local weather = weathergreeting(); }
	{Greetings} {Wanderer},
	
	How is the weather where you are? It has been {weather.type} here. {weather.detail}
}

talk CloseTalk
{
	Close
}