talk RandomTalk
{
	talk 1
}

talk RandomTalk
{
	talk 2
}

talk RandomTalk
{
	talk 3
}

talk RandomTalk
{
	%{ ChainTalkQueue = ["one","two","three"]; }
	Test! Chain start???
}

talk one
{
	one
}

talk two
{
	two
}

talk three
{
	three
}

talk RandomTalk
{
	We should get {style("strike","pizza for dinner")} {style("strike","hotdogs for dinner")} {style("underline","chicken for dinner.")}
}

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
	%{ ChainTalkQueue = ["KitchenMice1","KitchenMice2" }
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
	%{ ChainTalkQueue = ["MerchantVisit1","MerchantVisit2" }
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