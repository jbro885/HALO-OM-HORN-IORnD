
🧫️
feb10 2:59 (the four chars are writing and its bumping fith.this is ready 2 be read by 
pallette) 
🧫️

🌋️







🌋️



































🪕️
___________________________________REKRF
📥️2do📥️we aren't keeping a "pure calender" cuz this stuff isn't that hard...📥️
🧷️Where are we "NOW!"? =🎬️ Step 46 🎬️ 
🛑️WUSSUP? = "wasd" is set (weird try og) "ARROWS" seem liek they will require a bit more attention... 🛑️
🆘️just use the "structs" 2 get bootstrapped. then u can swap 2 ints w/e. at least u will grok 
ur souce blueprint...🆘️
🔂️SIDEQUEST (the window "NEVER DYNAMICALLY SIZES!" (we have one that does) can we mod it now!?
🐢️u maybe wait till ur done with the rest 2 do this so not 2 create confusion ? <3💝️ 🐢️
🔂️

ignore kr for step 26
______KR_____
🐡️watch out for which proc something should be in . 
there talking about
🌎️ "global state" >we may divirge in our approcah so try reading ahead, in bed or w/e
🌎️
🧷️
📥️
🗓️
📅️
📅️

🗓️



📤️DONE📤️ we aren't keeping a "pure calender" cuz this stuff isn't that hard...📤️


🏓️just get "size of window" (either way) ;) then rendering buffer should be EZ AF so LETS GO!🏓️




______XRT__________

___KRUFT_____________________

❤️‍🩹️i cleared mem{strcopy filenames cuz ur using args cuased unneeded confusion...}<> (we get flicker render now but there gonna help with that. were good.) 
🤕️ its storing "exit-cmnd" so as soon as program starts, it exits... NOT GOOD!

do we clear mem 2 "0" for exit commands? 
seems fair if u do it from second program(quil)
🤕️
❤️‍🩹️
❤️‍🩹️ fixed= 🩹️fixed kill (die) fx is workign so w/e thats wut tutorial uses so how can it be that wrong?

🐡️"cntrl-q" works WONDERFULLY , but "contrl-c" only works in '1.kbd2.mem]⌨️🎫️]0002' i think its cuz i didn' t "dissable cntrl" in "quil" i probably 
should..., and even make 'raw' extern...

(  i added term stuff and it didn't make a differnce . no thanks.) 
(no it doesn't help if i put it in "MACROMAN" also it doesn't even ever
let me hit cntrl-c so just use that as emergency 4 now? or w/e ) 
IF ANYTHIGN U CAN CHANGE QUIT TIME NOW 2 BE A BIT FASTER W/E {BREAKTIME !}
 🩹️

u should rewind 2 "CLEARN SCREEN"
and also "RETURN TERM 2 PRESTATE" (So it doesn't freeze!)]POST
📬️
i did that and its fine, the problem is 
kilo is in "1 scope" but our system is in "2 scopes" so we need 2 header
❎️extern struct ? https://cboard.cprogramming.com/c-programming/29913-extern-structs.html❎️
{i would even suggest shaking struct out 2 vars but w/e it was in  a diff struct b4.. u can wait till u get good not like ur gonna add ur own structs}
the "termios struct/die() , THAT may fix our problems from here on out
everything else will hopefully be copy/paste/grok <3 (its 3am.bed now<3)🔍️

💡️i wonder if it would be better to send "kill-sig" 2 mem? 4 (1.kbd)?💡️
🪄️is is better/POSSIBLE? 2 somehow chain proccesses 2 gether "so if one dies the 
other does aswell (in macro code???) 
🪄️

💀️*KILL PROCESS BY "REAL TID" IF OTHER EXITS? <CAN TRY WITH 'COUNTDOWN'> 
😷️
https://stackoverflow.com/questions/2084830/kill-thread-in-pthread-library
https://sites.ualberta.ca/dept/chemeng/AIX-43/share/man/info/C/a_doc_lib/aixprggd/genprogc/term_threads.htm

💉️the "Best perscription" seemed 2 be to make ur own "kill" based on mem or something (were sharing keypresses so u may already be doing it 'right' tbh)💉️
🤯️
*the actually problem is using "cntrQ" 2 quit is "KEYBOARD THREAD"
because? the signal dosen't get sent 2 mem so other thread CANT READ IT!'
🤯️
😷️
💀️
🪄️
📬️
❤️‍🩹️
______XRTFIXED_____
❤️‍🩹️i actually think this is fixed. theres a state where it works PERFECTLY... 
i tested recompiled and it works just like u would want. a dream i dunno how , but i dont care.
🥳️🥳️🥳️🥳️🥳️🥳️🥳️🥳️🥳️🥳️🥳️🥳️🥳️🥳️🥳️🥳️🥳️🥳️🥳️🥳️
(it didn't quit on cntrl c, but grabs key.. thats exactly wut u wanted...) i dunno HOW...
im investigating
⚠️
🐡️"cntrl-q" works WONDERFULLY , but "contrl-c" only works in '1.kbd2.mem]⌨️🎫️]0002' i think its cuz i didn' t "dissable cntrl" in "quil" i probably {that doesn'tm make sense tho cuz it shows screen...}
should..., and even make 'raw' extern...

☢️i had one where i put "raw mode" on all 3 and cntrl-c still "bugged it out" 
i will look for a more elegant solutions while leaving "well enough " alone 4 now <3 
(i saved that version aaway in "ray tank"
☢️⚠️
❤️‍🩹️
