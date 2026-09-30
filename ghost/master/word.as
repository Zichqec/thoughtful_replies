//Returns a random chicken name, EXCLUDING ABIGAIL
function chicken
{
	return Random.Select(Save.Data.Chickens);
}

//Returns a random chicken name, INCLUDING ABIGAIL
function allchicken
{
	//NOTE TO SELF: i previously had this like chickens = Save.Data.Chickens, and THAT DOES NOT WORK because it operates on the save data object, rather than making a copy... this i have trouble wrapping my head around
	local chickenlist = [];
	chickenlist.AddRange(Save.Data.Chickens);
	chickenlist.Add("Abigail");
	return Random.Select(chickenlist);
}

//Returns a random unused chicken name
function nonchicken
{
	local name = chickenname();
	while (InArray(name,Save.Data.Chickens) || InArray(name,Save.Data.ReservedChickens)) name = chickenname();
	return name;
}

// FAVORITE CHICKEN = ABIGAIL, DO NOT ADD THAT NAME TO THIS LIST
function chickenname
{
	return Random.Select([
		"Beaksley",
		"Chunks",
		"Emberflight",
		"Spot",
		"Fido",
		"Tabby",
		"Linda",
		"Clarise",
		"Gloria",
		"Tatum",
		"Dewey",
		"Beans",
		"Sophie",
		"Loaf",
		"Sunny",
		"The Beast",
		"Ginger",
		"Bubbles",
		"Blossom",
		"Buttercup",
		"Thunderbeak",
		"Flamewing",
		"Earthfeather",
		"Boulder",
		"Feather",
		"Tulip",
		"Daffodil",
		"Fang",
		"Ivy",
		"Man",
		"Mother",
		"Maple",
		"Cat",
		"Toadstool",
		"Dylan",
		"Muffin",
		"Cod",
		"Hog",
		"Margaret",
		"Jade",
		"Sprinkle",
		"Toebiter",
		"Thatch",
		"Rat",
		"Deborah",
		"Marie",
		"Stretch",
		"Pinkie",
		"Billy",
		"Ink",
		"Ox",
		"Quill",
		"Scratch",
		"Wick",
		"Flask",
		"Blade",
		"Jug",
		"Cabbage",
		"Cherry",
		"Basket",
		"Reed",
		"Willow",
		"Hazel",
		"Lavender",
		"Pumpkin",
		"Ruby",
		"Tinder",
		"Butter",
		"Falchion",
		"Wyrm",
	]);
}

// paired with (Wanderer), ie Greetings Wanderer
function Greetings
{
	return Random.Select([
		"Greetings",
		"Dear",
		"Salutations",
		"My Darling",
		"My Dear",
		"My Troublesome",
		"Good Day",
		"To My Beloved",
		"Most Respected",
		"Blessed Day",
		"For The Eyes of My",
		"I hope this letter finds you {well}",
		"Good Tidings",
		"My Dearest",
		"To The",
	]);
}

function Homebody
{
	return Random.Select([
		"The Homebody",
		"Master of the Chicken Coop",
		"Queen of Crochet",
		"Your Favorite Sister",
		"The Chicken Queen",
		"Abigail's {Protector}",
	]);
}

function intotown
{
	return Random.Select([
		"into town",
		"out of town",
		"to the capital",
		"to the city",
		"home",
		"to the next village over",
	]);
}

function Protector
{
	return Random.Select([
		"Protector",
		"Humble Servant",
		"Keeper",
	]);
}

function raidingadragonsden
{
	return Random.Select([
		"raiding a dragon's den",
		"stowing away onboard a pirate ship",
		"discovering forgotten ruins",
		"discovering the secret passage into a castle",
	]);
}

function youaresafeandsound
{
	return Random.Select([
		"you are safe and sound",
		"you are still in one piece",
		"you received only minor scrapes",
		"\c[char,1]{emdash}apart from {stubbingyourtoe}{emdash}you are alright",
		"you've made a new friend",
		"your cleverness has served you well",
		"fortune has smiled upon you",
		"the potion I sent you served you well",
		"your skill with a blade is sharp",
		"you had enough lockpicks on hand",
		"your claws are quick",
		"you've found a loyal ally",
	]);
}

function stubbingyourtoe
{
	return Random.Select([
		"stubbing your toe",
		"shutting your tail in the door",
		"falling out of your bed when you woke up",
		"losing a bit of fur",
		"ripping your favorite shirt",
	]);
}

function itisquitesweet
{
	return Random.Select([
		"\s[21]It is quite sweet, so much so that sugar would be ill-advised!",
		"\s[0]It's a bit earthy, but overall mellow. It takes a few sips for the flavor to build.",
		"\s[2]It has a strong, bright flavor. \s[21]It's quite a memorable one!",
		"\s[7]At least, I hope you will, as I now have quite a lot of it in my cupboard!",
		"\s[1]It comes from another region, and is quite different from what we're used to.",
	]);
}

function Sincerely
{
	return Random.Select([
		"Sincerely",
		"With Love",
		"Yours",
		"Until next time",
		"Will pester you another day",
		"Wishing you warmth and luck",
	]);
}

function stew
{
	return Random.Select([
		"stew",
		"a savory pie",
		"mince",
		"dumplings",
		"roast",
	]);
}

function Wanderer
{
	return Random.Select([
		"Wanderer",
		"Grand Adventurer",
		"Favorite Sibling",
		"Fellow Chicken Enthusiast",
		"Heavy-pocketed Friend",
		"Sweets Stealer",
		"Hunter of Barn Mice",
	]);
}

function weathergreeting
{
	return Random.Select([
		{type: "{rainy}", detail: "{rainydetail}"},
		{type: "{sunny}", detail: "{sunnydetail}"},
		{type: "{cloudy}", detail: "{cloudydetail}"},
	]);
}

function cloudy
{
	return Random.Select([
		"cloudy",
		"overcast",
		"a somber and grey day",
	]);
}

function cloudydetail
{
	return Random.Select([
		"\s[21]The shade is nice for getting the harder work done, and makes the occasional burst of sunlight a suitable excuse for a break.",
		"\s[1]I had thought it would only be a misty morning, but to my surprise, a haze lingered on the horizon for most of the day. \s[21]A good day for {stew}.",
		"\s[1]It made the morning chores much more pleasant to suffer through.",
	]);
}

function rainy
{
	return Random.Select([
		"raining all day",
		"downpouring",
		"hours of gentle rain",
		"a surprising outdoor bath of a day",
	]);
}

function rainydetail
{
	return Random.Select([
		"\s[2]At this point, I may very well need to choose a set of boots to sacrifice to the mud. \s[7]There will be no hope to clean them!",
		'\s[21]The chickens will have a feast from all of the worms that have come to say "hello".',
		"\s[3]Thankfully the roof has been holding, but I fear there are some places that will need patching soon.",
	]);
}

function sunny
{
	return Random.Select([
		"rather sunny",
		"warm and bright",
		"a pristine blue sky",
	]);
}

function sunnydetail
{
	return Random.Select([
		"\s[3]The birds have done nothing but lay about all day! I'm surprised any even bothered to forage as melted to the ground as they have been.",
		"\s[2]It seems I was not the only one that had wanted to sleep in. \s[23]The clouds did not show themselves once!",
		"\s[20]Not that it has been entirely unpleasant. It's wonderful weather for hanging up the laundry. \s[1]I almost wish there was more of it to manage!",
	]);
}

// for use with "i hope this letter finds you (well)" and similar sentence structures
function well
{
	return Random.Select([
		"well",
		"in a state of mild annoyance",
		"fed and rested",
		"warm and sheltered",
		"in wealth and happiness",
		"with claws sharpened",
		"with fur and fangs clean",
		"in good spirits",
	]);
}

function lostitem
{
	return Random.Select([
		"{weapon}",
		"{accessory}",
		"{otheritem}",
	]);
}

function weapon
{
	return Random.Select([
		"carving knife",
		"short sword",
		"ceremonial halberd",
		"wood-chopping axe",
		"stone-crushing hammer",
		"fireball wand",
		"thunder wand",
		"blizzard wand",
		"double-sided spear",
		"three-pronged trident",
	]);
}

function accessory
{
	return Random.Select([
		"well worn scarf",
		"pair of reading glasses",
		"felt cap",
		"leather pouch",
		"jeweled necklace",
		"ambiguously cursed amulet passed down through many generations",
		"ear cuff in the shape of a dragon",
		"set of ten matching rings",
	]);
}

function otheritem
{
	return Random.Select([
		"metal flask",
		"heirloom coin",
		"dusty tome",
		"dice set made of bone",
		"notebook containing spells in shorthand",
		"mug carved from oak",
	]);
}

function location
{
	return Random.Select([
		"at the base of the volcano",
		"deep in the northern tundra",
		"at the shores of the deepest lake",
		"in the middle of the bridge spanning the widest river",
		"in the midst of a desert sandstorm",
		"at the bottom of a rock quarry",
	]);
}

function crochetproject 
{
		return Random.Select([
		"granny square blanket",
		"produce bag for the market",
		"set of dish scrubbers",
		"set of coasters for drinks",
		"woolen cowl",
		"fringed scarf",
		"striped throw blanket",
		"family of plush mice",
		"pair of chunky mittens",
		"hammock for the chickens",
		"ribbed beanie",
		"lightweight cardigan",
		"twisted headband",
		"pair of cozy leg warmers",
		"pair of socks that have a fish pattern on the ankle",
		"set of matching mug cozies",
	]);
}

function puttingadaggerthroughit
{
	return Random.Select([
		"putting a dagger through it",
		"letting an ogre tear the sleeves off",
		"getting into a scrap at the inn",
		"getting into a fight with a bramble bush",
		"letting squirrels get the jump on you",
		"letting your sleeves catch in the door",
		"getting into a fight while still wearing your sleep clothes",
		"going spelunking in such tight caves",
		"getting it so close to the pointy bits of your friend's armor",
		"wading through a river filled with carnivorous fish",
		"falling out of a tree and hitting every branch on the way down",
		"using your sleeves to play with the adorable-looking-but-full-of-claws {dragonhatchling}",
	]);
}

function dragonhatchling
{
	return Random.Select([
		"dragon hatchling",
		"kitten",
		"baby hawk",
		"baby gryphon",
	]);
}

function hooksize
{
	return Random.Select([
		"1",
		"1.5",
		"2",
		"3",
		"3.5",
		"4",
		"4.5",
		"5",
		"5.5",
		"6",
		"6.5",
		"7",
	]);
}

function jumpedthefence
{
	return Random.Select([
		"jumped over its fence",
		"smashed through a section of its fence",
		"figured out how to unlock the gate",
	]);
}

function brooch
{
	return Random.Select([
		"brooch",
		"amulet",
		"scarf",
		"hat",
		"compact mirror",
		"makeup brush",
		"wooden toy",
		"set of opera glasses",
		Random.Select([
			"fountain pen",
			"dip pen",
			"pot of ink",
		]),
		"sandwich",
		"ribbon",
		"buckle",
		"hairpin",
		"handkerchief",
		"necklace",
		"button",
		"cufflink",
		"mitten (with no mate)",
		"sock",
		"wooden die",
		"pressed flower",
		"four leaf clover",
		"charm",
		"fishing hook",
		"bookmark",
		"spoon",
		"lucky crystal",
		"pumice stone",
	]);
}

function beenkickedundermysewingtable
{
	return Random.Select([
		"been kicked under my sewing table",
		"found its way out into the chicken coop",
		"been hiding behind one of my potted plants for who knows how long",
		"gotten buried at the bottom of my yarn basket",
		"been buried under a pile of old letters",
		"been tucked away at the very back of the bookshelf",
		"been kicked under the porch",
		"apparently fallen into my stash of blankets",
		"gotten itself stuck between two bowls",
		"caught in the window sill",
		"gotten lost at the bottom of my sock drawer",
		"fallen into the spare water bucket",
		"gotten buried at the bottom of the chicken feed",
	]);
}

//Singular crochet projects that can be referred to with "it"
function scarf
{
	return Random.Select([
		"scarf",
		"hat",
		"mitten",
		"baby blanket",
		"leg warmer",
		"doily",
		"sock",
		"tea cozy",
		"bandana",
		"coaster",
		"chicken sized pillow",
		"mug cozy",
		"dish rag",
		"chicken hat",
		"tiny rug",
		"fingerless glove",
		"soap saver bag",
		"kitten hat",
	]);
}

//referent being "it" or "them" appropriately for the dialogue, as in "I worked so hard to get the stains out of {referent}"
function dress
{
	return Random.Select([
		{item: "dress", referent: "it"},
		{item: "cowl", referent: "it"},
		{item: "shawl", referent: "it"},
		{item: "blanket", referent: "it"},
		{item: "skirt", referent: "it"},
		{item: "bloomers", referent: "them"},
		{item: "pants", referent: "them"},
		{item: "shirt", referent: "it"},
		{item: "scarf", referent: "it"},
		{item: "coat", referent: "it"},
		{item: "cloak", referent: "it"},
		{item: "nightgown", referent: "it"},
		{item: "tunic", referent: "it"},
		{item: "vest", referent: "it"},
		{item: "apron", referent: "it"},
		{item: "chemise", referent: "it"},
	]);
}

function thebrokenvasepieces
{
	return Random.Select([
		"the broken pieces of what used to be a vase",
		"a dozen skeins of yarn that had rolled out of my yarn bag as it toppled over",
		"my collection of rare crochet patterns",
		"every single recipe in my recipe collection",
		"the freshly-baked {muffins} I'd set out to cool",
		"amidst the puddle my mug of tea made when she knocked it off the table",
		"amidst the root and dirts from the plant I'd repotted just that afternoon",
		"the eggs I'd collected that morning. I suppose she was trying to lay on them and reclaim them for herself.\e",
		"my collection of crochet hooks I kept in an old mug. The mug did not survive the fall",
		"what had once been my collection of neatly ordered beads",
	]);
}

function muffins
{
	return Random.Select([
		"muffins",
		"mini pies",
		"rolls",
		"toasts",
		"biscuits",
		"cookies",
		"mini tarts",
	]);
}

function redyarn
{
	return Random.Select([
		"red yarn",
		"light blue yarn",
		"blue yarn (the extra soft one you like)",
		"textured yarn (the blue and green one)",
		"yellow and white yarn",
		"green yarn (the shiny one)",
		"orange yarn (the one I used for the mittens I gave you last winter)",
		"white yarn (the one enchanted to protect against stains)",
		"brown yarn (the one with the dense texture)",
		"black yarn (the extra thick one)",
		"yellow yarn",
		"gray yarn",
		"variegated yarn",
		"pink yarn",
	]);
}

function pinkwithpolkadots
{
	return Random.Select([
		"pink with white polka dots",
		"blue and yellow",
		"a lovely shade of red that matches her comb",
		"green",
		"a lovely silver color",
		"specially enchanted to be mud-proof",
		"green and red plaid",
		"the prettiest pink you've ever seen",
		"blue with white trim",
		"decorated with tiny eggs",
		"embroidered with her name",
	]);
}

function anewlywedcouple
{
	return Random.Select([
		"a newlywed couple",
		"one of the village elders who is turning {Random.Select([75,80,90,750,800,900])} this month",
		"a couple that are expecting a baby soon",
		"a new neighbor who just moved in from the city",
	]);
}

function ablanket
{
	return Random.Select([
		"a blanket",
		"a pair of cozy hats",
		"a matching set of socks",
		"matching mittens",
		"leg warmers with cute patterns",
		"a pair of oven mitts with chicken designs",
		"a set of egg-shaped coasters",
	]);
}

function enchanteddagger
{
	return Random.Select([
		"enchanted dagger",
		"dragon fang",
		"polished ruby",
		"magic necklace",
		"silver statuette",
		"diamond charm",
		"gold hairpin",
		"gold bracelet",
		"jade bracelet",
		"amethyst ring",
	]);
}

//These all have to end with a . because I wanted the parenthetical...
function theywanttostartabusiness
{
	return Random.Select([
		"they want to get good enough to begin selling pieces in town as supplemental income.",
		"they're looking for a relaxing hobby to fill their day now that their children have moved out.",
		"they're feeling a little bored in life and want to pursue something completely new to them.",
		"it's something their grandparents and great-grandparents did, and they want to reconnect with their roots.",
		"it's quite satisfying.",
		"another friend got them into it and they're so enthralled it's all they've done for the last several weeks.",
		"they have decided that it is more enjoyable and cost effective to create handmade gifts for their family members, rather than fussing over what trinkets to buy. \s[21](A sentiment I wholeheartedly agree with!)",
		"they've been feeling restless while their brother is away traveling the trade routes, and wanted something to do with their hands.",
		"they've always had an appreciation for the craft, but believed they could never create pieces as beautiful as what they've seen at the market. \s[21](If I had to guess, they probably plucked up the courage to try thanks to reassurance from their husband!)",
		"they tried it out as part of an amateur art contest, and now they've fallen deeply in love with the craft.",
	]);
}

function agoldnugget
{
	return Random.Select([
		"a gold nugget",
		"a silver locket",
		"a gold amethyst ring",
		"a perfectly spherical stone",
		"a diamond earring",
		"an old clay pot",
		"a sapphire necklace",
		"an iron horseshoe",
		"a queen from an ivory chess set",
		"a carved bone charm",
		"an obsidian arrowhead",
	]);
}

function protection
{
	return Random.Select([
		"protection",
		"fortune",
		"luck",
		"growth",
		"wisdom",
		"courage",
		"warmth",
		"lightness",
		"stealth",
		"endurance",
	]);
}

//This is a bit janky, but I was having trouble with having PS and PPS being all one function and not matching the linebreaks of talk blocks, and i'm sick so i refuse to think through this any harder
talk postscript
{
	%{
		local script1 = PS();
		local script2 = PPS();
		if (script1.IsNull()) return;
	}
	{script1}
	
	{script2}
}

//TODO more PS and PPS
function PS
{
	if (Random.GetIndex(0,2) == 0) //50%
	{
		local output = "";
		output += "\_w[2000]P.S. ";
		
		output += Random.Select([
			"\s[2]Have you located your missing {amulet} yet?",
			"\s[1]I passed along your regards to the {elacans}{emdash}they said to wish you luck in return!",
			"\s[0]Are those socks still holding up? I have a few more pairs waiting for you, but I can send some with my next letter if needed.",
			"\s[1]Sending you a few leaves of catmint. Take your time with them!",
			"\s[1]The {elecans} wished for me to send you their warm wishes!",
			"\s[2]I've been searching everywhere for that {amulet} you mentioned, but I have not yet found it. I'll keep looking!",
			"\s[1]The rhubarb crop is coming up nicely this year, there will be delicacies aplenty if you visit soon.",
			"\s[1]Abigail pecked at the last letter I wrote to you before I sent it. I believe she would like to send her regards.",
			"\s[1]I've decided to send along one of Abigail's feathers, it should bring you good luck.",
			"\s[0]I've nearly finished a new scarf for you. \s[1]It should be ready in a week's time!",
			"\s[0]How is that dagger faring since you had it repaired? Is it still holding up well?",
			"\s[1]The {elecans} asked after your well-being, they were delighted to hear about your latest adventures. \s[21]Next time you come home, we should all get together to share a meal.",
		]);
		
		return output;
	}
}

function PPS
{
	if (Random.GetIndex(0,4) == 0) //25%
	{
		local output = "";
		output += "\_w[2000]";
		output += "P.P.S. ";
		
		output += Random.Select([
			"\s[0]I forgot to mention the snails! I'll write about them next time.",
			"\s[0]I completely forgot to tell you about Abigail's adventure {inthecreek}! \s[1]I'll write about it next time.",
			"\s[2]I was going to include a whole section about the big project I just finished, but I forgot! \s[0]I'll have to tell you about it next time, as I am nearing the end of this page.",
			"\s[1]There is a pie-making contest coming up in the village soon! \s[2]I'll have to tell you about it next time, since I have run out of space on this page.",
			"\s[0]I was going to tell you about the skunk incident! I'll include it next time.",
			"\s[1]I uncovered something you mind find interesting in the cellar. I'll tell you all about it next time if I remember! \s[21](If not, you'll have to remind me next time you are here.)",
			"\s[2]It might actually be slightly longer than usual until my next letter, the next several days are looking to be very busy indeed!",
			"\s[1]I am using a new writing set. Did you notice the difference?",
			"\s[0]I forgot to tell you about what {chicken} has been up to! \s[1]I am writing myself a note right now to make mention of it next time.",
			"\s[2]I forgot to tell you what Abigail found by the stream. I'll remember next time for sure!",
		]);
		
		return output;
	}
}

function amulet
{
	return Random.Select([
		"amulet",
		"necklace",
		"brooch",
		"scarf",
		"ring",
		"utility knife",
		"mitten",
		"sock",
		"earring",
		"letter",
		"set of dice",
		"warming stone",
		"leg warmers",
		"tail warmer",
		"gem pouch",
		"gauntlet",
		"shoe",
		"belt",
		"mirror",
		"bucket",
		"bedroll",
		"basket",
	]);
}

//Family names
function elacans
{
	return Random.Select([
		"Elacans",
		"Sarrels",
		"Meadowgroves",
		"Durallis",
		"Rosers",
		"Bridgewaters",
		"Nivarrises",
		"Alqorins",
		"Tibbets",
		"Wyrndels",
	]);
}

function inthecreek
{
	return Random.Select([
		"in the creek",
		"by the wood pile",
		"by the well",
		"in the garden",
		"on top of the henhouse",
	]);
}

//Small, droppable, precious personal effects
function aring
{
	return Random.Select([
		"a ring",
		"a necklace",
		"a \f[underline,1]very\f[underline,default] sparkly charm",
		"an earring",
		"a diary",
		"a pearl necklace",
		"a pair of spectacles",
		"an engraved cowbell",
		"a beaded bracelet",
		"a woven bracelet with many colors",
	]);
}

function threejarsofjam
{
	return Random.Select([
		"three jars of your favorite jam",
		"a fresh-baked rhubarb pie",
		"a new pair of mittens",
		"a quiche made with lots of cheese",
		"a dozen eggs",
		"a jar of {pickletype} pickles",
		"a bag of jerky from the farmers market",
		"your pick of the fishmonger's freshest fish",
		"a new warming stone",
		"a crocheted charm of Abigail's face",
	]);
}

function themarket
{
	return Random.Select([
		"the market",
		"meeting with my fiber arts group",
		"delivering eggs to the neighbor",
		"the river",
		"the general store",
		"the village square",
		"community center",
		"the carpenter's",
		"visiting some of the village elders",
		"visiting an old friend of mine",
	]);
}

function slicesofcherrypie
{
	return Random.Select([
		"slices of {pieflavor} pie",
		"blueberry tarts",
		"pieces of apple strudel",
		"pieces of licorice",
		"poached pears",
		"fritters",
		"berry turnovers",
		"blackberry muffins",
		"slices of cheesecake",
		"lemon cookies",
		"honey rolls",
	]);
}

function pieflavor
{
	return Random.Select([
		"cherry",
		"apple",
		"shepherd's",
		"blueberry",
		"chocolate",
	]);
}

function clearingthefloor
{
	return Random.Select([
		"clearing the floor and ensuring there is ample space for paws to step.",
		"sorting through my yarn basket and arranging the skeins more neatly so that the ones which have been sitting out on the end table can be put away properly.",
		"rearranging the shelves in the kitchen and straightening everything up to make the best use of the space.",
		"repotting some of the plants on the windowsill and moving them outside.",
		"picking up odds and ends that have become strewn around the house and returning them to the drawer where they belong.",
		"organizing the pantry.",
		"going through the linens and getting rid of those that have become too stained.",
		"clearing clutter out of the kitchen drawers to make more ample space for the utensils.",
		"sorting my buttons more neatly into an organizer.",
		"getting rid of old feathers that never found a use.",
	]);
}

function thehenhouserules
{
	return Random.Select([
		"the henhouse, and her enforcement of the new rules we recently laid out",
		"what vegetables I should plant in the garden next year",
		"what color yarn I should use for my next project",
		"my new laundry routine",
		"what type of pie I should prepare for the next fiber arts meeting",
		"the progress I've made on the {crochetproject} I started last month",
		"whether or not it's going to rain",
		"which tablecloth I should use this week",
		"my new plan to keep down the clutter in the kitchen",
		"the number of pies I've been baking for friends lately",
	]);
}

function suchwisewords
{
	return Random.Select([
		"Such wise words, befitting a bird of her age!",
		"Can you believe that?",
		"It's true, she did!",
		"What an enlightening dialogue we had!",
		"I could do naught but nod and agree. She's quite the persuasive speaker!",
		"She really does have such a way with words.",
		"I will have to sit for a spell and ponder what exactly she meant by that.",
		"Such great wisdom, bestowed to me, and now shared with you too.",
		"She really has a way of making complicated things sound simple.",
		"How very insightful!",
	]);
}

//Punctuation required at the end of each to account for parenthesis
function yarnfruit
{
	return Random.Select([
		"yarn.",
		"crochet patterns.",
		"fresh fruits at the market.",
		"catmint.",
		"getting special treats for Abigail.",
		"new needles (sewing or otherwise).",
		"those tiny jingly bells. (They're such fun accessories!)\w8\w8",
		"collecting ribbons in pretty colors.",
		"the allure of extra stationary.",
		"treating myself to fresh fish after a hard day's work.",
	]);
}

function bokoncommand
{
	return Random.Select([
		`say "bok" on command`,
		"wear the tiny hats I crochet for her",
		"hold skeins of yarn while I work",
		"fly to my arms when I call her name",
		"leave the little lizards alone",
		"sit on my head and help me count stitches while I crochet",
		"nod or shake her head when I ask yes or no questions",
		"fly through a hoop",
		"balance on one leg",
		`puff out her chest and flap her wings when I say "who's a pretty bird"`,
		"count",
	]);
}

function sugar
{
	return Random.Select([
		"sugar",
		"flour",
		"baking powder",
		"yeast",
		"starch",
		"salt",
		"honey",
		"vanilla",
		"ginger",
		"butter",
		"vinegar",
		"washing soda",
		"soap",
	]);
}

function shophandsaresick
{
	return Random.Select([
		"all of the shop hands are sick",
		"the lock on the door was stuck closed",
		"some customer had become rowdy and was causing a scene",
		"there was a big spill of some sort that had to be cleaned up",
		"a wild animal got loose in the store and now they've got to catch it",
		"a new shipment of their delicious {peachjams} had just arrived",
		"their seasonal items were restocked",
		"the health inspector from town was visiting",
		"they received a shipment of rare spirits",
		"one of the owner's nieces or nephews is helping out for the day",
	]);
}

function peachjams
{
	return Random.Select([
		"peach jams",
		"hard candies",
		"taffies",
		"maple syrup",
		"peanut brittle",
	]);
}

function chickenlegwarmers
{
	return Random.Select([
		"chicken leg warmers",
		"decorative spider webs",
		"door handle covers",
		"picture frame covers",
		"mouse trap mats",
		"luxury fishing line covers",
		"kettle wigs",
		"tree sweaters",
		"wearable decoy tails",
	]);
}

function chasedbybandits
{
	return Random.Select([
		"chased by bandits",
		"pursued by giant spiders",
		"lost in an underground cavern",
		"sneaking into an aristocrat's mansion",
		"deep in a forest of enormous mushrooms",
		"running away from an angry mob",
		"surrounded by people who spoke a language I couldn't understand",
		"on the back of a chicken the size of a house",
		"searching desperately for water",
		"being stalked by a herd of deer",
	]);
}

function almostgotkilledbyadragon
{
	return Random.Select([
		"almost got killed by a dragon",
		"had no supplies with me whatsoever apart from a broom",
		"barely dodged a volley of arrows from the city guard",
		"very nearly fell into a bottomless pit",
		"ended up getting so lost that I was sure I would never see another soul again",
		"was almost eaten by a particularly clever mimic",
		"fell into a pitfall trap",
		"tripped and fell into an enchanted pool",
		"before I knew it I was surrounded by dancing fairies that were chanting something unintelligible",
		"gravity suddenly reversed itself",
	]);
}

function atinyapron
{
	return Random.Select([
		"a tiny chicken-sized apron",
		"another tiny hat",
		"another bow",
		"a small bag of premium chicken feed",
		"handmade chicken socks",
		"a stuffed replica of herself",
		"a crocheted charm in her likeness",
		"a tiny chicken-feed pie",
		"extra grubby grubs",
		"a crocheted feather for her nest",
	]);
}

function growwingsandfly
{
	return Random.Select([
		"how she wants to grow wings and fly like a bird",
		"how she climbed up to the top of the hill all by herself",
		"wanting to practice swimming in the lake",
		"how she's going to climb all the way to the top of the big tree in the village square",
		"wanting to learn to hunt deer with a bow",
		"catching beetles in the woods",
		"the map she's drawn of the woods behind her family's home",
		"how she's building a fort under her parents' rhododendron bush",
		"how she's going to dig a hole and find out how far she can get before her parents catch her",
		"how she's going to find vast amounts of treasure and make the village rich",
	]);
}

//Plural crochet projects, small enough to fit in a display case
function doilies
{
	return Random.Select([
		"doilies",
		"scarves",
		"socks",
		"mittens",
		"tea cozies",
		"chicken hats",
		"ear warmers",
		"leg warmers",
		"pompoms",
		"baby blankets",
	]);
}

function nearlygotsquashed
{
	return Random.Select([
		"nearly got squashed by a giant's club",
		"nearly got washed away by a raging river",
		"almost fell into a dark abyss while hunting for treasure in an old ruin",
		"were trying to cross over a river using some very shallow crossing stones, slipped, fell in, and nearly went over a waterfall",
		"nearly got carried off the top of a mountain by a monstrously large eagle",
		"got stuck in a labyrinth and only found your way out the day after you ran out of food",
		"almost got tricked by a beast that used its camouflage to hunt you",
		"almost got trapped inside a dragon's den with no safe way out",
		"very nearly got crushed by a cave-in while exploring an ancient tomb",
		"were kidnapped by bandits that thought you were some wealthy merchant",
	]);
}

function pileofcoasters
{
    return Random.Select([
        "is a pile of coasters",
        "is a pound of granny squares",
        "is an excess of mug cozies",
        "is a mile of scarves",
		"are a thousand chicken hats",
		"is a crate of mittens in various sizes",
		"are buckets and buckets",
		"is a closet overflowing with blankets",
		"is a 20 gallon tub of doilies",
		"are dozens and dozens of egg holders",
    ]);
}

function he
{
    return Random.Select([
        "he", 
        "she", 
        "they",
    ]);
}

function halfanhour 
{
    return Random.Select([
        "about half an hour",
        "almost an hour",
        "practically an eternity",
        "too long for me to count",
		"nearly 3 hours",
		"most of the afternoon",
		"the entire morning",
		"10 minutes, then 20, then 60",
		"so long we practically became statues",
		"what felt like 10 minutes but could have been aeons",
    ]);
}

function afishinglure
{
    return Random.Select([
        "a fishing lure",
        Random.Select ([
			"a gaudy hat",
			"a gauche hat"
		]),
        "a new dip pen",
        "an avant garde art project",
		"a festive picture frame",
		"a new brooch",
		"a good luck charm",
		"a fly swatter",
		"some contraption to scare foxes with",
		"a ball of feathers to be kicked around his home and pick up dust off the floor",
    ]);
}

function pickletype
{
	return Random.Select([
		"bread and butter",
		"half sour",
		"dill",
		"spicy",
		"sweet",
	]);
}

function beasties
{
	return Random.Select([
		"bats",
		"rats",
		"spiders",
		"beetles",
		"wasps",
		"ravens",
		"crabs",
		"ants",
		"flies",
		"moles",
		"hornets",
	]);
}

function scarything
{
	return Random.Select([
		"are the size of a horse",
		"can fell a tree in one blow",
		"have venom that can kill a grown man",
		"never sleep",
		"can sink ships",
		"can swallow a person whole",
		"can grow to the size of a bear when angry",
		"leave a trail of fire behind them everywhere they go",
		"are never truly dead no matter how many times they are slain",
		"bear curses which they afflict on whoever slays them",
	]);
}

function farmername
{
	return Random.Select([
		"McDonald",
		"McGraw",
		"Joseph",
		"Bond",
		"George",
		"Granger",
		"Parlan",
		"Arthur",
		"Clark",
		"Luke",
		"Peter",
		"Grant",
	]);
}

function crop
{
	return Random.Select([
		"wheat",
		"corn",
		"barley",
		"rye",
		"millet",
		"oat",
		"peanut",
		"soybean",
		"potato",
		"carrot",
		"sunflower seed",
		"flax",
	]);
}