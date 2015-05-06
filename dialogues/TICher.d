BEGIN ~TICher~

// 1. Candlekeep Storage

IF ~GlobalLT("%STORAGE_RATS_DV%","GLOBAL",5)~ THEN BEGIN m1
SAY~Help me!! I'm terrified of rats! Oh, please help me!~          
IF ~~ THEN EXIT
END
 
IF ~Global("%STORAGE_RATS_DV%","GLOBAL",5) Global("TICheril","GLOBAL",1)~ THEN BEGIN m2
SAY~Oh, thank you, <CHARNAME>! You've done your former teacher a great service!~
++ ~You're welcome, Cherilane. What do you mean by former teacher?~ DO ~IncrementGlobal("TICheril","GLOBAL",1)~ + m2a
++ ~Don't thank me. Reevor's paying me to kill the rats anyway.~ DO ~IncrementGlobal("TICheril","GLOBAL",1)~ + m2b
++ ~What service? I just love to kill rats!~ DO ~IncrementGlobal("TICheril","GLOBAL",1)~ + m2c
+~Global("T1CowMoo","GLOBAL",1)~+ ~Apparently, I've acquired a new skill: I'm talking to rats... By Chauntea, I've become a 'Rat-Whisperer'!!~ DO ~IncrementGlobal("TICheril","GLOBAL",1)~ + m2d
END

IF ~~ THEN BEGIN m2a
SAY~Yes, <CHARNAME>. *She wipes her eyes.* Former teacher. It seems everything we love must eventually end.~
IF ~~ THEN + m2a_01
END

IF ~~ THEN BEGIN m2b
SAY~Well, thank you anyway! He won't be paying you near enough, I'm sure. He's tight-fisted when it comes to paying anyone else to do work that he himself should be doing!~
IF ~~ THEN + m2a_01
END

IF ~~ THEN BEGIN m2c
SAY~*Cherilane smiles grimly.* Oh, it's a service to me, alright. I'd rather see the little beggars dead, too. When I was a child, I encountered a big nest of them in my grandmother's barn and got bitten several times. I've never forgotten how much pain those little teeth can cause.~
IF ~~ THEN + m2a_01
END

IF ~~ THEN BEGIN m2d
SAY~*Cherilane raises her eyebrows.* You're talking to...to rats? You haven't suffered a blow to the head recently, have you, <CHARNAME>? *Looks intently at you.* No... there's something different going on here. *Shudders.* Better you than me. Rats give me the shivers.~
IF ~~ THEN + m2a_01
END

IF ~~ THEN BEGIN m2a_01
SAY~*Laughs.* This is a strange way to say goodbye, though, isn't it? In a rat-infested storehouse?~
++ ~Huh? I guess you heard that I'm leaving, then.~ + m3
++ ~Why does everyone know my business!? I only found out I was leaving half an hour ago!~ + m3.1
++ ~What a coincidence! Both of us getting ready to leave Candlekeep on the same day!~ + m3.2
END

IF ~~ THEN BEGIN m3
SAY~What? You're leaving, too? No... I hadn't heard. Honestly, <CHARNAME>, between teaching you poetry and music and my own research work on the poet Rincehtë, I don't have much time to listen to gossip.~
IF ~~ THEN + m3_01
END

IF ~~ THEN BEGIN m3.1
SAY~What do you mean by that? You're leaving, too? You're wrong... I didn't know. I've been too focused on getting an empty crate for my belongings and figuring out where I'm going to go to worry about what everyone else is gossiping about.~
IF ~~ THEN + m3_01
END

IF ~~ THEN BEGIN m3.2
SAY~So you're leaving, too, eh? *Sigh.* That isn't a coincidence. Just proof that Ulraunt hates both of us.~
IF ~~ THEN + m3_01
END

IF ~~ THEN BEGIN m3_01
SAY~May I ask why you're leaving? I thought you were happy here.~
++ ~I am... err... was happy here. I don't know why. My father didn't tell me.~ + m3a
++ ~Oh, I'm grateful to be ditching this dump. But it wasn't my choice this time. Gorion didn't tell me why.~ + m3b
++ ~I'd rather not talk about it.~ + m3c
END

IF ~~ THEN BEGIN m3a
SAY~*Sigh.* So it's Gorion's doing, huh? Well, I guess he must have a good reason for it. I wish he had told you the reason, at least. As it is, he's made it difficult for you to properly prepare.~
IF ~~ THEN + m3a_01
END

IF ~~ THEN BEGIN m3b
SAY~*Sigh.* I wish I was as pleased about my departure. I've been at Candlekeep for a long time and I can't imagine living anywhere else.~
IF ~~ THEN + m3a_01
END

IF ~~ THEN BEGIN m3c
SAY~Then we won't talk about it. I hope everything goes well for the both of us.~
IF ~~ THEN + m3a_01
END

IF ~~ THEN BEGIN m3a_01
SAY~You leaving does explain why Ulraunt was so happy when he informed me that my services were no longer necessary. He's getting rid of two sources of irritation at one time. I'm sure he's hoping I'll get bitten by the rats down here when I start poking around looking for an empty crate for my belongings.~
++ ~Why would Ulraunt be pissed at you? All you did was teach me literature, poetry, and music.~ + m4
++ ~Bastard.~ + m4d
++ ~I'll be honest, Cherilane. I don't like poetry. But you made the topic bearable. Ulraunt shouldn't have fired you.~ + m4e
+~PartyHasItem("TIC0SCRL")~ + ~Do you recognize this letter, Cherilane?~ + m4f
END

IF ~~ THEN BEGIN m4
SAY~Just being willing to teach you was enough. He thought you didn't deserve to be here, let alone get an education--but he hated me anyway because he has no respect for anyone who would spend their time studying the literature of love: songs and poetry about the ways of the heart.~
=~The thirty years I've spent here studying would have been wonderful if I hadn't had Ulraunt hanging over me the whole time, sneering.~
++ ~Yeah, well, that's Ulraunt for you.~ + m4a
++ ~Thirty years? Then you must be... gods... at least fifty. I didn't realize you were that old.~ + m4b
++ ~So do you have a favorite story about here?~ + m4c
END

IF ~~ THEN BEGIN m4a
SAY~Tell me one thing, <CHARNAME>... I feel like we've had some fun times together looking over the old works. I have to ask you, now that those times are over, will... will you miss our time together... and me?~
++ ~You know I will, Cherilane. Both the poetry we studied and you.~ + m5
++ ~Not the poetry. I didn't like a lot of it. But I'll miss you.~ + m5.1
++ ~*Laugh.* You're as crazy as everyone else around here. I'm going to just shake the dust of Candlekeep off my feet and forget I was ever here.~ + m5.2
END

IF ~~ THEN BEGIN m4b
SAY~*Laughs.* Actually, I'm eighty, <CHARNAME>. An incomprehensible age to one as young as you. My elven father was only able give me one thing: when he bedded my human mother, he gave me the potential for a long life. Mama's been gone nigh thirty years now and I am still as young as you.~
=~Such is the end result of elvish blood. But tell me one thing, <CHARNAME>... I feel like we've had some fun times together looking over the old works. I have to ask you, now that those times are over, will... will you miss our time together... and me?~
++ ~You know I will, Cherilane. Both the poetry we studied and you.~ + m5
++ ~Not the poetry. I didn't like a lot of it. But I'll miss you.~ + m5.1
++ ~*Laugh.* You're as crazy as everyone else around here. I'm going to just shake the dust of Candlekeep off my feet and forget I was ever here.~ + m5.2
END

IF ~~ THEN BEGIN m4c
SAY~*Grins.* I do. And it's about you! Do you remember the first poem I taught you?~
++ ~Not anymore! That must have been... fifteen years ago!~ + m4c1
++ ~A bit of it... Remind me.~ + m4c1
++ ~Of course! You were by far the prettiest of my teachers! I wanted to impress you, so I memorized it!~ + m4c1
END

IF ~~ THEN BEGIN m4c1
SAY~Well first, you were the cutest little thing reciting it! And second, you'd lost your two front milk teeth, so you lisped a little and it was sooo darling. It's by Hûneth:~
=~'If all would lead their lives in love like me,
Then bloody swords and armor should not be;
No drum nor trumpet peaceful sleeps should move,
Unless alarm came from camp of love.
But fools do live and waste their little light,
And seek with pain their ever-during night.'~
=~Tell me one thing, <CHARNAME>... I feel like we've had some fun times together looking over the old works. I have to ask you, now that those times are over, will... will you miss our time together... and me?~
++ ~You know I will, Cherilane. Both the poetry we studied and you.~ + m5
++ ~Not the poetry. I didn't like a lot of it. But I'll miss you.~ + m5.1
+ ~%BGT_VAR% !Global("T1CowMoo","GLOBAL",1)~ + ~*Laugh.* You're as crazy as everyone else around here. I'm going to just shake the dust of Candlekeep off my feet and forget I was ever here.~ + m5.2
+ ~%BGT_VAR% Global("T1CowMoo","GLOBAL",1)~ + ~*Laugh.* You're as crazy as everyone else around here. I'm going to just shake the dust of Candlekeep off my feet and forget I was ever here.~ + m5.2r
END

IF ~~ THEN BEGIN m4d
SAY~Heh! Calling him a 'bastard' assumes he had parents. I thought he merely grew like a mold from under a rock somewhere dark... Just being willing to teach you was enough for him to hate me. He thought you didn't deserve to be here, let alone get an education.~
=~But he especially hated me because he has no respect for anyone who would spend their time studying the literature of love: songs and poetry about the ways of the heart.~
=~The thirty years I've spent here studying would have been wonderful if I hadn't had Ulraunt hanging over me the whole time, sneering.~
++ ~Yeah, well, that's Ulraunt for you.~ + m4a
++ ~Thirty years? Then you must be... gods... at least fifty. I didn't realize you were that old.~ + m4b
++ ~So do you have a favorite story about here?~ + m4c
END

IF ~~ THEN BEGIN m4e
SAY~Thank you. It's a high compliment to hear that I made something difficult easier for you. On the other hand, my fondness for you seems to have encouraged him to hate me even more than my subject. Just being willing to teach you was enough for him to hate me.~
=~He thought you didn't deserve to be here, let alone get an education. But he especially hated me because he has no respect for anyone who would spend their time studying the literature of love: songs and poetry about the ways of the heart.~
=~The thirty years I've spent here studying would have been wonderful if I hadn't had Ulraunt hanging over me the whole time, sneering.~
++ ~Yeah, well, that's Ulraunt for you.~ + m4a
++ ~Thirty years? Then you must be... gods... at least fifty. I didn't realize you were that old.~ + m4b
++ ~So do you have a favorite story about here?~ + m4c
END

IF ~~ THEN BEGIN m4f
SAY~*Glances at it.* No, although I can see why you might have thought it was mine given that the author's name is 'C.' Hmmm... The handwriting looks like Master Camryn, the Illuminator's, except that I haven't ever seen him outside of the library the whole time I've lived here. Sorry I can't be much more help.~
++ ~That's alright. It fell out of a book I found for Phlydia. She thought it might be Camryn's, too.~ + m4a
++ ~So do you have a favorite story about here?~ + m4c
END


IF ~~ THEN BEGIN m5
SAY~I know this will sound forward, but the past few years have been wonderful for me. You've come of age... You now appreciate all the little things that I've always loved in poetry and song.~
=~Only yesterday, I was remarking to Phlydia how enjoyable it is to teach you and share the great works: Rincehtë, Hûneth, Baran, Braig, Teli... Oh! And so many others! But now it's all over, apparently, and I'm just not ready to let go...~
++ ~It's not forward. I've... I've enjoyed our classes, too. And my time with you. What do you propose we do?~ + m5a
++ ~Are you saying you have feelings for me, Cherilane?~ + m5a1
++ ~You're making me feel weird, Cherilane. You know... the age difference and having been my teacher...~ + m5a2
END

IF ~~ THEN BEGIN m5.1
SAY~I know this will sound forward, but the past few years have been wonderful for me. You've come of age... Only yesterday, I was remarking to Phlydia how enjoyable it is to, well, be with you. Even if you didn't enjoy the poetry and songs, teaching you and sharing these great works I love with you has been great. But now it's all over, apparently, and I'm just not ready to let go...~
++ ~It's not forward. I've enjoyed our time together, too. What do you propose we do?~ + m5a
++ ~Are you saying you have feelings for me, Cherilane?~ + m5a1
++ ~You're making me feel weird, Cherilane. You know... the age difference and having been my teacher...~ + m5a2
END

IF ~~ THEN BEGIN m5a
SAY~*Cherilane blushes and laughs a little.* Well! I guess I wasn't expecting such a positive response! You've both surprised and pleased my romantic heart!~
IF ~~ THEN + m5a_01
END

IF ~~ THEN BEGIN m5a1
SAY~*Cherilane blushes.* I... I guess I do, at that. For years, you were only a child. Charming and lovable, but only a babe. And then, a year or two ago, I saw you walking across the garden and my heart seemed to stop in my chest. You were all grown: beautiful and graceful. I've tried to conceal my feelings, of course, as your teacher.~
IF ~~ THEN + m5a_01
END

IF ~~ THEN BEGIN m5a2
SAY~*Cherilane blushes.* Well, I don't mean to make you feel strange. I know there's an age difference between us, although the fact that I'm a half-elf and age much more slowly does make the difference in years more theoretical than actual. And I know that my position as your teacher has made it impossible for me to express my admiration and affection for you...~
IF ~~ THEN + m5a_01
END

IF ~~ THEN BEGIN m5a_01
SAY~I have a book of poetry that never seemed appropriate to share with a student, but which I always thought you'd understand. Now that I'm no longer your teacher, well, I... I know there's an empty room in Candlekeep Inn. Would... would you meet me there? For a last look at some of the poetry I love? Even if you don't like poetry, I want to say farewell the best way I know how--in the words of a beloved poem.~
+~%BGT_VAR% !Global("T1CowMoo","GLOBAL",1)~+ ~Yes.~ + m5b
+~%BGT_VAR% !Global("T1CowMoo","GLOBAL",1)~+ ~No... I'm just not interested.~ + m5b1
+~%BGT_VAR% !Global("T1CowMoo","GLOBAL",1)~+ ~Maybe. I'll have to think about it.~ + m5b2
+~%BGT_VAR% Global("T1CowMoo","GLOBAL",1)~+ ~Yes.~ + m5br
+~%BGT_VAR% Global("T1CowMoo","GLOBAL",1)~+ ~No... I'm just not interested.~ + m5b1r
+~%BGT_VAR% Global("T1CowMoo","GLOBAL",1)~+ ~Maybe. I'll have to think about it.~ + m5b2r
END

IF ~~ THEN BEGIN m5b
SAY~Then I'll see you there. Here's a little gold for killing those rats for me.~
IF ~~ THEN DO ~GiveGoldForce(25) AddexperienceParty(50) EscapeArea() SetGlobal("TICherYes","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN m5b1
SAY~Then I'll guess it'll have to be goodbye here amongst the rodentiae. Here's a little gold for killing those rats for me.~
IF ~~ THEN DO ~GiveGoldForce(25) AddexperienceParty(50) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN m5b2
SAY~Don't feel pressured to do something you don't want to do. I'll wait there awhile in case you decide you want a last goodbye. If not, fare thee well, <CHARNAME>. Oh! And here's a little gold for killing those rats for me.~
IF ~~ THEN DO ~GiveGoldForce(25) AddexperienceParty(50) EscapeArea() SetGlobal("TICherYes","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN m5br
SAY~Then I'll see you there. Here's a little gold for...ummm...taking care of the talking rats for me.~
IF ~~ THEN DO ~GiveGoldForce(25) AddexperienceParty(50) EscapeArea() SetGlobal("TICherYes","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN m5b1r
SAY~Then I'll guess it'll have to be goodbye here amongst the rodentiae. Here's a little gold for...ummm...taking care of those talking rats for me.~
IF ~~ THEN DO ~GiveGoldForce(25) AddexperienceParty(50) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN m5b2r
SAY~Don't feel pressured to do something you don't want to do. I'll wait there awhile in case you decide you want a last goodbye. If not, fare thee well, <CHARNAME>. Oh! And here's a little gold for...ummm...taking care of those talking rats for me.~
IF ~~ THEN DO ~GiveGoldForce(25) AddexperienceParty(50) EscapeArea() SetGlobal("TICherYes","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN m5.2
SAY~Yes... I guess I am crazy. Here's a little gold for taking care of those rats for me. Have a good life, then, <CHARNAME>.~
IF ~~ THEN DO ~GiveGoldForce(25) AddexperienceParty(50) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN m5.2r
SAY~Yes... I guess I am crazy. Here's a little gold for...ummmm...taking care of those talking rats for me. Have a good life, then, <CHARNAME>.~
IF ~~ THEN DO ~GiveGoldForce(25) AddexperienceParty(50) EscapeArea()~ EXIT
END

// 2. Candlekeep Inn

IF ~Global("TICheril","GLOBAL",3) Global("TICherYes","GLOBAL",1)~ THEN BEGIN n1
SAY~You're here. *Smiles.* I half wondered if you would or not.~
++ ~I said I would, didn't I?~ DO ~IncrementGlobal("TICheril","GLOBAL",1)~ + n1a
++ ~I almost didn't.~ DO ~IncrementGlobal("TICheril","GLOBAL",1)~ + n1b
++ ~I can't stay long. Gorion's waiting for me.~ DO ~IncrementGlobal("TICheril","GLOBAL",1)~ + n1c
+ ~PartyHasItem("TIC1SCRL") !Global("TICamLetter","GLOBAL",1)~ + ~Do you recognize this letter, Cherilane?~ + n1d
END

IF ~~ THEN BEGIN n1a
SAY~Yes. You did say that you would meet me. I should have more faith. Getting older makes one a little more cynical and less trusting, you know.~
IF ~~ THEN + n1a_01
END

IF ~~ THEN BEGIN n1b
SAY~Well, you're here now. *Smiles.* I guess I'm just lucky that way.~
IF ~~ THEN + n1a_01
END

IF ~~ THEN BEGIN n1c
SAY~This won't take long, <CHARNAME>. I just want to read you one poem... for the road. Why don't you have a seat on the bed? I have my book right here. I'll read the poem and then you can leave if you want to.~
IF ~~ THEN + n1a_01
END

IF ~~ THEN BEGIN n1d
SAY~*Looking curiously at the letter.* Nope. Can't say that I do. *Laughs.* Whoever wrote this is really in love with this Tamah, though... I wish someone would send ME a letter like this one.~
IF ~~ THEN + n1a_01
END

IF ~~ THEN BEGIN n1a_01
SAY~So... Why don't you have a seat on the bed? I have my book right here.~
++ ~Alright.~ + n2a
++ ~Will you sit down next to me?~ + n2b
++ ~Um... I really should go.~ + n2c
END

IF ~~ THEN BEGIN n2a
SAY~Blessed Oghma! I feel so nervous. *She looks at you intently.* It's so hard right now to remember the child that you were, <CHARNAME>. I'm as giddy as a young girl... Oh well... On to the poem?~
+ ~Gender(Player1,MALE)~ + ~Yes. Go ahead.~ + n3m
+ ~Gender(Player1,FEMALE)~ + ~Yes. Go ahead.~ + n3f
++ ~I'm sorry. I need to leave now!~ + n3m3
END

IF ~~ THEN BEGIN n2b
SAY~*Blushes.* Alright. Heavens, these are narrow beds. I feel so nervous sitting so close to you. *She looks at you intently.* It's difficult right now to remember the child that you were, <CHARNAME>. Listen to me babble; I'm as giddy as a young girl! Oh well... On to the poem?~
+ ~Gender(Player1,MALE)~ + ~As you wish.~ + n3m
+ ~Gender(Player1,FEMALE)~ + ~As you wish.~ + n3f
++ ~I'm sorry. I need to leave now!~ + n3m3
END

IF ~~ THEN BEGIN n2c
SAY~Alright, alright. I won't keep you. Blessed Oghma! *She looks at you intently.* It's so hard right now to remember the child that you were, <CHARNAME>. *She gently reaches out to cup your cheek in her hand.* Oh well... Farewell. Wish me luck in that big world out there.~
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN n3m
SAY~*You notice Cherilane's hand trembling a little as she lifts the book.* This is called 'Love's Philosophy' and it is by Hyalma:~
=~'The fountains mingle with the river,
And the rivers with the ocean;
The winds of heaven mix forever,
With a sweet emotion;~
=~Nothing in the world is single;
All things by a law divine
In one another’s being mingle;
—Why not I with thine?'~
=~*Cherilane, caught up by the verses, leans closer to you.*~
=~See! the mountains kiss high heaven,
And the waves clasp one another;
No sister flower would be forgiven,
If it disdained its brother;
And the sunlight clasps the earth,
And the moonbeams kiss the sea;
—What are all these kissings worth,
If thou kiss not me?'~
=~*Your gazes lock.* May... May I?~
++ ~Yes.~ DO ~SetGlobal("TICherKissed","GLOBAL",1)~ + n3m1
++ ~*Kiss her.*~ DO ~SetGlobal("TICherKissed","GLOBAL",1)~ + n3m1
++ ~Cherilane... I just can't. I have to go.~ + n3m3
END

IF ~~ THEN BEGIN n3f
SAY~*You notice Cherilane's hand trembling a little as she lifts the book.* This is called 'Come Slowly,' and it is by Heruion:~
=~'Come slowly—
Lips unused to thee—
Bashful—sip thy jasmines—
As the fainting bee—
Reaching late the flower,
Round her chamber hums—
Counts the nectars—alights—
And is lost in balms!'~
=~*Cherilane, caught up by the verse, leans closer to you. Your gazes lock.* May... may I?~
++ ~Yes.~ DO ~SetGlobal("TICherKissed","GLOBAL",1)~ + n3m1
++ ~*Kiss her.*~ DO ~SetGlobal("TICherKissed","GLOBAL",1)~ + n3m1
++ ~Cherilane... I just can't. I have to go.~ + n3m3
END

IF ~~ THEN BEGIN n3m1
SAY~*Cherilane's lips are soft and warm. Sweetly, she takes you in her arms and kisses you repeatedly.* Have you thought about me like I've thought about you, <CHARNAME>?~
++ ~Kiss her passionately.~ + n4m1
++ ~Oh yes. *Kiss her back.*~ + n4m1
++ ~Only in the last thirty seconds...~ + n4m2
++ ~Gods above... This feels wrong, but I don't want to stop.~ + n4m2
++ ~Please stop, Cherilane.~ + n4m3
END

IF ~~ THEN BEGIN n4m1
SAY~*You return her kisses. The pressure of your lips opens her mouth to you, warm and sweet. In between caresses, she whispers to you.* Ummm... How I've wanted this...~
++ ~Shall we...?~ + n5m1
+~Gender(Player1,MALE)~+ ~Umm...Cherilane...I don't have a...Do you have any...~ DO ~SetGlobal("TICherSafe","GLOBAL",1)~ + n5m1a
++ ~*Pull her down on the bed.*~ + n5m2
++ ~*Gently end the kiss.*~ + n4m4
++ ~*Pull away.* I've got to stop.~ + n4m3
END

IF ~~ THEN BEGIN n4m2
SAY~*Smiles gently.* I'm not surprised that this is new to you. It's kind of new to me as well. I've taught you literature and music for fifteen years, but thought of you not only as a student, but also as a child for almost all of those years. I only fell in love with the adult that you have become, my dear one, and couldn't make my feelings known until you had ceased to be my pupil. Are you uncomfortable with my words or my actions?~
++ ~Of course not. I was just surprised.~ + n5m1
++ ~I don't know. I need time to think about this.~ + n4m4
++ ~I'm sorry, Cherilane. It does make me uncomfortable.~ + n4m3
END

IF ~~ THEN BEGIN n5m1
SAY~*Cherilane pulls away, looking intently in your eyes. She lays her hands on your shoulders, leaning over you, allowing you a full view of her smooth, softly rounded breasts under her low-cut shirt.* Merciful Oghma, I need to feel you... Do you want to...?~
++ ~Oh gods, yes!~ + n5m2
+~Gender(Player1,MALE)~+~Umm...Cherilane...I don't have a...Do you have any...~ DO ~SetGlobal("TICherSafe","GLOBAL",1)~ + n5m1a
++ ~*Pull her down on the bed.*~ + n5m2
++ ~*Pull away.* No... I shouldn't do this.~ + n4m3
END

IF ~~ THEN BEGIN n5m1a
SAY~*She blushes.* Ummm.... Oh. Yes. Somewhere... *Cherilane rustles in a small bag, finally digging out a small vellum packet and a flask. She hands them to you with a flourish.* Here. Cassil herb tea and a skin. Choke the tea down while I... *She unfastens the closure of her shirt, letting it fall onto the bed. Then, catlike, she stretches, the smooth curves of her breasts rising with her movements. All the while, she looks intently in your eyes and smiles.* Ready now?~
++ ~Oh gods, yes!~ + n5m2
++ ~*Pull her down on the bed.*~ + n5m2
++ ~*Pull away.* No... I shouldn't do this.~ + n4m3
END

IF ~~ THEN BEGIN n5m2
SAY~Sweet Sharess! *Cherilane slim, lithe body falls into bed with you. For a moment, the pair of you tumble together and fumble at each other's clothing. Cherilane unties your laces, sliding her hand down into your breeches.*~
=~*Her hand moves rapidly, caressing you intimately, until you moan with desire.*~
=~Oh <CHARNAME>... Yes, touch me... Oh gods above... You feel so good to me...~
IF ~~ THEN DO ~SetGlobal("TICherSex","GLOBAL",1) SetGlobal("TICherCutScene","LOCALS",1) ClearAllActions() StartCutSceneMode() StartCutScene("TICher1c")~EXIT
END

IF ~Global("TICheril","GLOBAL",4)~ THEN BEGIN n7m1
SAY~*After she draws her clothes back together, Cherilane gently reaches out to cup your cheek in her hand.* You were wonderful, <CHARNAME>... I'll remember this forever. I wish there was more time to spend together, but I think I can finally let you go...  Farewell, my sweet.~
IF ~~ THEN DO ~IncrementGlobal("TICheril","GLOBAL",1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN n4m4
SAY~*Cherilane draws away from you, smiling.* Thank you, my dear one. Your kiss is so sweet.~
IF ~~ THEN + n4m2_01
END

IF ~~ THEN BEGIN n4m3
SAY~*Cherilane nods, smiling sadly at you.* As you wish. Perhaps the intensity of my own feelings have made me misjudge yours. I am sorry. I don't want to force you into doing anything you'd regret.~
IF ~~ THEN + n4m2_01
END

IF ~~ THEN BEGIN n4m2_01
SAY~Oh, <CHARNAME>, I shall miss you. Perhaps our paths will cross again. Until then, take care of yourself.~
++ ~Goodbye, Cherilane.~ + n6m1
++ ~I will.~ + n6m1
++ ~Don't worry about me.~ + n6m1
END

IF ~~ THEN BEGIN n6m1
SAY~*Cherilane gently reaches out to cup your cheek in her hand.* Oh well... Farewell. Wish me luck in that big world out there...~
IF ~~ THEN DO ~IncrementGlobal("TICheril","GLOBAL",1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN n3m3
SAY~Alright, alright. I won't keep you. Blessed Oghma! *She looks at you intently.* It's so hard right now to remember the child that you were, <CHARNAME>. *She gently reaches out to cup your cheek in her hand.* Oh well... Farewell. Wish me luck in that big world out there...~
IF ~~ THEN DO ~IncrementGlobal("TICheril","GLOBAL",1) EscapeArea()~ EXIT
END

// 3. Nashkel Fair

IF ~Global("TICheril","GLOBAL",6)~ THEN BEGIN w1
SAY~Good day, ladies and gentlemen. May I present to you a poem by Baran:~
=~'How do I love thee? Let me count the ways.
I love thee to the depth and breadth and height
My soul can reach, when feeling out of sight
For the ends of being and ideal grace...'~
IF ~~ THEN + w1_01
END

IF ~~ THEN BEGIN w1_01
SAY~Oh! <CHARNAME>! It's you! I'm a bit surprised to see you here. *Smiles.* Although I am delighted as well.~
++ ~I'm surprised and delighted to see you, too! What are you doing here, Cherilane?~ DO ~IncrementGlobal("TICheril","GLOBAL",1)~ + w1a
++ ~I suppose it was inevitable that we meet again.~ DO ~IncrementGlobal("TICheril","GLOBAL",1)~ + w1b
++ ~You aren't following me around, are you?~ DO ~IncrementGlobal("TICheril","GLOBAL",1)~ + w1c
END

IF ~~ THEN BEGIN w1a
SAY~You know, <CHARNAME>, that's a very good question. What AM I doing here? Well, I'm a first-rate bard with a really good voice who once lived in the fabulous library at Candlekeep only a few steps away from the largest repository of printed songs and poetry in Faerun. But what am I doing now? Trying desperately to earn a living, actually. I get paid to read love poetry or sing love songs to the young couples together at the fair.~
IF ~~ THEN + w1a_01
END

IF ~~ THEN BEGIN w1b
SAY~I wouldn't know about inevitable, but my being a performer at a fair does mean I see a lot of people over time. I've met most of the population of Nashkel and learned a lot of little secrets. Did you know, for example, that Berrun Ghastkill has a sweetie on the side that he's trying to keep his wife from meeting? *Laughs.* I'm trying to earn a living, actually. I get paid to read love poetry or sing love songs to the young couples together at the fair.~
IF ~~ THEN + w1a_01
END

IF ~~ THEN BEGIN w1c
SAY~You know, looking at your adventuring party now, if I had ever thought I'd be good at adventuring, I would have joined up with you. But no... our meeting is only coincidental. I'm trying to earn a living, actually. I get paid to read love poetry or sing love songs to the young couples together at the fair.~
IF ~~ THEN + w1a_01
END

IF ~~ THEN BEGIN w1a_01
SAY~I suppose I was lucky when I managed to join a performing troupe here, but sometimes I'm not so sure. The audiences are kind, but standing next to Oopah the Exploding Ogre every day makes this job particularly difficult.~
+~GlobalGT("SPRITE_IS_DEADOOPAH","GLOBAL",0)~+ ~Yeah, we caught that act already.~ + w1a1
+~GlobalLT("SPRITE_IS_DEADOOPAH","GLOBAL",1)~+ ~Oopah explodes?! Oh, we've got to see that!~ + w1a2
+~GlobalLT("SPRITE_IS_DEADOOPAH","GLOBAL",1)~+ ~Oopah explodes?! Nasty!~ + w1a3
++ ~Maybe you should think about a different line of work.~ + w1a4
++ ~Eh! Suck it up! Be glad you have work. The iron crisis has been hard on everybody.~ + w1a5
END

IF ~~ THEN BEGIN w1a1
SAY~Ugh. It's bad enough to see it once, but I've seen it dozens of time. Any of us who get too close get sprayed with ogre gore! I was once in the middle of a ballad and got blood in my mouth... Yuck!~
IF ~~ THEN + w1a1_01
END

IF ~~ THEN BEGIN w1a2
SAY~You... you WANT to see an ogre explode? Ick. I guess you get used to gore if you're an adventurer.~
IF ~~ THEN + w1a1_01
END

IF ~~ THEN BEGIN w1a3
SAY~I'm glad someone else thinks it's nasty. Have you ever seen a spleen up close? Oh... yes, I guess you have. Anyway, it's disgusting.~
IF ~~ THEN + w1a1_01
END

IF ~~ THEN BEGIN w1a4
SAY~It's kind of hard, actually. Maybe Candlekeep's peaceful atmosphere spoiled me for normal bardic work. Of course, getting sprayed with ogre flesh repeatedly every day bothers me greatly.~
IF ~~ THEN + w1a1_01
END

IF ~~ THEN BEGIN w1a5
SAY~You sound like my boss. I made the mistake once of asking to work in a different area from Oopah. He told me that when I make more money than Oopah, I can pick my favorite spot. If I complain again, he'd reassign me to wander like Lord Binky. Ugh!~
IF ~~ THEN + w1a1_01
END

IF ~~ THEN BEGIN w1a1_01
SAY~*Cherilane casts a nervous glance behind her.* I shouldn't say anything negative about it. It draws large crowds, I'm afraid. My boss particularly likes it, too. But enough about that. How have you been doing?~
++ ~I've been doing well, all things considered. I'm still alive, I've gained friends, and I have the mystery of the fragile iron to figure out...~ + w2a
++ ~Oh, I've been followed and attacked by assassins since Candlekeep. I'm lucky I'm still alive.~ + w2b
++ ~Badly. Gorion was killed on the road out of Candlekeep. I don't know how I managed to get away, but I did.~ + w2c
END

IF ~~ THEN BEGIN w2a
SAY~*Cherilane tilts her head and looks keenly at you.* I'm glad you feel that way. I admit I've spent much of my time thinking about the past.~
+~Global("TICherKissed","GLOBAL",1)~+ ~Me, too. I especially remember that last kiss.~ + w3a
+~Global("TICherSex","GLOBAL",1)~+ ~Me, too. I've missed the feel of your body.~ + w3a
++ ~Me, too. Everything I've done seems to have consequences, you know?~ + w3c
++ ~I try not to think about the past. The future is far more interesting AND you can do something about it as well!~ + w3d
END

IF ~~ THEN BEGIN w2b
SAY~Assassins! And here I am, complaining about Oopah!? Does Gorion know?~
++ ~Gorion was killed in one of the attacks, Cherilane. I suspect that he was trying to protect me from these killers when we left Candlekeep.~ + w2c
++ ~Gorion's dead, Cherilane. I can't bear to think about it...~ + w2c
++ ~I'd rather not talk about him, if you don't mind.~ + w3e
END

IF ~~ THEN BEGIN w2c
SAY~By all the gods! Do you know who the killers were?~
++ ~I haven't recognized any of the killers, no. ~ + w2f
++ ~Weirdly, I think Gorion did recognize one of them. But his knowledge died with him.~ + w2f
++ ~There have been multiple attacks, so I think they're related. Anyway, I've been able to kill all but one of them. Sooner or later, whoever is behind these will make their purpose clear.~ + w2f
END

IF ~~ THEN BEGIN w3e
SAY~I sense that something truly bad has happened to him. But, if you don't want to discuss it, that's fine with me. I'm sorry that you're hurting.~
IF ~~ THEN + w3e_01
END

IF ~~ THEN BEGIN w2f
SAY~I know that I can never make up for the loss of Gorion in your life with mere words, but I do want to say that I had a lot of affection and respect for the man. You should cherish the good memories you have.~
IF ~~ THEN + w3e_01
END

IF ~~ THEN BEGIN w3e_01
SAY~I want you to know that I'm here for you. There may not be much I can do, but I'll do what I can for you! *Sigh.* I admit I've spent much of my time lately thinking about the past.~
+~Global("TICherKissed","GLOBAL",1)~+ ~Me, too. I especially remember that last kiss.~ + w3a
+~Global("TICherSex","GLOBAL",1)~+ ~Me, too. I've missed the feel of your body.~ + w3a
++ ~Me, too. Everything I've done seems to have consequences, you know?~ + w3c
++ ~I try not to think about the past. The future is far more interesting AND you can do something about it as well!~ + w3d
END

IF ~~ THEN BEGIN w3a
SAY~*Blushing.* You make me wish I had my own, separate quarters. I'd love to spend a few moments with you before the road draws you away from me again. But the only place where I can get away from the gruesome reality of work is to go into the Black Lotus tent.~
++ ~Black Lotus? You aren't taking Black Lotus, are you?~ + w4a
++ ~I guess they wouldn't know what we were up to...~ + w4b
++ ~Black Lotus... Ick. No.~ + w4c
END

IF ~~ THEN BEGIN w4a
SAY~No, of course not... Not usually, anyway. I only go in there when a customer wants me to sing them to 'sleep,' so to speak. And then sometimes they want me to have some, too. Weirdly, it's kind of peaceful. But I shouldn't have brought that up. I guess we should say our goodbyes here...~
++ ~I guess so. Come here and give me a kiss...~ + w5a
++ ~Oh, it's alright. We can go there... If they're really asleep, that is.~ + w4b
++ ~Sounds like somebody needs a hug...~ + w5b
++ ~*Offer your hand for a handshake.* Put 'er there!~ + w5c
END

IF ~~ THEN BEGIN w4c
SAY~Well, then, <CHARNAME>, I guess we must say our goodbyes.~
++ ~I guess so. Come here and give me a kiss...~ + w5a
++ ~Sounds like somebody needs a hug...~ + w5b
++ ~*Offer your hand for a handshake.* Put 'er there!~ + w5c
END

IF ~~ THEN BEGIN w3c
SAY~Oh yes. That's an important lesson. That which has gone before always affects our present life. Ugh. I have to get back to work.~
IF ~~ THEN + w3c_01
END

IF ~~ THEN BEGIN w3d
SAY~Hmmm. The future. I guess that's a lesson I should learn as well. If I forget about having seen Oopah's innards fifty thousand times and focus instead on the future, then I might not be as bothered about having to stand next to him.~
IF ~~ THEN + w3c_01
END

IF ~~ THEN BEGIN w3c_01
SAY~Come here, <CHARNAME>. We're no longer student and teacher. Would it be okay for me to give you a kiss?~
++ ~I'd like that.~ + w5a
++ ~How about a hug, instead?~ + w5b
++ ~*Offer your hand for a handshake.* Put 'er there!~ + w5c
END

IF ~~ THEN BEGIN w5a
SAY~*Cherilane gently kisses you on the forehead, then, the lips. Her touch is light, but intense. As she kisses you, her hands clasp you tightly to her, her body yearning for you.* I wish I had someplace for us to go. No, sweet <CHARNAME>, I'll just have to wait for the future to bring you back to me. But not here. I'm done with exploding ogres. Farewell.~
IF ~~ THEN DO ~SetGlobal("TICherKissed","GLOBAL",1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN w5b
SAY~*Cherilane takes you in her arms and gives you a firm body hug. In her embrace, you can sense her yearning for more. But, before you pull away, she gently kisses you on the lips.* Oh, sweet <CHARNAME>, I'll just have to wait for the future to bring you back to me. But not here. I'm done with exploding ogres. Farewell.~
IF ~~ THEN DO ~SetGlobal("TICherKissed","GLOBAL",1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN w5c
SAY~*Cherilane laughs, takes your hand, and pulls you into a firm body hug. In her embrace, you can sense her yearning for more.* Oh, sweet <CHARNAME>, I'll just have to wait for the future to bring you back to me. But not here. I'm done with exploding ogres. I'm going to go talk to the Carnival boss. Farewell.~
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN w4b
SAY~Everyone in there is pretty much dead to the world. Even if they seem awake, they're stuck in hallucinatory dreams. I guess I should explain a bit. I'm not an addict like the folks you'll see in there. I only go in there when a customer wants me to sing them to 'sleep,' so to speak. Sometimes they want me to have some, too, but that's rare. Weirdly, it's kind of peaceful. But I shouldn't have brought that up. Will you come with me, then? I mean... I just want the chance to touch you. I'll contain my enthusiasm.~
++ ~Okay. Where is it?~ + w6a
++ ~Don't you dare! I want you... Where is it?~ + w6a
++ ~I... I think I'd rather say goodbye out here.~ + w5b
END

IF ~~ THEN BEGIN w6a
SAY~It's a round tent at the far north eastern corner of the fairground. Past the private tents and the firepit, there's a logpile and a caravan wagon. You can't miss it.~
IF ~~ THEN DO ~SetGlobal("TICherTent","GLOBAL",1) MoveToPoint([4786.2278]) Wait(2) EscapeArea()~ EXIT
END

// 3a. Black Lotus Tent

IF ~See(Player2) Global("TICherTent","GLOBAL",2)~ THEN BEGIN t1
SAY~Ummm... Can your party wait outside?~
IF ~~ THEN EXIT
END

IF ~!See(Player2) Global("TICherTent","GLOBAL",2)~ THEN BEGIN t2
SAY~Well, <CHARNAME>, here we are. I know it's a bit creepy to be surrounded by sleeping addicts, but it's the one place I know where we can talk privately for a few moments without being disturbed...~
++ ~Are you sure there isn't anywhere else we could go?~ DO ~IncrementGlobal("TICherTent","GLOBAL",1)~ + t2a
++ ~Promise me that you won't become like these... err... people around us.~ DO ~IncrementGlobal("TICherTent","GLOBAL",1)~ + t2b
++ ~It doesn't bother me. What's on your mind, Cherilane.~ DO ~IncrementGlobal("TICherTent","GLOBAL",1)~ + t2c
END

IF ~~ THEN BEGIN t2a
SAY~I wish I did. I share a tent with two other bards and an illusionist. I don't want to have them gossiping about us. *She gestures around her.* These people, at least, won't gossip.~
++ ~What would they be gossiping about, hmmm?~ + t2a1
++ ~True. So what's on your mind, Cherilane?~ + t2c
++ ~They look like they're dead. What is Black Lotus?~ + t2a3
END

IF ~~ THEN BEGIN t2a1
SAY~*Cherilane smiles, her eyes crinkling with pleasure.* About me and my attractive, brave, and noble companion. There... there hasn't been anyone in my life in so long...~
++ ~You know you'll always have me. We have a special relationship, you know.~ + t2a1a
++ ~Do you want to come with me? Join my party?~ + t2a1b
++ ~Well, you are a little... um... unconventional.~ + t2a1c
END

IF ~~ THEN BEGIN t2a1a
SAY~I know. *Sigh.* But... I'll be honest, <CHARNAME>, sometimes I wish I could have just the normal kind of relationship with you.... No 'special destinies' or teacher/student awkwardness...~
IF ~~ THEN + t2a1a_01
END

IF ~~ THEN BEGIN t2a1b
SAY~*Cherilane shakes her head.* I wish I could. I'm just not brave enough to face danger like you do, though. I'd end up being a burden to you. No, it's better this way. Someday, maybe, when we're both settled, we could... Oh, what a silly daydream!~
IF ~~ THEN + t2a1a_01
END

IF ~~ THEN BEGIN t2a1a_01
SAY~*Cherilane sits down on an empty pallet.* Come, sit down here with me...~
++ ~Okay.~ + t2a1a1
++ ~Ummm. Cozy.~ + t2a1a2
++ ~I think I'd better go now, Cherilane.~ + t2a1a3
END

IF ~~ THEN BEGIN t2a1c
SAY~Why do you say that? *Laughs bitterly.* Maybe because I seduce my students? And take them to such pleasant places as druggie tents? Maybe this was a mistake. You can go if you want.~
++ ~I think I will.~ + t2a1c1
++ ~Wait, Cherilane. Let's not argue. You're doing the best you can.~ + t2c
END

IF ~~ THEN BEGIN t2a1a1
SAY~It feels nice to be close to you. For years, I saw you and taught you music and poetry every day. We spent time together in the garden, practicing old songs, and hours in the library, researching topics to write new ones. And then, all of a sudden, you were gone and I was fired... Ugh. What a horrible memory.~
IF ~~ THEN + t2a1a2_01
END

IF ~~ THEN BEGIN t2a1a2
SAY~Yes! Amazingly so, given where it is and what it's used for. I love being this close to you, by the way. I was your teacher for... oh my... fifteen years. Remember those days we practiced singing the old songs and reciting the old legends in the garden? It feels now like those days were merely a dream...~
IF ~~ THEN + t2a1a2_01
END

IF ~~ THEN BEGIN t2c
SAY~Thank you for saying that. We're both doing our best in a world that won't let us alone.~
IF ~~ THEN + t2a1a2_01
END

IF ~~ THEN BEGIN t2a1a2_01
SAY~*Cherilane takes you in her arms and gently pulls you down onto an empty pallet and against her slim body.* I've just missed you terribly. That's all. I've dreamt about touching you... holding you...~
++ ~Well, I'm here now.~ + t2c1
++ ~*Kiss her.*~ + t2c2
++ ~*Push her away.* I... I can't. This is too weird.~ + t2a1a3
++ ~*Touch her cheek.* I'm sorry, Cherilane. I just don't feel the same way you do.~ + t2a1a4
END

IF ~~ THEN BEGIN t2a3
SAY~*Cherilane looks around, nodding a little.* I know. It's very strong; it makes you dream vividly. The downside, of course, is that you have a terrible hangover when you wake up and crave it terribly. You can end up dreaming your life away. But enough about that. Do... do you ever think about us? Or miss me?~
++ ~Of course I do. Especially at night.~ + t2c
++ ~I suppose. A little.~ + t2c
++ ~I've had other things on my mind... like assassins and Gorion's death.~ + t2a3c
END

IF ~~ THEN BEGIN t2a3c
SAY~Yeah... You said as much outside. I shouldn't be so concerned with my importance in your life... *Laughs bitterly.* Maybe this was a mistake. You can go if you want.~
++ ~I think I will.~ + t2a1c1
++ ~Wait, Cherilane. Let's not argue. You're doing the best you can.~ + t2c
END

IF ~~ THEN BEGIN t2b
SAY~*Shudders.* That's an easy promise. I don't want to ever become like these people. Trust me... I've only used a couple of times when I was asked to. I don't have a habit. Really.~
++ ~If you say so.~ + t2c
++ ~*Sigh.* I don't believe you. It's too easy to develop a taste for these kind of drugs.~ + t2b2
++ ~These people... they look like they're dead. What is Black Lotus?~ + t2a3
END

IF ~~ THEN BEGIN t2b2
SAY~I understand your concerns, but I'm not an addict. Really. Come here... Be with me... *Cherilane takes you in her arms and gently pulls you down onto an empty pallet and against her slim body.* I've missed you terribly. That's all. I've dreamt about touching you... holding you...~
++ ~Well, I'm here now.~ + t2c1
++ ~*Kiss her.*~ + t2c2
++ ~*Push her away.* I... I can't. This is too weird.~ + t2a1a3
END

IF ~~ THEN BEGIN t2a1c1
SAY~This... this was a mistake, <CHARNAME>. I'd better go. Take care of yourself and maybe we'll meet later under better conditions. I'm going to go talk to the Carnival boss. I just can't take Oopah any longer. Farewell.~
IF~~THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN t2a1a3
SAY~This... this was a mistake, <CHARNAME>.~
IF ~~ THEN + t2a1a3_01
END

IF ~~ THEN BEGIN t2a1a4
SAY~It's okay, <CHARNAME>. I understand. I'd be honored if you and I could still be friends, though...~
IF ~~ THEN + t2a1a3_01
END

IF ~~ THEN BEGIN t2a1a3_01
SAY~*The pair of you stand up, awkwardly dusting off your clothes.* I'd better go. Take care of yourself and maybe we'll meet again under better conditions. I'm going to go talk to the Carnival boss. I just can't take Oopah any longer. Farewell.~
IF~~THEN DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN t2c1
SAY~Yes. You are here now. It's wonderful to feel you so close to me... To feel your heart beating and hear your breathing. Gods, I could be like this forever.~
+~Gender(Player1,MALE)~+ ~It can be better than this. We can do more. We don't have to get completely undressed.~ + t2c1am
+~Gender(Player1,FEMALE)~+ ~It can be better than this. We can do more. We don't have to get completely undressed.~ + t2c1af
++ ~Yes. This is very peaceful.~ + t2c1b
++ ~I... I need to get up now.~ + t2a1a3
END

IF ~~ THEN BEGIN t2c2
SAY~*Cherilane returns your kisses intensely. Her hands start to rove up and down your body, caressing, squeezing, and stroking.* Oh darling, I long to feel your bare skin against mine, but not here. Not now. Let us just be together for a few moments.~
+~Gender(Player1,MALE)~+ ~It can be better than this. We can do more. We don't have to get completely undressed.~ + t2c1am
+~Gender(Player1,FEMALE)~+ ~It can be better than this. We can do more. We don't have to get completely undressed.~ + t2c1af
++ ~Yes. This is very peaceful.~ + t2c1b
++ ~I... I need to get up now.~ + t2a1a3
END

IF ~~ THEN BEGIN t2c1am
SAY~*Cherilane looks deeply into your eyes.* I'll confess... I'm not prepared. But I want you so much... Can you be careful?~
++ ~Yes.~ + t2c1am.1
++ ~We'd better just hold each other.~ + t2c1b
++ ~I... I need to get up now.~ + t2a1a3
END

IF ~~ THEN BEGIN t2c1am.1
SAY~*Cherilane smiles wickedly, but says nothing. Instead, she lets her hands express her desire for you. Caressing, kissing, and clasping each other tightly, you make the most of your circumstances. The friction of your bodies against each other and the dextrous movements of your fingers shoving aside clothing as needed permit a pleasure heightened by the sense of being watched.* Gods, this is delicious, <CHARNAME>. Don't stop... I hear Tyelde's lines:~
=~'Licence my roving hands, and let them go,
Before, behind, between, above, below.
O my Maztica! my new-found-land,
My kingdom, safeliest when with one man mann'd,
My Mine of precious stones, My Empirie,
How blest am I in this discovering thee!
To enter in these bonds, is to be free;
Then where my hand is set, my seal shall be.'~
IF ~~ THEN DO ~IncrementGlobal("TICherSex","GLOBAL",1) IncrementGlobal("TICherSafe","GLOBAL",-1) SetGlobal("TICheriTentAfterTalk","LOCALS",1) ClearAllActions() StartCutSceneMode() StartCutScene("TICher1c")~EXIT
END

IF ~~ THEN BEGIN t2c1af
SAY~*Cherilane smiles wickedly, but says nothing. Instead, she lets her hands express her desire for you. Caressing, kissing, and clasping each other tightly, you make the most of your circumstances. The friction of your bodies against each other and the dextrous movements of your fingers shoving aside clothing as needed permit a pleasure heightened by the sense of being watched.* Gods, this is delicious, <CHARNAME>. Don't stop... I hear Teli's lines:~
=~'Lady,i will touch you with my mind.
Touch you and touch and touch
until you give
me suddenly a smile,shyly obscene
(lady i will
touch you with my mind.)Touch
you,that is all.'~
IF ~~ THEN DO ~IncrementGlobal("TICherSex","GLOBAL",1)SetGlobal("TICheriTentAfterTalk","LOCALS",1) ClearAllActions() StartCutSceneMode() StartCutScene("TICher1c")~EXIT
END

IF ~Global("TICheriTentAfterTalk","LOCALS",1) Global("TICherEndTent","GLOBAL",0)~ THEN BEGIN t4
SAY~*After your mutual pleasure, Cherilane holds you close.* Oh, <CHARNAME>, I don't want to let you go, but our time has once again drawn to a close... *The two of you stand up, adjusting and brushing dust from each others' clothing. Cherilane kisses you once more.* Farewell, my sweet. May the gods let us meet again when we can be together.~
IF ~~ THEN DO ~SetGlobal("TICherEndTent","GLOBAL",1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN t2c1b
SAY~*You and Cherilane lie together for awhile, hands joined, merely enjoying each other's presence. Cherilane begins to recite a poem.* This is by Hûneth:~
=~'And when I left you, I was so on fire
with all your brilliant & ironic humor
that after dinner I was still excited,
and sleep refused to touch my eyes with quiet.
In bed & totally unstrung by passion,
tossing in agony, I prayed for sunrise,
when I could be with you in conversation.
But when my limbs, exhausted by their labor,
lay on the bed in nearly fatal stillness,
I made this poem for you, my beloved...'~
=~Once again, I find myself wishing that we had more time. But, my dear, I'm afraid we must again part. *The two of you awkwardly get up, dusting off each others' clothing. She kisses you once again, smiling.* I'm still glad I've been able to see you. Perhaps... perhaps the future will permit us a better place. I'm going to go talk to the Carnival boss. I just can't take Oopah any longer. Go with my blessing, <CHARNAME>.~
IF ~~ THEN DO ~EscapeArea()~ EXIT
END

// 4. Cloakwood Mines

IF ~Global("TICheril","GLOBAL",8)~ THEN BEGIN y1
SAY~*Dazed.* Uhhh.... Don't touch me, you... you.. Uhhh... Who's that? <CHARNAME>? No, I must still be dreaming.~
++ ~Wake up, Cherilane!~ DO ~IncrementGlobal("TICheril","GLOBAL",1)~ + y1a
++ ~You're not dreaming! It's me!~ DO ~IncrementGlobal("TICheril","GLOBAL",1)~ + y1a
++ ~*Shake her.*~ DO ~IncrementGlobal("TICheril","GLOBAL",1)~ + y1a
END

IF ~~ THEN BEGIN y1a
SAY~<CHARNAME>! It IS you!! *Shaking her head.* That monster, Davaeorn, has been drugging me. I... I can't think straight...~
++ ~What are you doing here? You WERE at Nashkel Fair last time we met!~ + y1b
++ ~Are you alright?~ + y1c
++ ~The way out is clear, if you think you can make it.~ + y1d1
END

IF ~~ THEN BEGIN y1b
SAY~It's a pitiful story, <CHARNAME>. Another bard, Canticle, and I decided that we'd had enough of Nashkel Fair, so we hit the road to travel to Baldur's Gate. I have a friend who works at the Ducal Palace and I thought we might be able to get work there.~
IF ~~ THEN + y1b_01
END

IF ~~ THEN BEGIN y1c
SAY~I ache all over, <CHARNAME>, and I feel foggy from the Black Lotus. Davaeorn has been making me sing... He calls me 'his songbird' *Shudders.* It's such a pitiful story. Another bard, Canticle, and I decided that we'd had enough of Nashkel Fair, so we hit the road to travel to Baldur's Gate. I have a friend who works at the Ducal Palace and I thought we might be able to get work there.~
IF ~~ THEN + y1b_01
END

IF ~~ THEN BEGIN y1b_01
SAY~Anyway, we were attacked and captured by bandits. They brought us here. Canticle is somewhere above in the mines. But me...  *laughs bitterly.* They saved the best for me. Seems they'd heard my singing at the Fair and decided their boss, Davaeorn, would want me...~
=~Down, down, down into the hell-hole went I. They've been regularly force-feeding me Black Lotus. When I'm awake, I've been...performing... Spells that he's written into songs; Davaeorn's obsessed with the idea of combining the magics of wizardry and bardsong. He has his thugs hurt me when I don't get the songs exactly right. And when I'm asleep, he invades my dreams.~
=~I MUST leave here, <CHARNAME>. Is... is the way out...~
++ ~Did Davaeorn succeed in combining spells and bardsong?~ + y1calt
++ ~Littered with bodies. You'll see which way to go.~ + y1c1
++ ~The way out is clear, if you think you can make it.~ + y1d1
++ ~Let me help you, Cherilane. We've got gold, healing potions... We can even escort you out...~ + y1e
END

IF ~~ THEN BEGIN y1calt
SAY~I don't know. If he did, though, he took his secrets with him. And I don't want to think about him anymore anyway. What about the way out?~
++ ~It's littered with bodies. You'll see which way to go.~ + y1c1
++ ~The way out is clear, if you think you can make it.~ + y1d1
++ ~Let me help you, Cherilane. We've got gold, healing potions... We can even escort you out...~ + y1e
END

IF ~~ THEN BEGIN y1c1
SAY~*Cherilane closes her eyes, rubs them briskly, and then opens them again.* I have to find Canticle and leave here. Farewell, my sweet hero. I thought my life was over, but I see now that our destinies are somehow entwined.~
IF ~~ THEN + y1e1a_01
END

IF ~~ THEN BEGIN y1d1
SAY~I... I don't know. *Cherilane closes her eyes, rubs them briskly, and then opens them again.* Yessss... I think I'd better go. This place is so horrible! One of the other bards, Canticle, and I hit the road for Baldur's Gate after he got smacked with flying ogre liver. But then Davaeorn's soldiers caught us on the road. He's somewhere in the mines above us... I'll see if I can find him.~
IF ~~ THEN + y1e1a_01
END

IF ~~ THEN BEGIN y1e
SAY~Bless you for freeing me; for wanting to help me. But I don't need an escort. I'm stronger than that.~
+ ~Class(Player1,CLERIC)~ + ~But I have the healing touch. Will you allow me to cast a spell?~ DO ~ActionOverride(Player1,ReallyForceSpell("TICher",CLERIC_CURE_LIGHT_WOUNDS))~ + y1e1a
+ ~Class(Player1,FIGHTER_CLERIC)~ + ~But I have the healing touch. Will you allow me to cast a spell?~ DO ~ActionOverride(Player1,ReallyForceSpell("TICher",CLERIC_CURE_LIGHT_WOUNDS))~ + y1e1a
+ ~Class(Player1,CLERIC_THIEF)~ + ~But I have the healing touch. Will you allow me to cast a spell?~ DO ~ActionOverride(Player1,ReallyForceSpell("TICher",CLERIC_CURE_LIGHT_WOUNDS))~ + y1e1a
+ ~Class(Player1,CLERIC_MAGE)~ + ~But I have the healing touch. Will you allow me to cast a spell?~ DO ~ActionOverride(Player1,ReallyForceSpell("TICher",CLERIC_CURE_LIGHT_WOUNDS))~ + y1e1a
+ ~Class(Player1,DRUID)~ + ~But I have the healing touch. Will you allow me to cast a spell?~ DO ~ActionOverride(Player1,ReallyForceSpell("TICher",CLERIC_CURE_LIGHT_WOUNDS))~ + y1e1a
+ ~PartyHasItem("%tutu_var%POTN08")~ + ~I have a potion of healing. Will you let me put it on you?~ DO ~TakePartyItem("%tutu_var%POTN08")~ + y1e1b
+ ~PartyHasItem("%tutu_var%POTN52")~ + ~I have a potion of extra healing. Will you let me put it on you?~ DO ~TakePartyItem("%tutu_var%POTN52")~ + y1e1b
+ ~PartyHasItem("%tutu_var%BW02PO03")~ + ~I have a bottle of healing elixir. Will you let me put it on you?~ DO ~TakePartyItem("%tutu_var%BW02PO03")~ + y1e1b
++ ~I have some curative herbs. Will you let me dress your wounds?~ + y1e1c
++ ~Take this gold, then. Are you sure you don't need an escort? We'd be happy to do it.~ + t5
END

IF ~~ THEN BEGIN y1e1a
SAY~Thank you, <CHARNAME>.~
IF ~~ THEN + y1e1a_01
END

IF ~~ THEN BEGIN y1e1b
SAY~Very well. *Cherilane sits on the bed with you. You pop open a bottle of healing potion, pouring it in her palms so that she can apply it wherever she likes. As the bruises and gouges fade to nothingness, Cherilane sighs softly.* That's a welcome relief.~
IF ~~ THEN + y1e1a_01
END

IF ~~ THEN BEGIN y1e1c
SAY~Very well. *Cherilane sits on the bed with you. You open a packet of powdered healing herbs, mixing it with some water, and pouring the resulting liquid into her palms so that she can apply it however she likes. As the bruises and gouges fade to nothingness, Cherilane sighs softly.* That's a welcome relief.~
IF ~~ THEN + y1e1a_01
END

IF ~~ THEN BEGIN y1e1a_01
SAY~You know, every day since I was captured and imprisoned here I prayed for some kind of release. Even death seemed preferable to living in this darkness. Even now, my muses call to me. Braig says:
'The vilest deeds like poison weeds
  Bloom well in prison-air:
It is only what is good in Man
  That wastes and withers there:
Pale Anguish keeps the heavy gate,
  And the Warder is Despair

For they starve the little frightened child
  Till it weeps both night and day:
And they scourge the weak, and flog the fool,
  And gibe the old and grey,
And some grow mad, and all grow bad,
And none a word may say.

Each narrow cell in which we dwell
  Is foul and dark latrine,
And the fetid breath of living Death
  Chokes up each grated screen,
And all, but Lust, is turned to dust
  In Humanity’s machine.'~
IF ~~ THEN + t5
END

IF ~~ THEN BEGIN t5
SAY~But enough of this sadness. I am free! *Cherilane kisses you one final time.* You are kind. Farewell, again. If I'm lucky, I will have gotten work in the Ducal palace at Baldur's Gate. If I'm not there, look for Geoff. He'll be there and will know where I am.~
IF ~~ THEN DO ~TakePartyGold(20) EscapeArea()~ EXIT
END

// 5. Ducal Palace

IF ~Global("TICheril","GLOBAL",10)~ THEN BEGIN z1
SAY~So. Once again we meet, <CHARNAME>. It is wonderful to see you, as always. *Laughs.* If, that is, you're really you and not one of those dopplegangers.~
++ ~No doppleganger would be as happy to see you as I am.~ DO ~IncrementGlobal("TICheril","GLOBAL",1)~ + z1a
++ ~I could say the same thing to you, Cherilane.~ DO ~IncrementGlobal("TICheril","GLOBAL",1)~ + z1b
++ ~Hello, my dear. *Kiss her.*~ DO ~IncrementGlobal("TICheril","GLOBAL",1)~ + z1c
END

IF ~~ THEN BEGIN z1a
SAY~Oh, <CHARNAME>! My heart is full upon seeing your face again. It is also saddened.~
IF ~~ THEN + z1a_01
END

IF ~~ THEN BEGIN z1b
SAY~Indeed. You could. But I have something to tell you that I think might be unknown to any doppleganger.~
IF ~~ THEN + z1a_01
END

IF ~~ THEN BEGIN z1c
SAY~*For the first time in your experience, Cherilane's kiss is slow and hesitant. She breaks it off almost immediately.* I have something I need to tell you. Something, I think, no doppleganger would know to say.~
IF ~~ THEN + z1a_01
END

IF ~~ THEN z1a_01
SAY~I have news that I must deliver to you.~
++ ~I'm not sure I want to know, given how bad news seems to follow my steps...~ + z1a1
++ ~What is it?~ + z1a2
++ ~What? That we don't have much time together? From here on, that'll change. Somehow, I want you with me.~ + z1a3
END

IF ~~ THEN BEGIN z1a1
SAY~I suspect bad news will continue to follow you until you discover why the Iron Throne wants you dead. But I think you need to know this news. I'm going away to Waterdeep with Canticle. His family lives there and it's safer for me. I'm going to need their help in awhile.~
IF ~~ THEN + z1a1_01
END

IF ~~ THEN BEGIN z1a2
SAY~I'm going away to Waterdeep with Canticle. His family lives there and it's safer for me. I'm going to need their help in awhile.~
IF ~~ THEN + z1a1_01
END

IF ~~ THEN BEGIN z1a3
SAY~<CHARNAME>, there was a time when I would have loved to hear those words from you. I would have loved to be with you. But we both know that you won't be safe until you find out why the Iron Throne wants you dead. I'm going away to Waterdeep with Canticle. His family lives there and it's safer for me. I'm going to need their help in awhile.~
IF ~~ THEN + z1a1_01
END

IF ~~ THEN BEGIN z1a1_01
SAY~ Ah, <CHARNAME>, I have never said so before, but I want you to know that I love you with all my heart.~
++ ~I love you too. But... but why are you leaving? I... I could take care of you.~ + z1a1a
++ ~Oh, Cherilane. I know you do and I'm grateful for it. If you're determined to go, I suppose I could come see you there. Maybe live there, too.~ + z1a1a
++ ~Are you sure? I mean, it sounds safer in Waterdeep, but that's so far away.~ + z1a1c
END

IF ~~ THEN BEGIN z1a1a
SAY~No, <CHARNAME>. I already know I can't live the life you lead; surely you also know you can't just decide to abandon your quest to take care of me. This really is... must be... goodbye this time. At least for awhile.~
IF ~~ THEN + z1a1a_01
END

IF ~~ THEN BEGIN z1a1c
SAY~I know what you mean. My heart also wishes it wasn't such a good idea to leave here. But Waterdeep would be a good place to start over. This really is the end this time. At least for awhile.~
IF ~~ THEN + z1a1a_01
END

IF ~~ THEN BEGIN z1a1a_01
SAY~ You see, I'm pregnant. And I want the baby. I sense that your path in life cannot be abandoned yet, even if you wanted to leave it.~
+~Gender(Player1,MALE) GlobalGT("TICherSex","GLOBAL",0) GlobalGT("TICherSafe","GLOBAL",0)~ + ~But we were careful!~ + z1a1a1alt
+~Gender(Player1,MALE) GlobalGT("TICherSex","GLOBAL",0) GlobalLT("TICherSafe","GLOBAL",1)~ + ~Is... is it mine?~ + z1a1a1
+~Gender(Player1,FEMALE) GlobalGT("TICherSex","GLOBAL",0)~+ ~*sigh.* If only our love could have made that child... Who...?~ + z1a1a2
+~Gender(Player1,MALE) GlobalGT("TICherSex","GLOBAL",0) GlobalGT("TICherSafe","GLOBAL",0)~+ ~By all the gods! My dear, dear Cherilane! Who...?~ + z1a1a3
+~Gender(Player1,MALE) GlobalGT("TICherSex","GLOBAL",0) GlobalLT("TICherSafe","GLOBAL",1)~+ ~By all the gods! My dear, dear Cherilane! Who...?~ + z1a1a3
+~Global("TICherSex","GLOBAL",0)~+ ~By all the gods! My dear, dear Cherilane! Who...?~ + z1a1a3a
+~Gender(Player1,FEMALE) GlobalGT("TICherSex","GLOBAL",0)~+ ~By all the gods! My dear, dear Cherilane! Who...?~ + z1a1a3b
+~Gender(Player1,MALE) GlobalGT("TICherSex","GLOBAL",0) GlobalGT("TICherSafe","GLOBAL",0)~+ ~Cherilane, we can get through this. Let me take care of you.~ + z1a1a4alt
+~Gender(Player1,MALE) GlobalGT("TICherSex","GLOBAL",0) GlobalLT("TICherSafe","GLOBAL",1)~+ ~Cherilane, we can get through this. Let me take care of you.~ + z1a1a4
+~Global("TICherSex","GLOBAL",0)~+ ~Cherilane, we can get through this. Let me take care of you.~ + z1a1a4a
+~Gender(Player1,FEMALE) GlobalGT("TICherSex","GLOBAL",0)~+ ~Cherilane, we can get through this. Let me take care of you.~ + z1a1a4b
END

IF ~~ THEN BEGIN z1a1a1
SAY~I... I hope so. But there's a complication. *Cherilane pauses for a long time.* Canticle--the other bard you rescued from the mine--wishes to claim the baby. He says we were lovers before you and I were reunited at Nashkel Carnival. Since the Black Lotus Davaeorn's men gave me took many of my memories away, I don't know if he's telling the truth. If the baby looks like you... You and I, gods willing, can decide what to do then. I'm willing to wait and see. I've always wanted children and this one, well, it will be loved.~
=~But you mustn't let my condition distract you. I love you. But I sense you future will take you many places far away from here.~
=~*Cherilane comes close to you, gently kissing your cheek.* Be well, my darling <CHARNAME>. I will think of you often. And, if the child is a boy, I will name him after you. Gelirion says:~
=~'I hold it true, whate'er befall;
I feel it when I sorrow most;
'Tis better to have loved and lost
Than never to have loved at all.'~
IF ~~ THEN DO ~SetGlobal("TICherPCBaby","GLOBAL",1) EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN z1a1a1alt
SAY~*Cherilane looks at you, tilting her head.* I know. We were as careful as we could be. I don't blame you. Forgive me, though, for hoping that something went wrong and that by some miracle it's yours. By all rights, this shouldn't even have happened. You're the only one I love, <CHARNAME> and the only one I remember making love to. But I can't know for sure. Not unless the baby looks like you... Forgive me, <CHARNAME>; before we met at Nashkel Carnival, I took Black Lotus with a few customers... Perhaps I did something and don't remember. And then there's Canticle, who swears that we were lovers...~
IF ~~ THEN + z1a1a2_01
END


IF ~~ THEN BEGIN z1a1a2
SAY~Who is the father? I'm not sure. Maybe I took too much Black Lotus with a customer and just don't remember. Maybe in the mines... And then there's Canticle. He wishes to claim the baby. He says we were lovers before you and I were reunited at Nashkel Carnival. Since the Black Lotus Davaeorn's men gave me took many of my memories away, I don't know if he's telling the truth. Does it matter?~
IF ~~ THEN + z1a1a2_01
END

IF ~~ THEN BEGIN z1a1a3
SAY~Who is the father? *Cherilane looks intently at you.* I hope that it's yours. By all rights, this shouldn't even have happened. You're the only one I love, <CHARNAME> and the only one I remember making love to. But I can't know for sure. Not unless the baby looks like you... Because of Canticle. He wishes to claim the baby. He says we were lovers before you and I were reunited at Nashkel.~
IF ~~ THEN + z1a1a2_01
END

IF ~~ THEN BEGIN z1a1a3a
SAY~Who's the father? *Cherilane looks away.* You're the only one I love, <CHARNAME>. I wish it were possible that it was your child. Because it's terrible not to know for sure. Before we met at Nashkel Carnival, I took Black Lotus with a few customers... Perhaps I did something that I don't remember. And then there's Canticle, who swears that we were lovers...~
IF ~~ THEN + z1a1a2_01
END

IF ~~ THEN BEGIN z1a1a3b
SAY~*Cherilane looks away.* By all rights, this shouldn't even have happened. You're the only one I love, <CHARNAME> and the only one I remember making love to. I wish it were possible that it was your child. Because it's terrible not to know for sure. I took Black Lotus with some customers... Perhaps I did something that I don't remember. And then there's Canticle, who swears that we were lovers before you and I were reunited at Nashkel...~
IF ~~ THEN + z1a1a2_01
END

IF ~~ THEN BEGIN z1a1a4alt
SAY~*Cherilane's face pales.* Your words tempt me away from what I know will be a safer decision. By all rights, this shouldn't even have happened. I don't blame you for my condition, anyway. Forgive me, though, for hoping that something went wrong and that by some miracle, it's yours. Because you and I made love, I daydream that we could be happy together. But right now I don't know a place that would be safe for you. Or me.~
IF ~~ THEN + z1a1a2_01
END

IF ~~ THEN BEGIN z1a1a4
SAY~*Cherilane's face pales.* Your words tempt me away from what I know will be a safer decision. Because you and I made love and I might even be carrying your child, I daydream that we could be happy together. But right now I don't know a place that would be safe for you. Or me.~
IF ~~ THEN + z1a1a2_01
END

IF ~~ THEN BEGIN z1a1a4a
SAY~*Cherilane's face pales.* Your words tempt me away from what I know will be a safer decision. I know you are speaking out of caring and kindness, Perhaps even love. But I cannot think of anywhere that I know would be safe for you right now. Or me.~
IF ~~ THEN + z1a1a2_01
END

IF ~~ THEN BEGIN z1a1a4b
SAY~*Cherilane's face pales.* Your words tempt me away from what I know will be a safer decision. Because you and I made love and I know you are speaking out of caring and kindness, I daydream that we could be happy together. But I cannot think of anywhere that I know would be safe for you right now. Or me.~
IF ~~ THEN + z1a1a2_01
END

IF ~~ THEN BEGIN z1a1a2_01
SAY~Canticle says he loves me. Maybe he's the baby's father, maybe not. I thought he and I might try to make something of this, regardless. At least for now.~
++ ~But I love you!~ + z1a1a3z
++ ~Then I wish you the best of luck, Cherilane.~ + z1a1a3ay
++ ~Yes. Get away from the Sword Coast. Forget all this.~ + z1a1a3ay
++ ~I know what you're saying, Cherilane. And it doesn't matter. Somehow, I'll help you with this.~ + z1a1a3z
END

IF ~~ THEN BEGIN z1a1a3ay
SAY~*Cherilane lowers her face.* I've always hoped... someday... that you would love me the way I love you and that we could be together... maybe even get married. But I sense that our journey together is ended.~
IF ~~ THEN + z1a1a3a_01
END

IF ~~ THEN BEGIN z1a1a3z
SAY~*Cherilane lowers her face.* Blessed Sune! I always hoped that you would come to love me the way I love you. And now... it's happened. I hope... someday... that you will come back to me. That we could live together and perhaps even marry. But I sense that our journey together is ended for now.~
IF ~~ THEN + z1a1a3a_01
END

IF ~~ THEN BEGIN z1a1a3a_01
SAY~*Cherilane comes close to you, kissing you deeply and sensually one last time.* Be well, my darling <CHARNAME>. I will think of you often. Gelirion says:~
=~'I hold it true, whate'er befall;
I feel it when I sorrow most;
'Tis better to have loved and lost
Than never to have loved at all.'~
IF ~~ THEN DO ~SetGlobal("TICherBaby","GLOBAL",1) EscapeArea()~ EXIT
END

//Interjections

INTERJECT %tutu_var%CANTIC 0 TICherilCanticle
== %tutu_var%CANTIC IF ~Global("TICheril","GLOBAL",7)~ THEN ~*Sob.* They even took my sweet Cherilane...~
END
++ ~Who?~ + TICherCantA
++ ~You know of Cherilane?! Tell me, where is she?~ + TICherCantB

APPEND %tutu_var%CANTIC

IF ~~ THEN TICherCantA
SAY ~Ohhh... I feel so weak.~
COPY_TRANS %tutu_var%CANTIC 0
END

IF ~~ THEN TICherCantB
SAY ~Cherilane and I used to sing together and...and I love her. But Davaeorn's men took her down below. How far, I do not know... Alas that we shall never sing together again!~
COPY_TRANS %tutu_var%CANTIC 0
END
END