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

//Rock
talk MerchantVisit1
{
	%{ ChainTalkQueue = ["MerchantVisit2@Rocks"]; }
	\s[2]I was quite surprised to see that their bag was filled with nothing but rocks! What a strange thing to sell, \w4\s[22]much less to haul around on your back!
	
	\_w[1500]\s[0]Despite my initial hesitation, we talked for a while and eventually I understood... \s[20]These were not any ordinary rocks, these were carefully polished stones with strong magic imbuements.
	
	\s[0]From the sound of it, the rocks themselves carry such value that selling even a few of them makes the entire arduous journey worth the effort. \s[2]That seems a frightening thing to carry around{emdash}what if they were to be attacked by bandits?\_w[2500]\s[130]
}

talk MerchantVisit2@Rocks
{
	\s[2]I considered whether to buy a rock with a {protection} imbuement to give to you, but ultimately decided against it.
	
	\s[22]I worry that such a high value item would attract unwanted attention, or that it would weigh you down at times when you cannot afford it.
}

//Power
talk MerchantVisit1
{
	%{ ChainTalkQueue = ["MerchantVisit2@PowerStaff"]; }
	\s[0]They attempted to haggle with me for some sort of magical staff that they claimed would give me "great magical powers".
	
	\s[2]Me? Power? \s[22]What nonsense! \s[0]I simply turned and walked away.
}

talk MerchantVisit2@PowerStaff
{
	\s[2]I suppose I might have considered acquiring such a thing for you, but... \s[23]Truth be told, it smelled of snake oil at best.
	
	\s[0]You must be no stranger to these sorts of "deals", traveling about as you do. \s[1]I am glad you are a shrewd buyer and must have no trouble turning such things down.
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

//Flow
talk EveningStroll1
{
	\s[0]I decided to follow the flow of the river and see if there was anything new since I last went that way.
	
	\s[1]I must admit it was a little exciting to round each bend, wondering what lay ahead. \_w[1000]\s[21]Nothing very much, as it turns out! The riverbanks are quite peaceful and safe within walking distance of the village; the most interesting thing I found was a newt.
	
	\_w[1000]\s[131]\_w[2000]\s[130]\_w[2000]\s[2]\_w[500]Still, if that is the feeling you chase every day, then I think I can appreciate the appeal that wandering holds for you.
}

//Hill
talk EveningStroll1
{
	\s[0]I took the time to climb up the hill, right to the very top. \s[1]The view as I looked over the village was breathtaking. I arrived in time to watch the sunset, and stayed long enough to see the soft glow of lanterns and candles light up the houses.
	
	\s[21]Of course, the view of the village is very familiar to me, even if I don't often hike all the way up to see it. \_w[1000]\s[22]But it did make me wonder what sorts of views you see every day. \s[2]After all, you climb tall mountains, and visit large cities!
	
	\_w[1000]\s[130]\_w[3500]\s[0]\_w[500]Looking out over a beautiful viewpoint after putting in great effort to get there... it must be immensely rewarding. I think I understand what draws you to it.
}

//Word → World
talk EveningStroll1
{
	\s[0]It's hard for me to imagine what it's like for you, traveling to the far corners of the world. \s[20]But for a moment, I envisioned myself continuing to walk without turning back, for days and days and days... \_w[1000]\s[21]I found myself wondering how much distance I could cover in a day, then a week, then a month.
	
	\_w[1000]\s[31]\_w[2000]\s[130]\_w[3000]\s[2]\_w[500]Of course, I'd have to stop and get plenty of rest! \s[22]And I know that I would not have the stamina nor determination to keep journeying onward without turning back to the comforts of home.
	
	\s[1]Still, it was a little exciting to think about how far I could get with just my two legs carrying me.
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
	\s[3]Unfortunately, my last crochet project met a tragic end. \s[20]I had to attend to a matter outside for just a moment{emdash}\s[22]or so I thought{emdash}\s[2]so I put it down without stowing it away. \s[7]When I eventually returned, I found that my yarn had been pulled onto the floor and hopelessly tangled!
	
	\s[30]\_w[3000]\s[3]I am not certain who the culprit is, \s[23]but all signs currently point to {chicken}...
}

talk RandomTalk
{
	\s[1]I've recently come into possession of a new tea blend which I think you will enjoy. {itisquitesweet}
	
	\s[21]Next time you return home, we can enjoy some while you regale me with tales of your latest adventure.
}

talk RandomTalk
{
	\s[0]I've finished mending that shirt you brought to me. \s[1]I'll send it out to you when next I write; I've got something else I'm planning to send at the same time, but I need a little longer to finish preparations.
	
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

//Loop
talk StrangeSounds1
{
	\s[2]Yesterday, I decided it was time to track down the source once and for all. I put on my walking boots, chose a hefty walking stick, and headed out into the unknown. \s[0]The unknown being the perimiter of my own land, naturally.
	
	Slowly I walked, keeping my footfalls light as I listened for anything out of the ordinary. \s[20]I walked... and I walked... and I walked... \s[2]Eventually, I realized I had made a complete loop around the property without seeming to get any closer to the sound!
	
	\s[22]That's when I finally spotted her. \s[21]The neighbor's daughter, holding a duck call, trying her very best to imitate her beloved waterfowl.
}

//Wall
talk StrangeSounds1
{
	\s[0]By chance, I spotted a strange silhouette on the stone fence yesterday. \s[2]Some sort of bird?
	
	I approached slowly, ensuring my footfalls were silent so I could get a closer look. \s[0]It wasn't a bird I'd ever seen before. Had it gotten lost while migrating from somewhere else?
	
	\_w[1500]That's when it happened. \s[2]It tipped its head back and let out the most unusual, haunting call I have ever heard from a feathered being. \s[22]The sound made me practically jump out of my fur!
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

talk RandomTalk
{
	\s[2]The chickens were concerning me when I checked the nesting boxes this morning. \s[7]Not a single egg, anywhere I looked!
	
	\s[23]Granted, it certainly is not strange for one or two of them to refrain from laying for a few days. \s[3]But all of them? \s[22]Surely some illness among the flock! \s[7]Surely some vile egg-thief in the hen house!
	
	\s[37]\_w[1000]\s[7]\_w[1000]Then I turn my head and I see her: \s[0]{chicken}, fat and happy in one of the nests. \s[20]So fat and happy that I wonder, and I judge, and she pecks but relents, and... \s[1]Yes. \s[21]You guessed it! She took \f[underline,1]all\f[underline,default] of the eggs for herself. \s[1]She really is something, isn't she?
}

//Found
talk RandomTalk
{
	\s[0]I found a dusty old {brooch} that had {beenkickedundermysewingtable}. I wonder how it got there?
	
	\s[2]I don't recognize it, might it be one of yours? \s[1]Next time you return, you'll have to take a look and see. \s[131]\_w[3000]\s[21]I'll make sure it's cleaned up by then!
}

//Kick
talk RandomTalk
{
	\s[0]I heard from a friend that an exquisite new spice had become available at the market. Apparently, a merchant came through recently without much fanfare, and traded quite a large supply in exchange for blankets and various other goods.
	
	\s[20]Being curious, I decided to purchase a small bottle for myself. \s[1]My cooking certainly has had more of a kick to it since! It has a strong (but not unpleasant!) earthy flavor, with a tingly heat that builds slowly.
	
	\s[21]You should visit soon, or I may very well consume it all myself in a matter of fortnights.
}

//Tile → Till → Garden stuff
talk RandomTalk
{
	%{ ChainTalkQueue = ["EvilTomatoes1","EvilTomatoes2","EvilTomatoes3"]; }
	\s[0]I have been pondering lately over what I should do with the unused corner of the garden. \s[2]It has been unplanted for some time now, and I really ought to make use of the soil.
	
	\s[122]\_w[2500]\s[130]\_w[4000]\s[22]\![set,balloonwait,4]Perhaps \![set,balloonwait,2]I should plant zucchini, or squash, or\_w[4000]\s[1]\_w[1000] tomatoes. \![set,balloonwait,1]\s[21]Ha, imagine, tomatoes again after all these years!
}

talk EvilTomatoes1
{
	\s[1]Do you think you would be able to bear the sight of the dreaded red vegetable when you come to visit? \s[21]You are not obliged to partake in its consumption, of course.
}

talk EvilTomatoes2
{
	\s[2]They are simply quite versatile, and the fruits are plentiful when they begin to ripen! \_w[2500]\s[21]I am certain an adventurer of your prowess will be able to manage.
}

talk EvilTomatoes3
{
	\s[1]If you wish to protest despite this, you may. \s[21]I would be most easily persuaded by a visit wherein you bring seeds for another vegetable you would deem acceptable instead.
}

//Turn
talk RandomTalk
{
	%{ ChainTalkQueue = ["TroubleChicken1","TroubleChicken2"]; }
	\s[0]Lately, I've had to keep a closer eye on {chicken}. \s[2]I don't know what's gotten into her, but the moment my back is turned, she gets herself into all kinds of trouble!
}

talk TroubleChicken1
{
	\s[2]Just yesterday, I stepped outside to talk with one of the neighbor's kids that had come over to trade for fresh eggs. \s[0]We had a pleasant chat! \s[2]But when I went back inside...
	
	\s[30]\_w[3000]\s[22]Ah, my poor {scarf}! I had just put the finishing touches on it not three hours prior, and now I saw it dragged across the floor, dirty and frayed where she plucked at the yarn.
	
	\s[102]\_w[4000]\s[0]Should you visit me sometime within the next month, you will find me in mourning. \s[2]To lose a project which you have poured much time and energy into is no small blow for a crafter.
}

talk TroubleChicken1
{
	%{ pick = dress(); }
	\s[0]The other day, I was hanging the washing up to dry, and I got distracted by a courier coming by to deliver a letter.
	
	\s[2]We only spoke for a minute or two at most, but by the time I got back to the laundry, the {pick.item} I'd just hung up had been pulled down into a mud puddle!
	
	\s[20]A clear set of muddy chicken tracks trailed across {pick.referent}, as if to spite me. \s[22]I'd worked so hard to get the stains out of {pick.referent}, too...
}

//Scrap
talk TroubleChicken1
{
	\s[0]As you know, I prefer to take my time eating meals, savoring every morsel. \s[2]But now? I must either eat my dinner swiftly, or keep a vigilant eye on it, lest she pluck the scraps right off my plate!
	
	\s[22]If I do not adjust my habits, I might very well starve in my own home.
}

//Step
talk TroubleChicken1
{
	\s[0]The other day as I made my way outside to tend to the garden, I didn't make it even three steps beyond the doorframe before I heard the telltale sounds of something being knocked to the floor.
	
	\_w[500]\s[130]\_w[2500]\s[122]\_w[1500]\s[22]\_w[500]I turned around and there she was, standing amidst {thebrokenvasepieces}. She looked so proud of herself as she searched through the carnage for seeds.
}

//Crash
talk TroubleChicken1
{
	\s[0]Yesterday while I was cooking dinner, I heard a crashing sound from the living room. I rushed out and what did I find?
	
	\s[2]The pretty vase I'd bought at the market that day, smashed to pieces. \s[22]And a certain hen strutting proudly nearby, stepping on the stems of the flowers that the vase had been holding, as if to choke the remaining life out of them.
}

//Table
talk TroubleChicken1
{
	\s[0]Just yesterday, she managed to track mud \f[underline,1]everywhere\f[underline,default] throughout the house. On the rug, through the kitchen, across the table...
	
	\s[2]I wouldn't have known which of the chickens it was, except that she was perched proudly atop my favorite chair when I found her, mud from her feet soaking into the cushions.
	
	\_w[1000]\s[22]She made quite the mess for one chicken!
}

//Fold
talk TroubleChicken1
{
	\s[0]Just last evening I spent half an hour dutifully folding clothes. Half an hour! \s[2]Then I got up for just a minute to stir the cooking pot, and when I returned...
	
	\_w[1000]\s[22]\_w[500]There she was, perched on the coffee table where the clean, freshly folded clothes had been. \s[20]Clothes which were now spilled across the floor, disheveled and gathering up every speck of dirt they could find, as if to spite me.
}

//Spring
talk TroubleChicken1
{
	\s[2]Something must have startled her as I walked by the henhouse yesterday, because she suddenly sprang out, flapping her wings and hollering like there was no tomorrow.
	
	\s[0]Having an unexpected mass of feathers and beak and talons rush past my legs made me stumble and lose my footing, and given the rain we've had recently, the ground was quite soft. \s[2]I was off-balance as my toes sank into a patch of mud, and...
	
	\_w[1500]\s[22]Suffice to say that I ended up taking a long bath later, and one of my dresses is in desperate need of washing!
}

talk TroubleChicken2
{
	\s[131]\_w[2500]\s[1]Still... How can I possibly stay mad at her? Chickens will be chickens, and she's certainly teaching me to be more alert for troublemakers.
	
	\s[21]I'm sure that if you come by, she'll teach you as well. For free, no less! Isn't she so generous?
}

//Cloud
talk RandomTalk
{
	\s[0]A certain traveling merchant at the market lately has me on edge. \s[2]Each time I pass by their station, I feel an uneasy haze come over me.
	
	\_w[500]\s[22]I wonder, are they using some sort of magic to cloud the judgement of prospective buyers? \s[2]For what reason would they need to do such a thing?
	
	\_w[1000]\s[130]\_w[3000]\s[3]I don't like it. It smells of shifty business practices. \s[23]I may not have proof of anything yet, but I will certainly be on the lookout...
}

//Miss
//TODO I think there is another dialogue (by vita?) which references a crochet group of some kind, but I don't remember the specific wording. Find that and slot it in
talk RandomTalk
{
	\s[130]\_w[2500]\s[2]An old friend of mine said she will be moving to the city soon. \s[0]Apparently, her family has found good job prospects out there, and doesn't want to pass up the opportunity.
	
	\s[0]I don't think she herself wants to go. \_w[1000]\s[102]\_w[2500]\s[130]\_w[2500]\s[2]\_w[500]However, she wants to stay close to her family, which is understandable.
	
	\s[22]\_w[500]I will miss her terribly. I'm sure we'll exchange letters, of course, but crochet club meetings will not be quite the same without her!
}

//Time
talk RandomTalk
{
	\s[0]If you find the time, would you consider stopping by a fabric shop during your travels? \s[2]I am nearly out of my favorite {redyarn}, and I am hoping to find a suitable replacement to lessen the blow.
	
	\s[1]It need not be a match for what I have now, only something that is enjoyable to use. \s[21]Or delightful to simply have in my yarn basket! Yarn hoarding is one of the many great pleasures of being a crafter.
}

//Slice
talk RandomTalk
{
	\s[0]I've been practicing the recipe for your favorite rhubarb pie. I would not want my skills to rust merely because you are not here to enjoy it.
	
	\s[100]\_w[1500]\s[131]\_w[2000]\s[1]\_w[500]Alas, much as I wish to send you a slice, I fear the courier would succumb to the temptation to eat it mid-transit... \s[21]You will have to visit if you would like a taste!
}

//Bow
talk RandomTalk
{
	\s[1]I got another cute bow for Abigail to wear. This one is {pinkwithpolkadots}.
	
	\_w[500]\s[31]\_w[3000]\s[21]\_w[500]Of course, it wasn't more than half an hour before she'd shed it, and soon after I found it amongst her nest with all the others.
	
	\s[121]\_w[2000]\s[1]\_w[500]She's just darling, isn't she?\_w[1000]\s[101]
}

//Pour
talk RandomTalk
{
	\s[1]Lately, I have been pouring my efforts into a gift for {anewlywedcouple}. I did some investigation to learn what colors would be favorable, and picked out my nicest yarns for the project. \s[21]Hopefully {ablanket} will be well received!
	
	\s[131]\_w[2500]\s[1]\_w[500]There has been a great deal of excitement around the village as celebrations are being prepared. \s[21]Times like these make me very happy to be a crafter.
}

//Frozen
talk RandomTalk
{
	\s[0]I've sworn to myself that this previous winter is the last one in which I'll let my toes feel like they've frozen off. \s[2]Between projects I've been making socks, socks, and more socks.
	
	\s[3]This year is the year that I will always have a pair handy, no matter what I am doing or where I am at!
}

//Clay
talk RandomTalk
{
	\s[0]A friend of mine has recently begun learning pottery. Apparently {theywanttostartabusiness}
	
	\s[1]Listening to them talk at length about the process, it all sounds rather fascinating! It almost makes me want to try my hand at it. \s[2]But...
	
	\_w[1500]\s[1]Ha, what a spectacular mess that would be! Clay all through my fur, claw marks in every piece I touch... \s[21]No, I think I will stick to my fiber arts. They are much more forgiving for a fur-covered creature such as I!
}

//Nugget
talk RandomTalk
{
	\s[0]I was cleaning out an old chest earlier when I came across {agoldnugget} you gave to me years ago. \s[1]I thought to myself, "My, how long it has been since my dearest sibling left home!"
	
	\s[21]All this time later, I still remember that as one of the first treasures you brought back and gave to me. You were so proud of it! \_w[2500]\s[131]\_w[2500]\s[130]\_w[3500]\s[22]\_w[500]\![set,balloonwait,2]And I was so proud of \f[underline,1]you\f[underline,false].\![set,balloonwait,1]
	
	\_w[1500]\s[122]\_w[5500]\s[2]\_w[500]Perhaps I will begin collecting materials to make a display of the trinkets you've brought me over the years. \_w[1000]\s[21]Though I would need to make such a display quite large, to accomodate future additions!
}

//Ring
talk RandomTalk
{
	\s[0]When I was making my way to the market yesterday I found {aring} lying on the ground. Someone must have dropped it and not noticed.
	
	\s[20]It seemed like a precious item, so I took it to the village's lost and found straight away. \s[2]And wouldn't you know it, while I was there, I found one of my missing crochet hooks that I'd given up on a month ago!
	
	\s[22]How did it get all the way out there...? \_w[1000]\s[131]\_w[2500]\s[1]I suppose I'll never know, but I am grateful that someone turned it in.
}

//Last
talk RandomTalk
{
	\s[1]I'm impressed with how long that skein of multicolored yarn you gave to me has lasted. \s[0]Rest assured I have been making good use of it! It simply seems to go on and on.
	
	\_w[1500]\s[131]\_w[2500]\s[2]\_w[500]You have not pulled some kind of trick on me, have you? \s[23]Some enchantment or other magics to fool your dear sister?
	
	\_w[2000]\s[0]\_w[500]Hm, perhaps an investigation is in order... \s[21]Should I find evidence of trickery, penalties will be applied accordingly!
}

//Name
talk RandomTalk
{
	%{
		local name1 = nonchicken();
		local name2 = nonchicken();
		while (name1 == name2) { name2 = nonchicken(); }
	}
	\s[0]I have spent the last two days in a long debate with myself over the name of a new addition to the flock. Currently, my two favorite candidates are {name1} and {name2}. Have you any opinion on the matter?
	
	\_w[1000]\s[131]\_w[2000]\s[1]\_w[500]Of course, by the time this letter reaches you and you compose a reply, it is likely I will have already decided... \s[21]Tiny chicks are too adorable to remain nameless for long!
}

//Stump
talk RandomTalk
{
	\s[1]Abigail has been spending a great deal of time perched on her favorite stump again.
	
	\s[21]It is a shame she always grows bored of it by the time you come to visit. Perhaps I should hire an artist to create a sketch for your benefit?
}

//Wax
//TODO this could be expanded with a word group to cover more than just wax, if desired?
talk RandomTalk
{
	\s[0]Ah, I nearly forgot, I wished to apologize for making somewhat of a mess of my last letter. \s[2]I got my paw a little too close to the melted wax, some of it caught in my fur, and, well... \s[22]I'm sure you saw the result!
	
	\s[1]Abigail gave me a stern lecture and told me to be more careful next time. \s[21]If this letter is not perfectly clean when you receive it, I will owe you {threejarsofjam}!
}

//Trip
talk RandomTalk
{
	%{ ChainTalkQueue = ["TripIntoTown"]; }
	\s[0]I have been thinking about taking a trip into town to purchase a few supplies that are harder to get ahold of in the village.
	
	\_w[1000]\s[2]What an extraordinary hassle! I would need to arrange for someone to watch over the chickens and tend to the garden while I am away. \s[22]And to be without my usual crafts and amenities to unwind... it is always an unpleasant thing, even if only temporary.
}

talk TripIntoTown
{
	\s[0]That being said... \_w[500]\s[1]I do happen to know an adventurer who is strong and brave, and is accustomed to tackling great challenges.
	
	\_w[1000]I am not in any particular rush to obtain my desired items. \s[21]I wonder if we might be able to strike a deal?
}

//String
talk RandomTalk
{
	\s[2]Earlier today I found a long string in the chicken coop. \s[2]I don't recognize it, and it isn't the right size or color to match any of my belongings. Where could they have possibly gotten it?
	
	\_w[1000]\s[130]\_w[2500]\s[22]\_w[500]Perhaps it clung to my clothes on the way home from {themarket}? \s[2]I will have to be more careful to check my clothing in the future, to ensure I am not bringing home stowaways. They could be hazardous!
}

//Pawn
talk RandomTalk
{
	\s[0]A rather shifty merchant has come through the village a few times recently. \s[20]They are remarkably persistent, and approach me at every chance they get.
	
	\s[22]I have no use for the junk they are attempting to pawn off on me. \s[2]In fact, I am certain even they recognize that their wares are of little value. I wonder what they are trying to accomplish?
	
	\_w[500]\s[23]Please be on your guard the next time you come by.
}

//Log
talk RandomTalk
{
	\s[0]One of the log benches in the village square has been overtaken by ants lately. I wonder what has attracted them?
	
	\_w[1000]\s[2]I am making sure not to sit anywhere near it until I am certain they have left. \s[22]The last thing I need is ants in my fur!
}

talk RandomTalk
{
	%{ ChainTalkQueue = ["GardenMisfortunes1","GardenMisfortunes2","GardenMisfortunes3"]; }
	\s[0]I had a series of misfortunes today while I was tending to the garden. In retrospect, it doesn't feel like anything so major, \w4\s[2]but at the time it was stressful!
}

//Coil
talk GardenMisfortunes1
{
	\s[2]I was harvesting some carrots, and as I reached to pull on some stems, my hand brushed by the coiled-up body of a snake!
	
	\_w[1500]\s[22]I am not terribly proud of the noise I made as I lept back. \s[20]However, it seems my sudden shriek startled the snake as well, and it slithered away.
	
	\_w[1000]\s[130]\_w[2500]\s[2]\_w[500]My pulse was racing, and the direction it was going would take it out of the garden anyway, so I decided not to pursue it.
}

//Smooth
talk GardenMisfortunes2
{
	\s[2]Once I had finally smoothed my fur back down, I turned back to my work. \s[22]But just then...
	
	I must have stepped too close to a wasp, because it started buzzing angrily near me. I had to run back to the porch and grab a broom to defend myself.
	
	\s[23]Thankfully my fur is quite thick, so I managed to escape without any stings.
}

//Rip
talk GardenMisfortunes2
{
	%{
		//Insert another section of chain in the middle
		ChainTalkQueue.Insert(0,"GardenMisfortunes2@RippedDress");
	}
	\s[0]I thought it would be a good idea to take a walk around the house to let my nerves settle a bit, so I retreated to the porch to fetch one of my walking sticks.
	
	\_w[500]\s[2]As I turned to leave with implement in hand, I felt a tug and heard a horrible sound. \s[22]The sound of my dress ripping where it had caught on that railing I yet haven't fixed!
}

talk GardenMisfortunes2@RippedDress
{
	\s[130]\_w[2500]\s[2]\_w[500]With how jumpy I was feeling at the time, it felt like a devastating blow. That dress is one of my favorites! \s[22]Now it is another garment to mend...
	
	\_w[2000]I switched to another dress and made myself take the walk around the house anyway. \s[20]A bit of exercise would be good to clear my head, even if doing so felt miserable in the moment.
}

talk GardenMisfortunes3
{
	\s[2]After all of that, I was quite tired and decided that some rest and recuperation was in order. \s[0]I settled down with some tea and a crochet project, and in the end I felt much better for it!
}

//Layer
talk RandomTalk
{
	\s[1]I have been very proud of {chicken} lately. She is quite the layer!
	
	\_w[1500]\s[131]\_w[2000]\s[0]\_w[500]That, or she is claiming eggs other than her own. \s[21]I will look into it. It never hurts to be a little skeptical with the flock.
}

//Render
talk RandomTalk
{
	\s[0]Last time the courier came around, I very nearly missed my chance to send your letter. \s[2]I turned the envelope over to him, and when I reached for my coin purse, I was startled to find it was missing!
	
	\s[22]It later turned out I had left it behind while visiting a friend earlier in the day, but in the moment I was flustered and had no idea where it could be.
	
	\_w[1000]\s[130]\_w[2500]\s[2]\_w[500]Thankfully, he was quite kind about it, and accepted a few {slicesofcherrypie} in exchange for services rendered.
}

//Fire
talk RandomTalk
{
	\s[0]As often happens around this time of year, I've been invited to various friends' houses to enjoy food over a campfire. \s[1]It is a good way to spend time with others, and I appreciate the invitations very much so.
	
	\s[2]My only regret is that I cannot bring a crochet project with me on such occasions. \s[22]Flying embers and highly flammable yarn are all too happy to mix!
}

//Cave
talk RandomTalk
{
	\s[2]I have once again caved to my overwhelming desire to acquire more yarn. \s[0]The new skein is a color I already have, but it has a different texture. \s[22]The difference is important, I swear!
	
	\_w[2000]\s[130]\_w[2500]\s[0]\_w[500]Sometimes, I find myself wondering if perhaps there is dragon blood within our ancestry.
}

//Forge
talk RandomTalk
{
	%{ ChainTalkQueue = ["BlacksmithsSon1","BlacksmithsSon2"]; }
	\s[0]We had a visitor from town today: the blacksmith's son. \s[2]Apparently, some of their supply shipments have been waylaid by bandits to the north. How frightening!
}

talk BlacksmithsSon1
{
	\s[2]They are starting to run low on iron, and offered to buy iron-containing items from us at a generous price. Everything from garden hoes to cooking pots to fire pokers.
	
	\s[22]The offer was tempting, but upon checking my belongings, I found that the iron items I have are all ones that I need and make use of on at least a semi-regular basis. \s[0]There would be no sense in me selling them for scrap and then having to repurchase them later.
}

talk BlacksmithsSon2
{
	\s[0]Some of the others managed to find a few items to exchange, and got a good price for them. \s[1]A mutually beneficial deal, as now the blacksmith's forge need not rest, and she can continue to serve her customers despite this challenge.
	
	\_w[1000]\s[2]I hope the town guard will deal with the bandit problem swiftly, though!
}

//List
//TODO is it "season turns" or "seasons turn" or am i making this up entirely
talk RandomTalk
{
	\s[0]I've taken on so many crochet projects lately that I've had to start a list to keep track of them all. I'm hoping to work my way through it before the seasons turn, so I can get back to a more relaxed routine.
	
	\_w[1000]\s[2]Unfortunately, despite my best efforts, progress towards completion of the list is... slow. \s[22]Somehow, each time I cross an item off, another 3 have already been added! I wonder if I will ever make it to the end at this rate?
	
	\_w[500]\s[130]\_w[2500]\s[1]\_w[500]Not that I mind having something to do with my hands at all times of day. \s[2]It's just that some of these are gifts for birthdays, anniversaries, and other such events, so they would ideally be completed by a certain time!
}

//Fair
talk RandomTalk
{
	\s[0]There has been talk recently of a fair being organized in town. Many folks in the village are hoping to attend, or to send goods with friends to showcase and sell on their behalf.
	
	\s[1]I myself am hoping to put together some special projects for the occasion. \s[21]Perhaps, should you be in the area at the time, I may even attend myself. \_w[1500]Of course, if you cannot make it I will be happy to remain at home and help to keep watch over our neighbors' homes for a few days.
	
	\_w[1000]\s[131]\_w[2500]\s[1]\_w[500]Either way, I am certain to come into possession of various fair delicacies soon. \s[21]I am looking forward to it rather hungrily!
}

//Scale
talk RandomTalk
{
	\s[0]By the way, if you happen to have the opportunity to gather dragon scales, would you consider bringing some to me? I had an idea for a project involving them.
	
	\_w[1000]\s[2]Please \f[underline,1]don't put yourself in danger!\f[underline,default] \_w[500]\s[22]I only thought since you occasionally bring me the odd dragon fang or claw already, you might also be able to gather scales \f[underline,1]safely\f[underline,default] while you're at it.
	
	\_w[1500]\s[130]\_w[3000]\s[22]\_w[500]Perhaps I should not be asking. \_w[1000]You need not do anything brash to impress me, I am quite impressed already!
}

//Clear
talk RandomTalk
{
	\s[0]I have been working on clearing out a cabinet full of old odds and ends. \s[2]It was packed so full that the contents were nearly spilling out. It has taken me upwards of two moons slowly chipping away at it to see substantial progress!
	
	\s[0]Most of what was in there I have been able to part with, or sell for scrap. Odd bits of things that had broken off and which I have come to accept I am never going to repair, items with a missing piece that I have never found, some bits and bobs that I can't remember where I even picked them up from.
	
	\_w[1000]\s[130]\_w[3500]\s[2]\_w[500]\It is quite slow work, and at times it feels heartbreaking to let go of things I've held onto for years. \_w[1000]\s[0]But as I have started to be able to see the back of the cabinet, I've begun to feel better about it.
	
	\_w[1500]\s[21]\_w[500]Perhaps I will have finished by the next time you visit, and you can admire my handiwork before I fill it once more.
}

//Space
talk RandomTalk
{
	\s[0]My yearly effort to recover space around the house has been going well so far. This week I've been focusing on {clearingthefloor}
	
	\s[2]It's amazing how quickly things become cluttered if I don't constantly work to keep them tidy!
}

//Box → Boks → bok bok bok bok bok
talk RandomTalk
{
	\s[0]Yesterday Abigail and I sat down and had a serious conversation about {thehenhouserules}. \s[1]And do you know what she said to me?
	
	"Bok bok bok bok bok!"
	
	\s[21]{suchwisewords}
}

//Shade
talk RandomTalk
{
	%{ ChainTalkQueue = ["YarnColorHelp"]; }
	\s[0]I realized the other day that I have been delaying a crochet project for months, even though I was quite eager to start on it. \s[2]I simply can't decide which color yarn to use; I have two skeins that are the same color but a few shades apart, and I haven't been able to pick between them.
	
	\_w[1000]\s[22]Becoming stuck on something so basic has made me feel a little foolish! \s[23]Surely it would be better to complete the project and regret the color choice later than to not make it at all?
}

talk YarnColorHelp
{
	\s[102]\_w[2500]\s[2]\_w[500]\![set,balloonwait,3]Perhaps\![set,balloonwait,1]\w8\w8 you could help me sort my dilemma? \s[0]I could send a small sample of each yarn with this letter, and you decide which you like better and send it back to me the next time you write.
	
	\s[1]Yes, that would help me greatly. \s[21]Please do not rush your decision, I have other projects that I am still bringing to completion. Any time that is convenient for you is fine.
}

//Cast
talk RandomTalk
{
	\s[0]A traveling minstrel visited our village recently. He offered to play music and tell grand tales for a small sum. \s[1]Everyone decided to pitch in a coin, and by the end of his performance we were glad we did. He put on quite the spectacle!
	
	\s[21]The little ones gathered around with eyes wide, hanging on every word he said, and cheering as he cast fanciful spells to highlight dramatic moments.
	
	\_w[1000]\s[101]\_w[2500]\s[131]\_w[2500]\s[1]\_w[500]I suspect his stories were embellished tales that he has heard from adventurers such as yourself. \_w[1000]\s[21]Even so, his blend of magic and music was very entertaining. I am sure he does well for himself.
}

//Bundle
talk RandomTalk
{
	\s[0]Every year I tell myself I will crochet a new shawl in time for winter, so that I have another layer to bundle up with.
	
	\s[2]Every year I end up pushing the project back for too long, or I end up giving the new shawl away to someone else who needs it more than I.
	
	\_w[1000]\s[22]Such is the life of someone who is frustratingly cold, but not intolerably so.
}

//Light
talk RandomTalk
{
	\s[0]One thing I have always been grateful for when it comes to fiber arts is that my materials and the products I create are all very light. \s[2]I do not envy the booksellers at the market, nor the farmers with their heavy crates of fruits or jams, nor the lumberjack selling firewood!
	
	\_w[1000]\s[21]My craft is easy to carry with me anywhere, even if I bring many types of yarn.
}

//Wrap
talk RandomTalk
{
	\s[1]I have been considering crocheting some handle covers for my baskets. Something with a cute pattern I could wrap around and fix in place.
	
	\s[21]It would serve no purpose other than to add a little more color and brightness to my life, but is that not purpose enough?
}

//Weak
talk RandomTalk
{
	\s[0]That railing on the porch is still in disrepair. \s[2]I have been trying to save up the money to hire one of those energetic youths that's always scurrying around doing odd jobs to fix it, but, well...
	
	\s[21]We both know my fortitude is a bit weak when it comes to {yarnfruit}. And so, the railing remains in its current state.
}

//Train
talk RandomTalk
{
	\s[1]I've been attempting to train Abigail to {bokoncommand}.
	
	\_w[1000]\s[21]Our success rate leaves much to be desired, but I am certain she will get it eventually.
}

//Bubble
talk RandomTalk
{
	\s[0]Yesterday when I went down to the stream, I saw some of the neighbor kids sitting on the bank, watching the water rush around the rocks and form bubbles. \s[1]It reminded me very much of when you and I were young and did the same.
	
	\s[21]I stayed for a few minutes to watch alongside them. Being an adult makes the stream no less worth watching, after all.
	
	\_w[2000]\s[131]\_w[4000]\s[21]\_w[500]I suppose, thinking on it now, the signs that you would be the type to roam and seek out nature's wonders were there from an early age.
}

//Mint
talk RandomTalk
{
	%{ ChainTalkQueue = ["CatmintTea"]; }
	\s[0]A new member of my fiber arts group brought in tea to share with everyone. \s[2]Unfortunately, it was mint tea. Grown in their own garden, and delightfully aromatic, but... \_w[1000]\s[22]They felt bad when I explained why I could not partake.
	
	\_w[1000]\s[0]Conversation turned to the topic of mint vs catmint, and very quickly they decided to grow some catmint specifically for me so that I am not left out in the future. \s[2]I am not yet certain how I feel about that as a solution! \_w[1000]\s[102]
}

talk CatmintTea
{
	\s[1]Regardless, I suppose their heart is in the right place. \s[21]And I am sure you will not turn down a few leaves if I have a surplus and send some your way.
}

//Beat → Beet
talk RandomTalk
{
	%{ ChainTalkQueue = ["ExcessBeets"]; }
	\s[0]My diet has been very rich in beets lately. The neighbor has had quite the bumper crop this year, and has more than they can manage to sell at the market.
	
	\s[1]They've been offering me beets for free to avoid seeing them go to waste.
}

talk ExcessBeets
{
	\s[0]Every day I have beets with breakfast, lunch, and dinner. Every stew day is beet stew day. \s[1]When I bring food to share with my fiber arts group, half of it is comprised of beets.
	
	\s[21]I could not possibly complain. What a wonderful problem to have!
	
	\_w[1000]\s[1]\_w[500]It is a good exercise in creative meal preparation, as well. There are a hundred ways to cook and serve beets, if you take the time to learn and experiment.
}

//Skip
talk RandomTalk
{
	\s[0]Lately I have been reminiscing about the lake when I settle down for my afternoon nap. The weather at this time of year makes me think about when we used to spend lazy afternoons there, skipping stones together.
	
	\s[1]You never did manage to reclaim the crown for the highest number of skips from me.
	
	\_w[1500]\s[31]\_w[3500]\s[21]\_w[500]No, any records you claim to have set while I was not there to witness them do not count! Should you wish to challenge me, you will have to meet me at the lake and face off fair and square.
}

//File
talk RandomTalk
{
	\s[0]I went to the general store today to get more {sugar}, but there was some sort of commotion going on. \s[2]A few dozen people were lined up outside the doors in single-file, with perhaps more inside.
	
	\s[22]Perhaps {shophandsaresick}? \s[2]I didn't stay to find out; I can get by for now, so I'll visit another time when they're less busy.
}

//Warp
talk RandomTalk
{
	\s[0]I should get that warped plank on the porch fixed soon. \s[3]I caught my paw on it again the other day, and my toes still ache.
	
	\_w[1000]\s[23]\_w[500]Perhaps I will put something brightly colored overtop of it to act as a warning in the meantime...
}

//Hit
talk RandomTalk
{
	%{ local sillyproject = chickenlegwarmers(); }
	\s[1]I've hit upon a brilliant new idea for a crochet project:
	
	\_w[1000]{Capitalize(sillyproject)}.
	
	\_w[2000]\s[21]I am certain that as you are reading these words, you are filled with awe at the thought of such a thing, and admiration for your sister who is surely about to bring a great revolution to the fiber arts world.
	
	\s[1]Once I bring in some prototype pieces for demonstration, my fiber arts group will be enthusiastic about the idea and join the revolution. When you come to visit, {sillyproject} will be all the rage!
}

//Hamper
talk RandomTalk
{
	\s[0]I stopped by the basket weaver's stall at the market today. \s[1]There were many sturdy pieces on display, including all sorts of hampers, large and small.
	
	Many of them caught my eye. \s[0]It would certainly be nice to have a slightly larger clothes hamper than what I have now! \_w[1000]\s[2]I am not ready to give up my current one, though. Not when it still has so much life left in it.
	
	\_w[1500]\s[0]Mine does, however, need some repairs. We discussed the matter and agreed upon a fair price. \s[2]Now all I need do is estimate how quickly to save coin for the repair, based on how long I think my hamper will hold out. \s[22]If I get it wrong, the repair will become much more costly!
}

//Tell
talk RandomTalk
{
	\s[1]Don't tell Abigail, but I'm making special plans for her hatchday. \s[21]She's sure to love {atinyapron}!
}

//Wing
talk RandomTalk
{
	\s[1]One of the young ones in the village has been chattering nonstop about {growwingsandfly}.
	
	\s[21]She reminds me very much of you when you were that age.
}

//Deal
talk RandomTalk
{
	\s[0]I attempted to sell some of my extra crochet pieces to a traveling merchant recently. \s[20]It did not go well.
	
	\_w[1000]\s[23]They offered me hardly a pittance. "Just some yarn", they said! As though the many hours of labor that went into shaping that yarn and making it strong are worth nothing.
	
	\s[3]I sent them on their way, and warned the others in my fiber arts group. No one should accept such a raw deal.
}