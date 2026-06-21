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
		"For The Eyes of My"
		"I hope this letter finds you {well}",
		"Good Tidings",
		"My Dearest",
		"To The",
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
	]);
}