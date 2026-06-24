talk BootTalk
{
	%{ local weather = weathergreeting(); }
	{Greetings} {Wanderer},
	
	How is the weather where you are? It has been {weather.type} here. {weather.detail}
}

talk BootTalk
{
	{Greetings} {Wanderer},
	
	Your last letter was a delightful read! The same is true of all your letters, of course, but it's not every day that you have a tale to tell as exciting as {raidingadragonsden}.
	
	Truly, your courage is most admirable. I am glad to hear that {youaresafeandsound}, and that your experience has enriched your life in more ways than one.
	
	I am afraid that what I write back will seem dull in comparison, but nevertheless I shall elaborate on the events of the day.
}

talk CloseTalk
{
	My, it's later than I thought. I had best send myself off to bed.
	
	{Sincerely},
	{Homebody}
}

talk CloseTalk
{
	Ah... It appears that I am nearly out of ink. This is where I leave it for now, then.
	
	I will obtain more ink at the market tomorrow, and write you another letter soon.
	
	Until then,
	{Homebody}
}