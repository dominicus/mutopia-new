\version "2.18.2"

%--------Definitions for Chopin Ballade 1
staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"
mBreak = { \break }
mNoBreak = { \noBreak }



global = {
  \key g \minor
}


hideF = \tweak #'stencil ##f \f
hideP = \tweak #'stencil ##f \p
hideMF = \tweak #'stencil ##f \mf
hidePP = \tweak #'stencil ##f \pp

tempoLargo = \tempo 4 = 55
tempoMod = \tempo 4 = 75
tempoAgitato = \tempo 4 = 80
hideTempo = \set Score.tempoHideNote = ##t

lentoLegend = \markup \huge \right-align \bold \raise #1.5 "Lento."
moderatoLegend = \markup \center-align \huge \bold "         Moderato."
menoMossoLegend = \markup { \override #'(baseline-skip . 2.0) 
  \left-column { \huge \bold "Meno mosso."
  \italic \large "              sotto voce" }
}
prestoConFuoco = \markup \huge \bold \center-align "Presto con fuoco."
fPesante = \markup \concat { \dynamic "f" \italic \larger "  pesante" }
pDolce = \markup \concat { \dynamic "p" \italic \larger " dolce" }
ffz = \markup { \center-align \dynamic "ffz" }
forteTxt = \markup \dynamic "f"
fzText = \markup \dynamic "fz"
pianoTxt = \markup \dynamic "p"
fffTxt = \markup \dynamic "fff"
dimTxt = \markup \italic \larger "dim."
espressTxt = \markup \italic \larger "espress."
tenutoTxt = \markup \italic \larger "tenuto"
pocoCresc = \markup \italic \larger "poco cresc."
aTempo = \markup \italic \larger "a tempo"
agitato = \markup \italic \larger "agitato"
leggiero = \markup \italic \larger "leggiero"
conForza = \markup \italic \larger "con forza"
pPesante = \markup { \dynamic "p" \italic \smaller "(pesante)" }
fzSforzato = \markup { \dynamic "fz" \raise #0.4 \musicglyph #"scripts.sforzato"  }
sfSforzato = \markup { \dynamic "sf" \raise #0.4 \musicglyph #"scripts.sforzato"  }
crescTxt = \markup \italic \larger "cresc."
crescTiny = \markup \italic \small \rotate #7.0  "cresc."
crescTinyB = \markup \italic \small \rotate #4.0  "cresc."
riten = \markup \italic \larger "riten."
accel = \markup \italic \larger "accel."
accelerando = \markup \italic \larger "accelerando"
smorzTxt = \markup \italic "smorz."
sPiuMosso = \markup \italic \larger "sempre più mosso"
appassPiuForte = \markup \override #'(baseline-skip . 1.7) \column { \italic \larger { "   appassionato" "il più forte possibile" } }
piuF = \markup \concat { \italic " più " \dynamic "f"}
menoMosso = \markup \override #'(baseline-skip . 1.7) \column { \larger \bold "Meno mosso." \italic "sotto voce"  }
semprePP = \markup { \italic "sempre" \dynamic "pp" }
semprePiuF = \markup { \italic "sempre più " \dynamic "f" }
sempreF = \markup { \italic "sempre" \dynamic "f" }
sempreFF = \markup \center-align { \italic "sempre" \dynamic "ff" }
sempreCresc = \markup { \italic "sempre cresc." }
aTempoMenoMosso = \markup { \center-align \italic  "a tempo (meno mosso)   " }
sottoVoce = \markup \italic \larger "sotto voce"
moltoCresc = \markup \italic \larger "molto cresc."
animatoLegend = \markup \italic \larger "animato"
pocoApocoCresc = \markup \italic "poco     a       poco    cresc."
pocoRiten = \markup \italic \larger "poco riten."
piuAnimato = \markup \italic "più animato"
tenTxt = \markup { \center-align  \italic "  ten." }
sharpPrall = \markup \override #'(baseline-skip . 1.7) \center-column { \teeny \musicglyph #"accidentals.sharp" \musicglyph #"scripts.prall" }

ritenSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \italic "ritenuto    " }
  \override TextSpanner #'(bound-details left-broken text) = ##f
  \override TextSpanner #'(bound-details left stencil-align-dir-y) = #CENTER
  \override TextSpanner.dash-fraction = #0.04
  \override TextSpanner.dash-period = #14.0
  \override TextSpanner.thickness = 2.1
  \override TextSpanner.avoid-slur = #'inside
  \override TextSpanner.outside-staff-priority = ##f
  \override TextSpanner.staff-padding = 3.0
  \override TextSpanner #'bound-details #'right #'padding = #4.0
  \override TextSpanner #'bound-details #'right-broken #'padding = #0.5
}
menoFSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \italic "poco    a    poco    meno  " \dynamic "f" "    " }
  \override TextSpanner #'(bound-details left-broken text) = ##f
  \override TextSpanner.staff-padding = 5.5
}
nullSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { " " }
  \override TextSpanner.staff-padding = 3.9
}
piuPianoSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \italic "  sempre    più " \dynamic "p" "   " }
  \override TextSpanner #'(bound-details left-broken text) = ##f
}
calandoSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup \center-align { \italic "     calando  " }
  \override TextSpanner #'(bound-details left-broken text) = ##f
  \override TextSpanner.staff-padding = 3.1
}
piuDimSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \whiteout \italic "  più  dimin.   e riten.  " }
  \override TextSpanner #'(bound-details left-broken text) = ##f
  \override TextSpanner.staff-padding = 0.0
  \override TextSpanner #'(bound-details left stencil-align-dir-y) = #CENTER
  \override TextSpanner.dash-fraction = #0.04
  \override TextSpanner.dash-period = #8.0
  \override TextSpanner.thickness = 2.1
}
semprePiuPSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \italic "sempre più " \dynamic "p" "  " }
  \override TextSpanner #'(bound-details left-broken text) = ##f
  \override TextSpanner.dash-period = #14.0
  \override TextSpanner.dash-fraction = #0.04
  \override TextSpanner.dash-period = #8.0
  \override TextSpanner #'(bound-details left stencil-align-dir-y) = #CENTER
  \override TextSpanner.thickness = 2.1
  \override TextSpanner.staff-padding = 0.0
  \override TextSpanner.extra-offset = #'( 1 . 1.2 )
}
eRallSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \italic "e  rall. " }
  \override TextSpanner #'(bound-details left-broken text) = ##f
  \override TextSpanner.extra-offset = #'( 0 . 1.7 )
}
sempreCrescSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \italic "sempre cresc." }
  \override TextSpanner #'(bound-details left-broken text) = ##f
  \override TextSpanner #'(bound-details left stencil-align-dir-y) = #CENTER
  \override TextSpanner.dash-period = #14.0
  \override TextSpanner.dash-fraction = #0.04
  \override TextSpanner.dash-period = #8.0
  \override TextSpanner.outside-staff-priority = ##f
  \override TextSpanner.staff-padding = 3.4
}
semprePiuCrescSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \italic "sempre più cresc." }
  \override TextSpanner #'(bound-details left-broken text) = ##f
}
dimPiuRallentSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \italic "dim. e più rallent." }
  \override TextSpanner #'(bound-details left-broken text) = ##f
}
sforzatoSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \concat { \dynamic "sf" \musicglyph #"scripts.sforzato"  } }
  \override TextSpanner #'(bound-details left-broken text) = ##f
}
pocoRitenSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \italic \larger "poco riten." }
  \override TextSpanner #'(bound-details left-broken text) = ##f
}
ppSpanner = {
  \override TextSpanner.staff-padding = 0.2
  \override TextSpanner #'(bound-details left text) = ##f
  \override TextSpanner #'(bound-details right text) = \markup { \dynamic "pp" }
  \override TextSpanner.avoid-slur = #'inside
  \override TextSpanner.outside-staff-priority = ##f
  \override TextSpanner #'(bound-details right stencil-align-dir-y) = #UP
}

setRestDirDown = \override Rest #'direction = #down
setRestDirUp = \override Rest #'direction = #up
doubleSlursOn = \set doubleSlurs = ##t
doubleSlursOff = \set doubleSlurs = ##f
connectArpeggio = \set Staff.connectArpeggios = ##t
allowTextScriptInStaff = \once \override TextScript.staff-padding = #'()

cadenzaSizeOn = {
  \override NoteHead.font-size = #-4
  \override Accidental.font-size = #-4
  \override AccidentalCautionary.font-size = #-4
  \override Beam.beam-thickness = #0.28
  \once \override Beam.length-fraction = #0.65
}
cadenzaSizeOff = {
  \revert NoteHead.font-size
  \revert Accidental.font-size
  \revert AccidentalCautionary.font-size
  \revert Beam.beam-thickness
}

subdivideBeamOne = {
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/4)
}
subdivideBeamTwo = {
  \set subdivideBeams = ##t
  %\set baseMoment = #(ly:make-moment 1/4)
}

hideTupletNumber = \override TupletNumber.transparent = ##t
hideTupletBracket = \override TupletBracket.bracket-visibility = ##f

subdivideLenghtHalf = \set baseMoment = #(ly:make-moment 1/2)
subdivideLenghtFourth = \set baseMoment = #(ly:make-moment 1/4)
subdivideLenghtEigth = \set baseMoment = #(ly:make-moment 1/8)
subdivideLenghtThreeSixt = \set baseMoment = #(ly:make-moment 3/16)

subdivideBeamOff = \set subdivideBeams = ##f
restDownOne = \once \override MultiMeasureRest.staff-position = #2
restDownTwo = \once \override MultiMeasureRest.staff-position = #-4

alignBeamOne = \once \override Beam.positions = #'(-1.2 . -1.2)
alignBeamTwo = \once \override Beam.positions = #'(-4.4 . -5.0)

moveNoteOne = \once \override NoteColumn #'force-hshift = #0.8
moveNoteTwo = {}
moveNoteTre = \once \override NoteColumn #'force-hshift = #-0.7
moveNoteQtr = \once \override NoteColumn #'force-hshift = #2.0
moveNoteCin = \once \override NoteColumn #'force-hshift = #-0.1
moveNoteSix = \once \override NoteColumn #'force-hshift = #0.3
moveNoteSep = \once \override NoteColumn #'force-hshift = #1.3

shortStemOne = \once \override Stem.length-fraction = #(magstep -4)
shortStemTwo = \once \override Stem.length-fraction = #(magstep -3)
shortStemTre = \override Stem.length-fraction = #(magstep -3)
shortStemQtr = \override Stem.length-fraction = #(magstep -2)
shortStemCin = \once \override Stem.length-fraction = #(magstep -2)
shortStemSix = \once \override Stem.length-fraction = #(magstep -1)
shortStemRev = \revert Stem.length-fraction

slashFlag = \once \override Flag.stroke-style = #"grace"
hideAccidental = \once \override Voice.Accidental.stencil = ##f

halfNotehead = {
  \once \override NoteHead.stencil = #ly:text-interface::print
  \once \override NoteHead.text = \markup \musicglyph #"noteheads.s2"
}
smallNotehead = \once \override NoteHead.font-size = #-3

dynLeft = { \once \override DynamicText.self-alignment-X = 2.5 }

shpSlurA = \shape #'((-0.4 . 3) (3 . 2) (0 . 0) (0.5 . 0.5)) PhrasingSlur
shpSlurB = \shape #'((-0.4 . 0.2) (1.0 . 1.0) (-0.8 . 1.1) (0 . 0)) Slur
shpSlurC = \shape #'((-0.6 . -0.5) (3 . 3) (0 . 0) (-0.7 . -1.6)) PhrasingSlur
shpSlurD = \shape #'(( 0.3 . 1.0) (0.5 . 1.5) (0 . 0.5) (0 . 0.3)) Slur
shpSlurE = \shape #'( ((-0.3 . 0.4) (1 . -0.4) (0 . 1) (0 . 1.6)) 
                      ((-0.9 . 1.4) (0 . 1.2) (1 . 1.0) (0.5 . -1.6)) )PhrasingSlur
shpSlurF = \shape #'(( 0.3 . 0.8) (0.5 . 1.3) (-0.5 . 1.3) (0 . 0.8)) Tie
shpSlurG = \shape #'((0 . -1.0) (0 . 0) (-2.0 . 2.0) (0 . 0.5)) PhrasingSlur
shpSlurH = {  \shape #'((-1.2 . 0) (-0.5 . -0.4) (0.6 . -0.2) (0.7 . 0)) Tie
              \shape #'( ((0 . 3) (0 . 3.5) (-1.0 . 5.5) (0.7 . 5.8)) 
                         ((0 . 3) (0 . 3) (0.5 . 2.6) (0.5 . 2.4)) ) PhrasingSlur }
shpSlurI = \shape #'(( 0 . 0.3) (0 . 0.3) (0 . 0.3) (0 . 0.3)) Slur
shpSlurJ = \shape #'(( 0 . -0.6) (0 . -0.8) (0 . -0.8) (-0.2 . -0.6)) Slur
shpSlurK = \shape #'(( 0 . -2.3) (0 . -2.3) (0 . -2.3) (0 . -2.3)) Slur
shpSlurL = \shape #'(( 0 . -1.9) (0 . -1.9) (0 . -1.9) (0 . -1.9)) Slur
shpSlurM = \shape #'((-1.2 . 0) (-0.5 . -0.4) (0.6 . -0.2) (0.7 . 0)) Tie
shpSlurN = { \shpSlurM \shape #'((-0.3 . 3.2) (0 . 3.2) (-1.0 . 3.5) (0.7 . 2.6)) Slur }
shpSlurO = \shape #'(( 0 . 1.2) (0 . 2.0) (-2.0 . 2.0) (0 . -1.6)) Slur
shpSlurP = \shape #'( ((0 . -0.4) (0 . -0.4) (0 . -0.4) (0 . 0)) 
                      ((0 . 2.3) (0 . 2.6) (0.5 . 2.6) (0.5 . 2.4)) )PhrasingSlur
shpSlurQ = \shape #'((0 . -0.4) (0 . -0.6) (0 . -0.6) (0 . -0.3)) Slur
shpSlurR = {  \shpSlurM
              \shape #'( ((0 . 3) (0 . 3.5) (-1.0 . 5.5) (0.7 . 5.8)) 
                         ((-2.3 . 0.3) (1 . 1.8) (-1.5 . -1.3) (-0.6 . -3.2)) ) PhrasingSlur }
shpSlurS = \shape #'((0 . -0.4) (0 . 0.6) (-1 . 0.6) (-0.4 . -1.2)) PhrasingSlur
shpSlurT = \shape #'((0.5 . 0.8) (0.5 . 0.8) (1 . 1) (0.6 . 2)) Slur
shpSlurU = \shape #'( ((0 . -2) (3 . 1.8) (1 . 1.8) (0 . -0.2)) 
                      ((-2.0 . 4.0) (-1 . 3.7) (0.5 . 2.8) (0.0 . 2.6)) )PhrasingSlur
shpSlurV = \shape #'((-0.3 . 1.4) (0 . 1.3) (0 . 0.6) (0 . 0)) PhrasingSlur
shpSlurW = \shape #'((0.2 . 0.6) (0 . 0.8) (0 . 0.5) (0 . 0.3)) Slur
shpSlurX = \shape #'((-0.2 . -1.9) (1 . -0.5) (-2 . 1) (0 . -0.6)) PhrasingSlur
shpSlurY = \shape #'((0 . 0.3) (5 . -2) (-5 . -2) (0.6 . 0.6)) PhrasingSlur
shpSlurZ = \shape #'( ((-0.5 . 0.0) (3 . -1.5) (-5 . -1.2) (0.0 . 0.7))
                      ((0 . 0.5) (1 . -0.5) (-1 . -0.5) (0.4 . 0.4)) ) PhrasingSlur
shpSlurAA = \shape #'( ((-0.9 . 0.7) (0 . 1.3) (-1 . 0.3) (0.0 . -1.5))
                       ((-3.2 . 0.2) (0 . 3.5) (-1.0 . 1) (0.4 . -1.0))
                       ((0.3 . 0.8) (0.3 . 0.4) (0.4 . 0.2) (0 . 0)) ) PhrasingSlur
shpSlurAB = { \shape #'((-0.4 . -0.4) (0 . 1) (0 . 1.4) (0 . 0.6)) PhrasingSlur
              \shape #'((0.3 . 0) (0.3 . 0.4) (-0.3 . 0.4) (-0.2 . 0)) Tie }
shpSlurAC = \shape #'((-0.3 . 0.6) (0 . 0.8) (0 . 0.9) (0.6 . 0.6)) Slur
shpSlurAD = \shape #'((-1.2 . 0.2) (-0.3 . 0.7) (0.3 . 0.7) (1.1 . 0.3)) Tie
shpSlurAE = \shape #'((-1.2 . 0.4) (-0.6 . 1.2) (0.6 . 1.2) (1.1 . 0.6)) Tie
shpSlurAF = \shape #'((-0.3 . 0) (0 . 0.1) (0 . 0.5) (0.6 . 0)) Slur
shpSlurAG = \shape #'((-1.4 . 0.8) (-1.3 . 1.3) (-0.2 . 1.3) (0 . 0.9)) Tie
shpSlurAH = \shape #'((0 . 0.6) (0 . 0.8) (0 . 0.8) (0 . 0.5)) Tie
shpSlurAI = \shape #'((-0.2 . -0.8) (0 . -0.7) (-0.3 . -0.7) (-0.3 . -0.7)) Tie
shpSlurAJ = \shape #'((-1.3 . 0.4) (0 . 0.5) (0 . 0) (0 . -0.7)) Slur
shpSlurAK = \shape #'((0.7 . -0.3) (0.6 . 0.4) (0.6 . 0.5) (0.6 . 0.2)) Slur
shpSlurAL = \shape #'((0.8 . 0.3) (0.6 . 0.4) (0.6 . 0.5) (0.6 . 0.2)) Slur
shpSlurAM = \shape #'((-0.5 . 0.3) (0 . 0.6) (0.3 . 0.2) (0.6 . 0.0)) Slur
shpSlurAN = \shape #'((-0.5 . -0.1) (-0.3 . 0.2) (0.3 . 0.2) (0.5 . -0.1)) Tie
shpSlurAO = \shape #'((0 . 0.7) (0 . -0.9) (0.0 . -1.2) (0.0 . 0.5)) Slur
shpSlurAP = \shape #'((-0.3 . 0.5) (0 . 1.0) (0.0 . 0.5) (0.4 . 0.3)) Slur
shpSlurAQ = \shape #'((0 . 0) (0 . -0.2) (-0.5 . -1.0) (-0.8 . -0.9)) Slur
shpSlurAR = \shape #'((0.7 . 1.0) (0 . 1.0) (0 . 0.5) (0.3 . 0.4)) Slur
shpSlurAS = \shape #'((-0.7 . -1.8) (0 . -1.3) (0 . -1.3) (-0.3 . -1.3)) Slur
shpSlurAT = \shape #'( ((0 . 0.0) (3 . 0.5) (-0.5 . 0.6) (0.5 . 1.0))
                      ((0 . 1.7) (0 . 1.0) (0 . 0.6) (0 . 0)) ) PhrasingSlur
shpSlurAU = \shape #'((0.9 . 1.7) (1.2 . -0.9) (0.0 . -1.0) (0.6 . 0.5)) Slur
shpSlurAV = \shape #'((1.0 . 2.1) (0.6 . 0.9) (0.6 . 0.5) (0.6 . 0.2)) Slur
shpSlurAW = {
         \shape #'((0 . -0.3) (0 . -0.3) (0 . -0.3) (0 . -0.3)) Slur
         \once \override Slur.padding = 0.0 }
shpSlurAX = \shape #'((-0.6 . -0.5) (0 . 0) (-4 . 0.2) (-0.3 . -0.9)) PhrasingSlur
shpSlurAY = \shape #'((-0.4 . 0.5) (2 . 0.9) (0 . 2) (0.4 . -1.6)) Slur
shpSlurAZ = \shape #'((-0.8 . 1) (0 . 0.6) (0 . 0.6) (0.4 . 1)) Slur
shpSlurBA = \shape #'((-0.6 . -0.7) (0 . 1) (0 . 1) (0.7 . -1)) Slur
shpSlurBB = \shape #'( ((0 . 0.6) (0 . 0) (0 . -0.6) (-0.5 . -2.0))
                      ((0 . 6) (1 . 5.5) (1.3 . 5.2) (1 . 3)) ) Slur
shpSlurBC = \shape #'((0.6 . 2) (1 . 1) (0 . 0) (0 . 0)) Slur
shpSlurBD = \shape #'((0.6 . 2) (0 . 0) (0 . -1) (-0.4 . -1.5)) Slur
shpSlurBE = \shape #'((0 . 0.2) (0 . 0.8) (0 . 0.6) (0 . 0.4)) Slur
shpSlurBF = \shape #'((-0.7 . 0.0) (2 . 2.0) (-2 . 2.0) (0 . 0)) PhrasingSlur
shpSlurBG = \shape #'((0 . 0.0) (0 . 1.0) (-2 . 1.0) (0 . -1.0)) PhrasingSlur
shpSlurBH = \shape #'((0.2 . 0.5) (0 . 0.9) (0 . 0.9) (0 . 0.9)) Slur
shpSlurBI = \shape #'((0.2 . 0.0) (1 . 0.9) (-1 . 0.9) (-0.2 . 0)) Slur
shpSlurBJ = \shape #'((0.2 . 0.0) (1 . 5) (-12 . 6) (-0.2 . 0)) Slur
shpSlurBK = \shape #'((0.2 . 0.5) (0.8 . -0.3) (-0.8 . -0.3) (-0.6 . 0.5)) Tie
shpSlurBL = \shape #'((-0.8 . 0) (0 . -0.7) (0 . -0.7) (0 . 0)) Tie
shpSlurBM = \shape #'((0.6 . 0.6) (0.5 . 0.5) (-0.6 . 0.3) (-1.0 . 0)) Slur
shpSlurBN = \shape #'((0 . 0.4) (0 . 0.4) (0 . 0.4) (0 . 0.4)) Slur
shpSlurBO = \shape #'((-0.9 . -0.6) (0 . 0) (-3.5 . 1) (0 . -0.1)) Slur
shpSlurBP = \shape #'((-0.2 . -0.3) (2 . 0.1) (-2 . 0.1) (0.2 . -0.3)) Slur
shpSlurBQ = \shape #'( ((-0.4 . 0.4) (1 . 1) (-1 . 2.5) (0 . 5))
                      ((-2 . -2) (1 . -0.9) (-1.6 . -1.5) (0 . -0.7)) ) PhrasingSlur
shpSlurBR = \shape #'( ((0 . 0) (0 . 0) (0 . 0.3) (0 . 0.4))
                       ((0 . -1.6) (0 . -1.9) (0 . -1.5) (0 . -1.1)) ) Slur
shpSlurBS = \shape #'( ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                       ((-1 . 1.0) (0 . 1.6) (0 . 1) (0 . 0)) ) PhrasingSlur
shpSlurBT = \shape #'((0 . 0) (1.5 . -2) (-1.5 . -3.4) (0 . 0)) PhrasingSlur
shpSlurBU = \shape #'( ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                       ((-2 . -0.4) (1 . 0.5) (0 . 0) (-0.2 . -3.2)) ) PhrasingSlur
shpSlurBV = \shape #'((0 . 0) (0 . 1.5) (-1 . 1.7) (0 . 0.5)) Slur
shpSlurBW = \shape #'((0 . 0) (0 . 0.7) (-1 . 0.7) (0 . 0)) Slur
shpSlurBX = \shape #'((-0.5 . 1) (0 . -1.3) (-0.8 . -1.5) (0 . 0.5)) Slur
shpSlurBY = \shape #'((-0.5 . 0.4) (0 . 0.9) (0 . 0.7) (0 . 0.7)) Slur
shpSlurBZ = {  \shpSlurM
              \shape #'( ((0 . 3) (0 . 3.5) (-1.0 . 5.5) (0.7 . 5.8)) 
                         ((0 . 2) (0 . 2) (0 . 2) (0 . 2))  ) PhrasingSlur }
shpSlurCA = \shape #'((0.3 . -2.5) (0 . -2.3) (0 . -2.3) (-0.3 . -2.3)) Slur
shpSlurCB = \shape #'(( 0 . 0.6) (0 . 0.6) (0 . 0.6) (0 . 0.6)) Slur
shpSlurCC = \shape #'(( 0.3 . -0.8) (0 . -0.4) (0 . 0.2) (0 . 0)) Slur
shpSlurCD = \shape #'(( 0 . -0.3) (0 . -0.5) (0 . -0.7) (-0.3 . -0.8)) Slur
shpSlurCE = \shape #'(( 0 . 0) (1 . 0) (-1 . 0.3) (0.4 . -0.2)) PhrasingSlur
shpSlurCF = \shape #'(( 0 . -0.8) (0 . -0.8) (0 . -0.6) (0 . -0.6)) Slur

posHairpinA = {
            \once \override Hairpin.rotation = #'( 1.6 -1 0 )
            \once \override Hairpin.extra-offset = #'( 0 . 0.4 )
            \once \override Hairpin.padding = 0.0
}
posHairpinB = \once \override Hairpin.extra-offset = #'( -3.0 . 1 )
posHairpinC = {
            \once \override Hairpin.extra-offset = #'( -0.4 . 1 )
            \once \override Hairpin.padding = 0.0
}
posHairpinD = {
            \once \override Hairpin.rotation = #'( -1.6 -1 0 )
            \once \override Hairpin.extra-offset = #'( 0 . -1.0 )
            \once \override Hairpin.padding = 0.0
            \once \override Hairpin.height = 0.45
}
posHairpinE = {
            \once \override Hairpin.extra-offset = #'( 1 . -1 )
            \once \override Hairpin.padding = 2.0
}
posHairpinF = {
            \once \override Hairpin.rotation = #'( 1.0 -1 0 )
            \once \override Hairpin.extra-offset = #'( 0 . -0.6 )
            \once \override Hairpin.padding = 0.3
}
posHairpinG = {
            \once \override Hairpin.height = 0.49
            \once \override Hairpin.padding = 0.0
}
posHairpinH = {
            \override Beam.positions = #'( -2.6 . -1.7 )
            \override Hairpin.rotation = #'( 4.0 -1 0 )
            \override Hairpin.height = 0.42
            \override Hairpin.padding = 0
}
posHairpinHrvt = {
            \revert Beam.positions
            \revert Hairpin.rotation
            \revert Hairpin.height
            \revert Hairpin.padding
}
posHairpinI = \once \override Hairpin.extra-offset = #'( 0 . 0.3 )
posHairpinJ = {
            \once \override Hairpin.rotation = #'( 3.0 -1 0 )
            \once \override Hairpin.extra-offset = #'( 0.2 . -0.7 )
}
posHairpinK = {
            \once \override Hairpin.rotation = #'( 13.0 -1 0 )
            \once \override Hairpin.extra-offset = #'( 0 . -3 )
            \once \override Hairpin.height = 0.5
}
posHairpinL = \once \override Hairpin.extra-offset = #'( 0.8 . 0 )
posHairpinM = {
            \once \override Hairpin.rotation = #'( 3.5 -1 0 )
            \once \override Hairpin.extra-offset = #'( -1 . 0 )
            \once \override Hairpin.bound-padding = 0
}
posHairpinN = {
            \once \override Hairpin.rotation = #'( -10 1 0 )
            \once \override Hairpin.extra-offset = #'( 0 . -2.4 )
            \once \override Hairpin.bound-padding = 0
}
posHairpinO = {
            \once \override Hairpin.rotation = #'( -4 0 0 )
            \once \override Hairpin.height = 0.40
            \once \override Hairpin.bound-padding = 0.0
            \once \override Hairpin.minimum-length = 3.5
            \once \override Hairpin.extra-offset = #'( -0.3 . 0 )
}
posHairpinP = {
            \override Hairpin.height = 0.40
            \override Hairpin.bound-padding = 0.0
            \override Hairpin.minimum-length = 2.6
}
posHairpinPrev = {
            \revert Hairpin.height
            \revert Hairpin.bound-padding
            \revert Hairpin.minimum-length
}
posHairpinQ = \once \override Hairpin.extra-offset = #'( -0.7 . 0 )
posHairpinR = {
            \once \override Hairpin.rotation = #'( 8 0 0 )
            \once \override Hairpin.height = 0.88
            \once \override Hairpin.bound-padding = 0.0
            \once \override Hairpin.extra-offset = #'( 1.6 . 0.9 )
}
posHairpinS = {
            \once \override Hairpin.rotation = #'( 3 0 0 )
            \once \override Hairpin.height = 0.86
            \once \override Hairpin.bound-padding = 0.0
            \once \override Hairpin.extra-offset = #'( 0 . 0.1 )
}
posHairpinT ={
            \once \override Hairpin.outside-staff-priority = ##f
            \once \override Hairpin.extra-offset = #'( 0 . 2.1 )
}
posHairpinU = {
            \once \override Hairpin.bound-padding = 0.0
            \once \override Hairpin.padding = 0.0
            \once \override Hairpin.staff-padding = 0.0
            \once \override Hairpin.height = 0.5
}

posBeamA = \once \override Beam.positions = #'(2.3 . 3.7)
posBeamB = \once \override Beam.positions = #'(2.3 . 2.7)
posBeamC = \once \override Beam.positions = #'(6 . 5.3)
posBeamD = \once \override Beam.damping = #+inf.0

posScriptA = \once \override TextScript.extra-offset = #'( 0 . -1.5 )
posScriptB = \once \override Script.extra-offset = #'( 0.2 . -0.7 ) 
posScriptC = \once \override TextScript.extra-offset = #'( 0.5 . 0.6 )
posScriptD = \once \override Script.extra-offset = #'( 0.3 . -0.4 )
posScriptE = \once \override TextScript.extra-offset = #'( -0.3 . -1.3 )
posScriptF = \once \override TextScript.extra-offset = #'( 0 . -0.3 )
posScriptG = \once \override Script.extra-offset = #'( 0 . -0.4 )
posScriptH = \once \override Script.extra-offset = #'( 0 . 0.1 )
posScriptI = \once \override TextScript.extra-offset = #'( 1.8 . -0.6 )
posScriptJ = \once \override Script.extra-offset = #'( -0.3 . -1.4 )
posScriptK = \once \override Script.extra-offset = #'( -0.4 . -0.4 )
posScriptL = \once \override TextScript.extra-offset = #'( -0.7 . -0.7 )
posScriptM = \once \override DynamicText.extra-offset = #'( 0 . -0.9 )
posScriptN = {
           \once \override DynamicText.extra-offset = #'( -3.3 . -1.3 )
           \once \override DynamicText.padding = 0.0 }
posScriptO = {
           \once \override Script.extra-offset = #'( 0.3 . 0.5 )
           \once \override DynamicText.extra-offset = #'( 0.4 . 0.7 ) }
posScriptP = {
  \once \override TextScript.extra-offset = #'( -1.4 . -1.3 ) }
posScriptQ = \once \override Script.extra-offset = #'( 0.3 . -1 )
posScriptR = \once \override Script.extra-offset = #'( 0 . 0.3 )
posScriptS = \once \override DynamicText.extra-offset = #'( 0.6 . 1 )
posScriptT = {
          \once \override TextScript.staff-padding = 0.0
          \once \override TextScript.padding = 0.0
          \once \override TextScript.extra-offset = #'(0.5 . -0.5 )
}
posScriptU = \once \override DynamicText.extra-offset = #'(0 . -0.7)
posScriptV = {
          \once \override TextScript.staff-padding = 0.0
          \once \override TextScript.padding = 0.0
          \once \override TextScript.extra-offset = #'(0.8 . 2.1 )
}
posScriptW = {
          \once \override TextScript.outside-staff-priority = ##f
          \once \override TextScript.extra-offset = #'(-1.2 . -1.6 )
}
posScriptY = \override Script.extra-offset = #'( 0.3 . 0.7 )
posScriptYrev = \revert Script.extra-offset
posScriptZ = {
          \once \override TextScript.extra-offset = #'( -0.7 . 0.2 )
          \once \override TextScript.padding = 0.0
}
posScriptAA = \override DynamicText.extra-offset = #'( -0.2 . -0.4 )

posPedalA = \override SustainPedal.extra-offset = #'(0 . 1.0 )
posPedalB = \override SustainPedal.extra-offset = #'(0 . 0.5 )
posPedalC = \override SustainPedal.extra-offset = #'(0 . 0.3 )
posPedalD = \override SustainPedal.extra-offset = #'(1.2 . 0.9 )
posPedalE = \override SustainPedal.extra-offset = #'(1.2 . 1.3 )
posPedalF = \override SustainPedal.extra-offset = #'(0.5 . 0.6 )
posPedalG = \override SustainPedal.extra-offset = #'(1.7 . 1.5 )
posPedalRev = \revert SustainPedal.extra-offset

posDottedA = \once \override Staff.NoteCollision.prefer-dotted-right = ##f

noPadTxtScrp = \once \override TextScript.padding = 0.0
noPadScript = \once \override Script.padding = 0.0
noPadDynTxt = \once \override DynamicText.padding = 0.0 \once \override DynamicText.staff-padding = 0.0

setOttavaStyle = \set Staff.ottavation = #"8"
posOttavaA = {
       \setOttavaStyle
       \override Staff.OttavaBracket.avoid-slur = #'inside
       \override Staff.OttavaBracket.outside-staff-priority = ##f
}
posOttavaB = {
  \setOttavaStyle
  %Pierre Perol-Schneider's angled ottava contribution
  \override Staff.OttavaBracket.stencil = #ly:line-spanner::print
  \override Staff.OttavaBracket.bound-details =
    #`((left . ((Y . 0)
                (attach-dir . ,LEFT)
                (padding . 0)
                (stencil-align-dir-y . ,CENTER)))
       (right . ((Y . 3)
                 (padding . 0)
                 (attach-dir . ,RIGHT)
                 (text . ,(make-draw-dashed-line-markup (cons 0 -1.2))))))
  \override Staff.OttavaBracket.left-bound-info =
     #ly:line-spanner::calc-left-bound-info-and-text
  \override Staff.OttavaBracket.right-bound-info =
     #ly:line-spanner::calc-right-bound-info
}

ignoreClashOnce = \once \override NoteColumn.ignore-collision = ##t
ignoreClash = \override NoteColumn.ignore-collision = ##t
ignoreClashRev = \revert NoteColumn.ignore-collision

%---------Pavel's snippet from LSR to change clef at beginning of staff
% Append markup in the text property to the grob
#(define (append-markup grob old-stencil)
  (ly:stencil-combine-at-edge
    old-stencil X RIGHT (ly:text-interface::print grob)))

trebleToBass = {
  \clef bass
  % Fake staff clef appearance
  \once \override Staff.Clef.glyph-name = #"clefs.G"
  \once \override Staff.Clef.Y-offset = #-1
  % Append change clef to the time signature
  \once \override Staff.TimeSignature.text = \markup {
    \hspace #1.2
    \raise #1
    \musicglyph #"clefs.F_change"
  }
  \once \override Staff.TimeSignature.stencil = #(lambda (grob)
    (append-markup grob (ly:time-signature::print grob)))
}

%-----Jacek's squeeze functions
squeezeNotation = {
  \override Staff.AccidentalPlacement #'right-padding = #-0.05
  \override Staff.Accidental #'stencil =
  #(lambda (grob)
     (ly:stencil-scale (ly:accidental-interface::print grob) 0.92 1))
  \override Staff.NoteHead #'stencil =
  #(lambda (grob)
     (ly:stencil-scale (ly:note-head::print grob) 0.96 1.02))
}
unSqueezeNotation = {
  \revert Staff.AccidentalPlacement.right-padding
  \revert Staff.Accidental.stencil
  \revert Staff.NoteHead.stencil
}
