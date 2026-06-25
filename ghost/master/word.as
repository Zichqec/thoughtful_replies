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
		"reading glasses",
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