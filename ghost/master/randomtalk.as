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
	I wonder if her interest in the adventuring life would wane if she understood that sometimes it means going without a warm meal and a comfortable bed at night!
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
	I've recently come into possession of a new tea blend which I think you will enjoy. {itisquitesweet}
	
	Next time you return home, we can enjoy some while you regale me with tales of your latest adventure.
}

talk RandomTalk 
{

	%{ ChainTalkQueue = ["WrongPatterns1","WrongPatterns2","WrongPatterns3"]; }
	I traded some of my crochet patterns with another fiber artist at the market, but it turns out that I was given knitting patterns instead of crochet ones... I'm not sure what to do with them. 

}

talk WrongPatterns1 
{
	Have you met anyone who knits on your journeys? I can save the patterns for you to take with you the next time you return.
}

talk WrongPatterns2 
{
	Or maybe this is a sign for me to learn knitting myself. I have been considering it for some time. I think it would be an interesting change from crocheting.
	
	Not that I necessarily need another hobby. 
}

talk WrongPatterns3
{
	I wouldn't have to buy more materials, just new needles. I have plenty of yarn, and now some patterns for knitting. 

	I'm convincing myself more and more as I write, hm...
}

talk RandomTalk 
{
	A vendor brought curry spice to the market this past weekend, so I stocked up. I'm looking forward to making you some curry rice on your next visit home. 
}

talk RandomTalk 
{
	I traded some eggs for alpaca yarn recently. It's so soft, and it came with a tag with a small profile of the alpaca it came from. Should I start doing that for my eggs, perhaps? Not that everyone in town doesn't already know about Abigail, as much as I talk about her. 
}

talk RandomTalk 
{
	The thing that's most frustrating about crocheting sometimes is having to keep count of your stitches in a row. Counting should be easy. Somehow, impossibly, I always end up with one stitch too many or one stitch too few when finishing a row. 

	I'll let you in on a secret{emdash}sometimes I simply work in a cheeky increase or decrease instead of redoing the entire row. No one wil notice a small change in a large project. Of course, saying that, I suspect you will inspect all the garments I have given you closely for such a mistake.
}

talk Randomtalk 
{
	I suspect that one of the chickens has made off with my number {hooksize} size crochet hook. {chicken} has been looking rather suspicious. I'm entrusting Abigail with interrogating the chickens to uncover the missing hook. 

	Of course, it could just be that I dropped it and it was accidentally swept under a cabinet. We will have to wait and see.
}