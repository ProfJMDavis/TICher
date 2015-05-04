BEGIN ~TIGeoff~

// 1. Ducal Palace, 1st Floor

IF ~Global("TIGeoff","GLOBAL",1)~ THEN BEGIN a1
SAY~Can I help you?~
++ ~Uh, no. Thanks.~ + a1a
++ ~I'm here for the party.~ + a1b
+ ~Global("TICheril","GLOBAL",10)~ + ~Who are you?~ + a1c
+ ~Global("TICheril","GLOBAL",10)~ + ~I'm looking for a friend of mine. Her name is Cherilane. She said she might be working here.~ + a1d
END

IF ~~ THEN BEGIN a1a
SAY~*Scowls.* If you will excuse me, then. I must wait on the other guests.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN a1b
SAY~*Nods.* Very good, M'<LADYLORD>. If you will excuse me, then. I must wait on the other guests.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN a1c
SAY~My name is Geoffrey. I'm secretary to the Duke.~
++ ~Aha! You must be the Geoff that Cherilane spoke of!~ + a2a
++ ~Yes. I'm looking for my friend Cherilane. She said she might be working here.~ + a1d
END

IF ~~ THEN BEGIN a1d
SAY~Ummmm.... *Looks around and then lowers his voice.* This is not the best...erm...time to speak of this, but I do know a Cherilane.~
IF ~~ THEN + a1d_01
END

IF ~~ THEN BEGIN a2a
SAY~Erm... Yes... *Looks around and then lowers his voice.* It's best not to speak at length about this. Not here, anyway.~
IF ~~ THEN + a1d_01
END

IF ~~ THEN BEGIN a1d_01
SAY~I assisted her in securing employment here as a musician. Among her other talents, she's been very effective in treating certain troubling aspects of the Duke's illness. Better than his physician does.~
++ ~So where is she?~ + a3a
++ ~Huh! I didn't know she knew any medicine.~ + a3b
++ ~You don't need to whisper. We already know all about the Duke's illness.~ + a3c
END

IF ~~ THEN BEGIN a3a
SAY~If you go out into the main hall, you will see a staircase going up. Ascend two flights of stairs. She should be up there.~
IF ~~ THEN + a3a_01
END

IF ~~ THEN BEGIN a3b
SAY~Oh, this isn't medicine, thank the gods. If anything, his medical treatment seems to make him worse. Part of the Duke's illness has been persistant insomnia. Cherilane's very talented at inducing sleep.~
IF ~~ THEN + a3a_01
END

IF ~~ THEN BEGIN a3c
SAY~Look... I hired Cherilane because I genuinely believe she is good for the Duke. There are others here who do not like her presence here.~
IF ~~ THEN + a3a_01
END

IF ~~ THEN BEGIN a3a_01
SAY~I shouldn't say anymore. You can go ahead and talk to her. She's in the master bedroom.~
IF ~~ THEN DO ~IncrementGlobal("TIGeoff","GLOBAL",1)~ EXIT
END
