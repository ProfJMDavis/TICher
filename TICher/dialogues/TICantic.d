INTERJECT %tutu_var%CANTIC 0 CherilCanticle
== %tutu_var%CANTIC IF ~~ THEN ~*Sob.* They even took my sweet Cherilane...~
END
++ ~Who?~ + CherCantA
++ ~You know of Cherilane?! Tell me, where is she?~ + CherCantB

APPEND %tutu_var%CANTIC

IF ~~ THEN CherCantA
SAY ~Ohhh... I feel so weak.~
COPY_TRANS %tutu_var%CANTIC 0
END

IF ~~ THEN CherCantB
SAY ~Cherilane and I used to sing together. But Davaeorn's men took her down below. How far, I do not know... Alas that we shall never sing together again!~
COPY_TRANS %tutu_var%CANTIC 0
END
