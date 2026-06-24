talk RandomTalk
{
	I fear Abigail has become enamored with the stream again, judging by the puddles she has left on the floor.
}

talk RandomTalk 
{
	I saw there was a request posted on the board in the town's square. Someone wants an adventurer to find a lost {lostitem}, last seen {location}.

	Are you looking for it? Please be careful.
}

talk RandomTalk 
{
	I started crocheting a new {crochetproject}. I promise I'll finish it this time!
}

talk RandomTalk
{
	%{ ChainTalkQueue = ["KitchenMice1","KitchenMice2"]; }
	I suspect the chickens and I are not the only ones enjoying the house right now. Not to say there's someone else here, but rather, there's something else here. A stealthy, squeaky, food nibbling something.
}

talk KitchenMice1
{
	The birds keep trying to get inside at odd times to track down the noise. Not that I blame them; it makes my ears twitch whenever I hear little paws running around!
}

talk KitchenMice2
{
	The difference between me and them is that I do not plan to swallow our guest whole. No, I have always liked my mice well seasoned, unlike these terrors. I am certain that if rocks could move, they would eat them without hesitation.
}

talk RandomTalk
{
	%{ ChainTalkQueue = ["MerchantVisit1","MerchantVisit2"]; }
	A merchant passed through early this afternoon. They were on their way {intotown}.
}

talk MerchantVisit1
{
	The strange thing was, their wagon was entirely filled with pots! Not simply all manner of kitchenware, no. There was not a single spoon in sight. No knife, no chopping board, no skillets. Not even a single pot lid. It was only pots.
}

talk MerchantVisit1
{
	They were traveling with only a bag of goods strapped to their back. A heavy bag, to be sure, but a single bag all the same. I was surprised to see all manner of inks and waxes inside! I never thought one might carry that much glass in such a manner, but there wasn't a single stain on their person that would suggest any spills or breakage.
}

talk MerchantVisit1
{
	As it turns out, their family grows and preserves fruit, and they sell a portion of the harvest. They had a variety of dried fruits and jarred jams! I wonder if they keep bees as well? Surely they must! It's hard to imagine they would have enough honey otherwise!
}

talk MerchantVisit2
{
	I decided not to buy anything this time, but encouraged them to come by again, whenever they're passing through.
}

talk RandomTalk
{
	%{ ChainTalkQueue = ["EveningStroll1","EveningStroll2"]; }
	Yesterday on my evening stroll, I found myself thinking of you, as I so often do.
}

talk EveningStroll1
{
	Surrounded by the rustling of leaves, the smells of the forest, and walking with no particular destination in mind... it almost makes me understand what compels you to roam so far.
}

talk EveningStroll2
{
	The chill breeze is not much to my tastes, though{emdash}brr! I hope each time I think of you, you are warm and dry at an inn somewhere, enjoying a hearty meal.
}

talk RandomTalk
{
	%{ ChainTalkQueue = ["HerHero1","HerHero2","HerHero3","HerHero4"]; }
	One of the neighbor's children asked me when you will be coming home next. I suspect she is waiting for another gift from you!
}

talk HerHero1
{
	It seems that you have become her hero. She often spends her free time "playing adventure", running energetically around the village and "saving" others from the odd beetle or stray ant.
}

talk HerHero2
{
	I wonder if she her interest in the adventuring life would wane if she understood that sometimes it means going without a warm meal and a comfortable bed at night!
}

talk HerHero3
{
	Then again, I suppose that never stopped you. It must truly be thrilling if you are willing to give up the comforts the rest of us hold dear.
}

talk HerHero4
{
	Time will tell if she changes her mind, or if adventure holds the same thrill for her as it does for you.
}

talk RandomTalk
{
	%{
		local chicken1 = chicken();
		local chicken2 = chicken();
		while (chicken1 == chicken2) chicken2 = chicken();
	}
	{chicken1} and {chicken2} have been having a squabble lately, or so it would seem. I am not certain what's gotten into them, but I may have to intervene at some point.
	
	Abigail, naturally, is above such things.
}

talk RandomTalk
{
	Unfortunately, my last crochet project met an unfortunate end. I had to attend to a matter outside for just a moment{emdash}or so I thought{emdash}so I put it down without stowing it away. When I eventually returned, I found that my yarn had been pulled onto the floor and hopelessly tangled!
	
	I am not certain who the culprit is, but all signs currently point to {chicken}...
}

talk RandomTalk
{
	I've recently come into posession of a new tea blend which I think you will enjoy. {itisquitesweet}
	
	Next time you return home, we can enjoy some while you regale me with your latest tales.
}