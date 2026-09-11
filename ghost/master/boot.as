//———————————————————— Boot ————————————————————
talk BootTalk
{
	%{ local weather = weathergreeting(); }
	\s[0]{Greetings} {Wanderer},
	
	How is the weather where you are? \s[20]It has been {weather.type} here. \s[22]{weather.detail}
}

talk BootTalk
{
	\s[1]{Greetings} {Wanderer},
	
	Your last letter was a delightful read! \s[21]The same is true of all your letters, of course, but it's not every day that you have a tale to tell as exciting as {raidingadragonsden}.
	
	\s[20]Truly, your courage is most admirable. I am glad to hear that {youaresafeandsound}, and that your experience has enriched your life in more ways than one.
	
	\s[30]\_w[3500]\s[22]\w8\w8I am afraid that what I write back will seem dull in comparison, but nevertheless I shall elaborate on the events of the day.
}

talk BootTalk
{
	\s[2]{Greetings} {Wanderer},
	
	My most sincere apologies for the lateness of this letter! \s[3]The last several days have been a whirlwind, both metaphorically and at times literally.
	
	\s[23]I spent about a week running to and fro, trying to keep on top of projects and deadlines that were all coming due at the same time. And then{emdash}\s[37]wouldn't you know it{emdash}\s[7]the wind started blowing so hard I thought the village might fly away! \s[2]\w8\w8\w8Poor {chicken} was the only one not inside when the winds became strong, and I had to embark on a rescue mission.
	
	\s[0]\w8\w8Despite everything, we are all safe and sound. Some buildings sustained minor damage, but repairs are underway, and the atmosphere is cheerful.
	
	\s[1]I hope you have not been too terribly concerned by the delay. Rest assured that my next letter will be on its way to you shortly!
}

talk BootTalk
{
	%{ RemainingTalks = 7; }
	\s[2]{Greetings} {Wanderer},
	
	My, I've hardly had a moment to spare as of late! The whole village seems to be bustling with activity, and I find myself pulled nonstop between this and that. It's been quite the change of pace trying to keep on top of things.
	
	\s[22]I apologize if this letter runs short, the dearth of free time has left me wanting for sleep!
}

talk BootTalk
{
	\s[0]{Greetings} {Wanderer},
	
	You've become quite the persuasive trader. \s[1]I have decided to accept your offering, and I believe you will like what I am sending in return...
	
	\s[21]{Capitalize(ablanket)} in exchange for your {enchanteddagger} seems fair, does it not?
	
	\_w[1000]\s[131]\_w[2500]\s[21]\_w[500]If you are dissatisfied with this deal, you may dispute it in person within 60 days. \s[1]I look forward eagerly to your next visit.
}

talk BootTalk
{
	\s[0]{Greetings} {Wanderer},
	
	\s[2]I was not certain I would have anything to write you tonight, \w4\s[1]but as is so often the case, the cover of dark has helped my thoughts to solidify.
	
	Prepare for a letter the likes of which you have never seen before! \s[21](Whether that is a good thing or not remains to be seen.)
}

talk BootTalk
{
	\s[0]{Greetings} {Wanderer},
	
	Sincerest apologies for the time between this letter and the previous! \s[2]There was, unfortunately, somewhat of a mishap.
	
	\s[0]I wrote you quite the heartfelt message and sealed it in an envelope, all ready for the courier. \s[2]Then before he could arrive, I placed your letter in the pocket of my gown... \s[22]And through a series of events, that gown ended up in the laundry pile that day.
	
	\_w[1000]\s[130]\_w[2500]\s[2]\_w[500]I was distraught when I eventually realized the garment I was washing also contained your letter, now soaked and unreadable. \s[3]How frustrating! \s[23]How terribly unlike me.
	
	\_w[1500]\s[20]Alas, there is naught to do but rewrite the parts I can remember. \s[0]I hope this will suffice, and I will endeavor to handle my words more carefully in the future.
}

talk BootTalk
{
	\s[0]{Greetings} {Wanderer},
	
	I had intended to write you last night, \w4\s[2]but so tired was I from the events of the day that I feared I might fall over on the way to my desk!
	
	\_w[1000]\s[1]I am certain a well-traveled soul such as yourself can understand the feeling, and will forgive me for ensuring that I had rested adequately before attempting to convey the latest happenings.
}

talk BootTalk
{
	\s[0]{Greetings} {Wanderer},
	
	\s[2]Today was so tiring that I thought I might very well sleep soundly throughout the entire night.
	
	\s[0]Yet, it seems I have woken after all. \_w[500]\s[1]I can only conclude that some part of my mind wishes to relay the events of the day to you before it allows me to complete my rest.
	
	\_w[1000]\s[21]I've no intention of spending the rest of the night awake, so prepare to be inundated with the mundane!
}

talk BootTalk
{
	\s[0]{Greetings} {Wanderer},
	
	\s[2]I awoke from the strangest dream just now! \s[0]You and I had swapped places, with me out on a grand adventure, and you staying home to tend to the garden and the chickens.
	
	\s[2]Being unused to adventuring, I fell into all sorts of trouble very quickly. I was {chasedbybandits} and {almostgotkilledbyadragon}. \s[22]Terrifying!
	
	\_w[1000]\s[30]\_w[4000]\s[2]\_w[2000]\![set,balloonwait,1.5]I really and truly am not the adventuring type, I cannot imagine doing anything so nervewracking for real. \_w[1000]\![set,balloonwait,1]\s[22]I hope that as I write this, you are safe and sound!
}

talk BootTalk
{
	%{ RemainingTalks = 7; }
	\s[0]{Greetings} {Wanderer},
	
	I write to you with legs quite sore. \s[2]I must have walked the length of the village 10 times today while completing all of my errands!
	
	To and fro, back and forth... \s[22]Usually I plan my route more carefully so that I do not have to retrace my steps, but today, so many of my errands were contingent upon each other that there was no choice. I simply had to walk and get it over with.
	
	\s[1]You will have to forgive me if this letter is a little shorter than usual. \s[21]I suspect I'll be nodding off sooner over later.
}

talk BootTalk
{
	\s[0]{Greetings} {Wanderer},
	
	\s[1]I am delighted to hear that my previous letter arrived just in time! \s[21]My sock senses were tingling, and it is good to know they are still well-attuned.
	
	\_w[1000]\s[31]\_w[2500]\s[1]\_w[500]Your next gift is already underway. \_w[1000]\s[21]Worry not, you'll learn what it is when you have need of it!
}

talk BootTalk
{
	\s[0]{Greetings} {Wanderer},

	\s[1]I'm writing this to you after having just put some bread in the oven. It's a new recipe for rosemary thyme rolls I'm attempting, fashioned after some rolls I had at the neighboring town's bakery that I quite enjoyed. 
	
	\s[0]I consulted with some of my friends to see how I might tweak my standard recipe to mimic the bakery's. \s[1]Hopefully they turn out well, or at the very least, I can refine the recipe to be perfect by the time you next visit!
}


//———————————————————— Close ————————————————————
talk CloseTalk
{
	\s[8]\_w[8000]\s[7]\w8\w8\s[37]\w8\w8\s[7]\w8\w8My, it's later than I thought. \s[2]I had best send myself off to bed.
	
	{Sincerely},
	{Homebody}
}

talk CloseTalk
{
	\s[31]\_w[3500]\s[22]Ah... It appears that I am nearly out of ink. This is where I leave it for now, then.
	
	\s[2]I will obtain more ink at the market tomorrow, and write you another letter soon.
	
	\s[0]Until then,
	{Homebody}
}

talk CloseTalk
{
	\s[1]Well, I believe that is all the thoughts I have for tonight. \s[21]I am sure I will have more for you in a few nights' time, if not sooner.
	
	{Sincerely},
	{Homebody}
}

talk CloseTalk
{
	\s[130]\_w[1500]\s[137]\_w[1000]\s[2]Oh my, I've just seen something get tangled up on the washing line!
	
	\s[22]I must go and investigate to see if there is trouble. I will write more another day.
	
	{Sincerely},
	{Homebody}
	
	\_w[1500]\s[2]P.S. Keep your tail away from any loose ropes or wires!
}

talk CloseTalk
{
	\s[130]\_w[1500]\s[20]A cloud has just rolled in to cover up the moon. \s[22]Perhaps that is a sign that I should return to my bed.
	
	\s[1]I will be sure to write you again shortly. Please look forward to it!
	
	{Sincerely},
	{Homebody}
}

talk CloseTalk
{
	\s[2]Ah, this letter is growing quite lengthy. \_w[500]\s[130]\_w[2500]\s[21]I wonder if you are still reading it, or if you have fallen asleep part way through?
	
	\_w[1000]\s[0]I have a number of happenings still on my mind, but I shall spare you for now. \s[1]Expect another long letter in short order!
	
	{Sincerely},
	{Homebody}
}

talk CloseTalk
{
	\s[0]Well, this seems like a good stopping point for now. \s[21]I still have some thoughts on my mind, but I'll save those for the next letter. It should give you something to look forward to.
	
	\s[1]{Sincerely},
	{Homebody}
	
	\_w[2000]\s[0]{postscript}
}

talk CloseTalk
{
	\s[131]\_w[1500]\s[0]Well, I think that's enough from me for now. My legs are telling me to get up and take a short walk around, then put myself back to bed.
	
	\s[1]Should you find a second piece of paper in this envelope, it means I remembered something else I wanted to say during my walk!
	
	\s[21]Hopefully in bed soon,
	{Homebody}
}

talk CloseTalk
{
	\s[2]\_w[1500]\s[37]\_w[1500]\s[3]\_w[500]Alas, I must end my letter here. \s[23]There was a noise outside just now, and I sense there may be a fox or other predator nearby in need of a good scare.
	
	\_w[500]\s[0]Please be safe and well,
	{Homebody}
}

talk CloseTalk
{
	\s[120]\_w[2000]\s[0]\_w[500]Ah... my eyelids grow heavy once more. \s[2]Perhaps I will end this letter here before I end up spilling ink across the page and render it unreadable.
	
	\s[20]{Sincerely},
	{Homebody}
}

talk CloseTalk
{
	\s[20]\_w[2000]\s[0]\_w[500]I feel a wave of sleepiness setting in. \s[20]I'd best get myself back to bed before it passes.
	
	\s[2]I have more on my mind that I did not yet cover, \w4\s[22]so expect a longer letter next time!
	
	{Sincerely},
	{Homebody}
}

talk CloseTalk
{
	\s[21]Well, I think it is best that I end things here and head back to bed. I'll be sure to write more soon.
	
	\_w[1000]\s[1]I would be most delighted if you can find the time to write back. Reading about your grand adventures is always a treat!
	
	{Sincerely},
	{Homebody}
}

talk CloseTalk
{
	\s[21]I hope this letter brought you some respite from your grand adventures. I know that you are quite the thrillseeker, but please make sure to take some time for yourself here and there. 
	
	\s[0]Not to belittle myself, but I feel my daily struggles must seem small compared to your trials. Still, I appreciate that you take the time to read my letters, no matter how busy you are, and that you keep me informed on your journey. 

	{Sincerely},
	{Homebody}
}