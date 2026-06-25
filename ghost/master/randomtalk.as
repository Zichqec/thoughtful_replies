talk RandomTalk
{
	\s[30]\_w[3500]\s[3]I fear Abigail has become enamored with the stream again, judging by the puddles she has left on the floor.
}

talk RandomTalk 
{
	\s[0]I saw there was a request posted on the board at the village square. Someone wants an adventurer to find a lost {lostitem}, last seen {location}.

	\s[2]Are you looking for it? \s[30]\_w[3000]\s[22]\w8\w8Please be careful.
}

talk RandomTalk 
{
	\s[1]I started crocheting a new {crochetproject}. \s[21]I promise I'll finish it this time!
}

talk RandomTalk
{
	%{ ChainTalkQueue = ["KitchenMice1","KitchenMice2"]; }
	\s[31]\_w[3000]\s[1]I suspect the chickens and I are not the only ones enjoying the house right now. \w8\w8\s[0]\w8\w8Not to say there's someone else here, but rather, there's some\f[underline,1]thing\f[underline,default] else here. \s[1]A stealthy, squeaky, food nibbling something.
}

talk KitchenMice1
{
	\s[21]The birds keep trying to get inside at odd times to track down the noise. \s[2]Not that I blame them; \s[7]it makes my ears twitch whenever I hear little paws running around!
}

talk KitchenMice2
{
	\s[3]The difference between me and them is that I do not plan to swallow our guest whole. \s[0]No, I have always liked my mice well seasoned, unlike these terrors. \s[31]\_w[2500]\s[1]I am certain that if rocks could move, they would eat them without hesitation.
}

talk RandomTalk
{
	%{ ChainTalkQueue = ["MerchantVisit1","MerchantVisit2"]; }
	\s[0]A merchant passed through early this afternoon. They were on their way {intotown}.
}

talk MerchantVisit1
{
	\s[3]The strange thing was, their wagon was entirely filled with pots!
	
	\s[23]Not simply all manner of kitchenware, no. There was not a single spoon in sight. \s[2]No knife, no chopping board, no skillets. \s[7]Not even a single pot \f[underline,1]lid\f[underline,default]. It was truly \f[underline,1]only\f[underline,default] pots.
}

talk MerchantVisit1
{
	\s[2]They were traveling with only a bag of goods strapped to their back. A heavy bag, to be sure, but a single bag all the same. \s[0]I was surprised to see all manner of inks and waxes inside! \s[1]I never thought one might carry that much glass in such a manner, but there wasn't a single stain on their person that would suggest any spills or breakage.
}

talk MerchantVisit1
{
	\s[21]As it turns out, their family grows and preserves fruit, and they sell a portion of the harvest. They had a variety of dried fruits and jarred jams! \s[31]\_w[2000]\s[1]I wonder if they keep bees as well? Surely they must! \s[7]It's hard to imagine they would have enough honey otherwise!
}

talk MerchantVisit2
{
	\s[20]I decided not to buy anything this time, but encouraged them to come by again, whenever they're passing through.
}

talk MerchantVisit2
{
	\s[2]I was much more tempted than I'd like to admit... \s[1]It is amazing how persuasive good company can be! \w8\w8\s[21]Not that I need to tell \f[underline,1]you\f[underline,default] that.
}

talk RandomTalk
{
	%{ ChainTalkQueue = ["EveningStroll1","EveningStroll2"]; }
	\s[20]Yesterday on my evening stroll, I found myself thinking of you, as I so often do.
}

talk EveningStroll1
{
	\s[1]Surrounded by the rustling of leaves, the smells of the forest, and walking with no particular destination in mind... \s[2]it almost makes me understand what compels you to roam so far.
}

talk EveningStroll2
{
	\s[3]The chill breeze is not much to my tastes, though{emdash}\s[7]brr! \s[22]I hope each time I think of you, you are warm and dry at an inn somewhere, enjoying a hearty meal.
}

talk RandomTalk
{
	%{ ChainTalkQueue = ["HerHero1","HerHero2","HerHero3","HerHero4"]; }
	\s[1]One of the neighbor's children asked me when you will be coming home next. \s[21]I suspect she is waiting for another gift from you!
}

talk HerHero1
{
	\s[20]It seems that you have become her hero. \s[21]She often spends her free time "playing adventure", running energetically around the village and "saving" others from the odd beetle or stray ant.
}

talk HerHero2
{
	\s[31]\_w[2000]\s[1]I wonder if her interest in the adventuring life would wane if she understood that sometimes it means going without a warm meal and a comfortable bed at night!
}

talk HerHero3
{
	\s[20]Then again, I suppose that never stopped you. \s[22]It must truly be thrilling if you are willing to give up the comforts the rest of us hold dear.
}

talk HerHero4
{
	\s[2]Time will tell if she changes her mind, or if adventure holds the same thrill for her as it does for you.
}

talk RandomTalk
{
	%{
		local chicken1 = chicken();
		local chicken2 = chicken();
		while (chicken1 == chicken2) chicken2 = chicken();
	}
	\s[23]{chicken1} and {chicken2} have been having a squabble lately, or so it would seem. \s[22]I am not certain what's gotten into them, but I may have to intervene at some point.
	
	\s[30]\_w[1500]\s[31]\_w[1500]\s[1]Abigail, naturally, is above such things.
}

talk RandomTalk
{
	\s[3]Unfortunately, my last crochet project met an unfortunate end. \s[20]I had to attend to a matter outside for just a moment{emdash}\s[22]or so I thought{emdash}\s[2]so I put it down without stowing it away. \s[7]When I eventually returned, I found that my yarn had been pulled onto the floor and hopelessly tangled!
	
	\s[30]\_w[3000]\s[3]I am not certain who the culprit is, \s[23]but all signs currently point to {chicken}...
}

talk RandomTalk
{
	\s[1]I've recently come into possession of a new tea blend which I think you will enjoy. {itisquitesweet}
	
	\s[21]Next time you return home, we can enjoy some while you regale me with tales of your latest adventure.
}

talk RandomTalk
{
	\s[0]I've finished mending that shirt you brought to me. \s[1]I'll send it out to you next time I write; I've got something else I'm planning to send at the same time, but I need a little more time to finish preparations.
	
	\s[21]You can thank me for it by not {puttingadaggerthroughit} next time!
}

talk RandomTalk 
{
	%{ ChainTalkQueue = ["WrongPatterns1","WrongPatterns2","WrongPatterns3"]; }
	\s[2]I traded some of my crochet patterns with another fiber artist at the market, but it turns out that I was given knitting patterns instead of crochet ones... I'm not sure what to do with them.
}

talk WrongPatterns1 
{
	\s[0]Have you met anyone who knits on your journeys? I can save the patterns for you to take with you the next time you return.
}

talk WrongPatterns2
{
	\s[130]\_w[1500]\s[0]Or maybe this is a sign for me to learn knitting myself. I have been considering it for some time. I think it would be an interesting change from crocheting.
	
	\s[21]Not that I necessarily need another hobby.
}

talk WrongPatterns3
{
	\s[0]I wouldn't have to buy more materials, just new needles. I have plenty of yarn, and now some patterns for knitting.

	\_w[1500]\s[130]\_w[4000]\s[21]I'm convincing myself more and more as I write, hm...
}

talk RandomTalk
{
	\s[0]A vendor brought curry spice to the market this past weekend, so I stocked up. \s[21]I'm looking forward to making you some curry rice on your next visit home.
}

talk RandomTalk
{
	\s[0]I traded some eggs for alpaca yarn recently. It's so soft, and it came with a tag that has a small profile of the alpaca it came from. \s[2]Should I start doing that for my eggs, perhaps? \s[21]Not that everyone in town doesn't already know about Abigail, as much as I talk about her.
}

talk RandomTalk
{
	\s[0]The thing that's most frustrating about crocheting sometimes is having to keep count of your stitches in a row. Counting should be easy. \s[2]Somehow, impossibly, each time I finish a row I always end up with one stitch too many or one stitch too few.

	\s[0]I'll let you in on a secret{emdash}\s[21]sometimes I simply work in a cheeky increase or decrease instead of redoing the entire row. No one wil notice a small change in a large project. \_w[1500]\s[131]\_w[3000]\s[1]Of course, saying that, I suspect you will inspect all the garments I have given you closely for such a mistake.
}

talk RandomTalk
{
	\s[0]I suspect that one of the chickens has made off with my number {hooksize} size crochet hook. {chicken} has been looking rather suspicious. \s[1]I'm entrusting Abigail with interrogating the chickens to uncover the missing hook.

	\s[21]Of course, it could just be that I dropped it and it was accidentally swept under a cabinet. We will have to wait and see.
}

talk RandomTalk
{
	%{ ChainTalkQueue = ["StrangeSounds1","StrangeSounds2"]; }
	\s[0]I've been hearing strange sounds outside of the house. Sporadic, and always too distant for me to pin down easily. \s[2]Even the chickens have started to notice! \_w[1500]\s[130]\_w[4500]\s[0]Abigail is the only one that has been more curious than scared, but that doesn't mean they won't get themselves into trouble trying to find the source if left on their own.
}

talk StrangeSounds1
{
	\s[0]Earlier this evening, I narrowed it down{emdash}\s[2]to the well, of all places! What a worrying place for strange sounds to be! But a noise in a well cannot be left alone. There's few things worse than an unknown creature inhabiting the water supply. \_w[1500]\s[100]\_w[2000]\s[1]Normally, I would leave such dangerous encounters to you. Alas, needs must, and thus I took up arms!
	
	Arms being a lantern tied to a rope, which I bravely lowered into the deep, dark caverns of the well. Shadows jumped at every movement, every bump against stone walls echoing... echoing... When suddenly, there! A branch, floating atop the water! And on that branch, a toad!
}

talk StrangeSounds2
{
	\s[1]After much stress and turmoil, the source had been found. A mystery solved, and peace returned to the homestead.
	
	\s[21]I think I understand a little better what it must feel like to be you!
}

talk RandomTalk
{
	\s[0]Recently, I had the opportunity to read a scholar's advice on the care of our beloved fowl. \s[2]Imagine my surprise when a full page was dedicated to informing the reader that the best knowledged in this field are those that care for them! \s[20]Who else would be seeking assistance in caring for birds than those that \f[underline,1]care for birds?\f[underline,default]
	
	\_w[1500]\s[130]\_w[2500]\s[31]\_w[2000]\s[21]Scholars are such a strange sort! I wonder how many people they needed to speak to in order to come to this conclusion?
}

talk RandomTalk
{
	%{ ChainTalkQueue = ["CowIncident1","CowIncident2"]; }
	\s[1]My goodness, I almost forgot, I wanted to tell you about the cow incident.
	
	There was a commotion in the village square, and when I went to investigate, what should I see but everyone gathered around an unfamiliar cow!
	
	\s[21]Nobody knew where the cow had come from. All of the cows in the village were accounted for, and everyone said that it was not theirs. \s[0]How strange!
}

talk CowIncident1
{
	\s[21]Everyone was gathered around trying to decide what to do about this sudden and unexpected cow. \s[0]It would certainly need food and shelter if it was to stay with us. Where had it even come from?
}

talk CowIncident2
{
	\s[0]Alas, or perhaps fortuitously, it was not to remain with us for long. \s[2]A very weary-looking farmer, from another village to the south of town, came trudging in and laid claim to it.
	
	\s[21]Apparently, the cow {jumpedthefence}, and then wandered off before anyone noticed.
	
	\_w[1500]\s[100]\_w[3000]\s[1]I was eager to hear more details of the daring escape, but the man looked so exhausted from tracking it all this way that I simply could not bring myself to ask!
}

talk RandomTalk
{
	\s[0]An elf merchant passed through our village, and I excitedly purchased some crochet patterns from him. \s[2]The problem is, I didn't realize that elves use entirely different names for the stitches than what I am used to, and the pattern is nigh unreadable to me. 

	\s[3]I spent several hours searching our library for a book or even a simple pamphlet on elven fiber arts, but it seems we are woefully lacking in that subject. \s[30]\_w[3000]\s[0]Perhaps the merchant will visit again, and I can ask for a detailed explanation of elf terms for crocheting.
}