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
moderatoLegend = \markup \center-align \huge \bold "     Moderato."
menoMossoLegend = \markup { \override #'(baseline-skip . 2.0) 
  \left-column { \huge \bold "Meno mosso."
  \italic \large "              sotto voce" }
}
prestoConFuoco = \markup \huge \bold \center-align "Presto con fuoco."
fPesante = \markup \concat { \dynamic "f" \italic \larger "  pesante" }
pDolce = \markup \concat { \dynamic "p" \italic \larger " dolce" }
ffz = \markup { \center-align \dynamic "ffz" }
dimTxt = \markup \italic \larger "dim."
espressTxt = \markup \italic \larger "espress."
tenutoTxt = \markup \italic \larger "tenuto"
pocoCresc = \markup \italic \larger "poco cresc."
aTempo = \markup \italic \larger "a tempo"
agitato = \markup \italic \larger "agitato"
leggiero = \markup \italic \larger "leggiero"
conForza = \markup \italic \larger "con forza"
crescTxt = \markup \italic \larger "cresc."
crescTiny = \markup \italic \small "cresc."
riten = \markup \italic \larger "riten."
smorzTxt = \markup \italic "smorz."
sPiuMosso = \markup \italic \larger "sempre più mosso"
appassPiuForte = \markup \override #'(baseline-skip . 1.7) \column { \italic \larger { "   appassionato" "il più forte possibile" } }
piuF = \markup \concat { \italic " più " \dynamic "f"}
menoMosso = \markup \override #'(baseline-skip . 1.7) \column { \larger \bold "Meno mosso." \italic "sotto voce"  }
semprePP = \markup { \italic "sempre" \dynamic "pp" }
semprePiuF = \markup { \italic "sempre più " \dynamic "f" }
sempreF = \markup { \italic "sempre" \dynamic "f" }
sempreCresc = \markup { \italic "sempre cresc." }
aTempoMenoMosso = \markup { \center-align \italic \larger "a tempo (meno mosso)   " }
sottoVoce = \markup \italic \larger "sotto voce"
moltoCresc = \markup \italic \larger "molto cresc."
animatoLegend = \markup \italic \larger "animato"
pocoApocoCresc = \markup \italic "poco     a       poco    cresc."
pocoRiten = \markup \italic \larger "poco riten."
piuAnimato = \markup \italic "più animato"
tenTxt = \markup { \center-align  \italic "  ten." }
sharpPrall = \markup \override #'(baseline-skip . 1.7) \center-column { \teeny \musicglyph #"accidentals.sharp" \musicglyph #"scripts.prall" }

ritenSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \italic "ritenuto" }
  \override TextSpanner #'(bound-details left-broken text) = ##f
  \once \override TextSpanner #'bound-details #'right #'padding = #4.0
  \once \override TextSpanner #'bound-details #'right-broken #'padding = #0.5
}
menoFSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \italic "poco  a  poco  meno  " \dynamic "f" }
  \override TextSpanner #'(bound-details left-broken text) = ##f
}
piuPianoSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \italic "sempre  più " \dynamic "p" }
  \override TextSpanner #'(bound-details left-broken text) = ##f
}
calandoSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \italic "calando" }
  \override TextSpanner #'(bound-details left-broken text) = ##f
}
piuDimSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \italic "più dimin. e riten." }
  \override TextSpanner #'(bound-details left-broken text) = ##f
}
semprePiuPSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \italic "sempre più " \dynamic "p" }
  \override TextSpanner #'(bound-details left-broken text) = ##f
}
eRallSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \italic " e  rall. " }
  \override TextSpanner #'(bound-details left-broken text) = ##f
}
sempreCrescSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \italic "sempre cresc." }
  \override TextSpanner #'(bound-details left-broken text) = ##f
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
setRestDirDown = \override Rest #'direction = #down
setRestDirUp = \override Rest #'direction = #up
doubleSlursOn = \set doubleSlurs = ##t
doubleSlursOff = \set doubleSlurs = ##f
connectArpeggio = \set Staff.connectArpeggios = ##t

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

subdivideBeamOn = {
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/4)
}
subdivideBeamOff = \set subdivideBeams = ##f
restDownOne = \once \override MultiMeasureRest.staff-position = #2

alignBeamOne = \once \override Beam.positions = #'(-1.2 . -1.2)

moveNoteOne = \once \override NoteColumn #'force-hshift = #1.0
moveNoteTwo = \once \override NoteColumn #'force-hshift = #1.5
moveNoteTre = \once \override NoteColumn #'force-hshift = #-0.7
moveNoteQtr = \once \override NoteColumn #'force-hshift = #2.0
moveNoteCin = \once \override NoteColumn #'force-hshift = #-0.1
moveNoteSix = \once \override NoteColumn #'force-hshift = #0.3
moveNoteSep = \once \override NoteColumn #'force-hshift = #1.3

shortStemOne = \once \override Stem.length-fraction = #(magstep -4)

slashFlag = \once \override Flag.stroke-style = #"grace"
hideAccidental = \once \override Voice.Accidental.stencil = ##f

halfNotehead = {
  \once \override NoteHead.stencil = #ly:text-interface::print
  \once \override NoteHead.text = \markup \musicglyph #"noteheads.s2"
}
smallNotehead = \once \override NoteHead.font-size = #-3

dynLeft = {
  \once \override DynamicText.self-alignment-X = 2.5
}

ignoreClashOnce = \once \override NoteColumn.ignore-collision = ##t

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

%{
ten = \tenuto

hidePP = \tweak #'stencil ##f \pp


piuPP = \markup { \right-align \concat { \italic \bold "più " \dynamic pp } }
piuP = \markup { \left-align \concat { \italic \bold "più " \dynamic p } }

breatheFermata = {
  \once \override BreathingSign.text = \markup {
  \combine
  \musicglyph #"scripts.rcomma"
  \raise #1
  \musicglyph #"scripts.ufermata"
  }
  \breathe
}
shiftNoteRight = \override NoteColumn.force-hshift = #1.3
shiftNoteRightTwo = \override NoteColumn.force-hshift = #0.5
shiftNoteLeft = \override NoteColumn.force-hshift = #-1.0
shiftNoteNone = \revert NoteColumn.force-hshift
pushDynLeft = \once \override DynamicText.extra-offset = #'( -0.5 . 0 )
moveDynOne = \once \override DynamicText.extra-offset = #'( -2.0 . -2.8 )
moveDynTwo = \once \override Hairpin.extra-offset = #'( 1.6 . -1.5 )
moveDynTre = \once \override Hairpin.extra-offset = #'( 0 . -1 )
moveDynQtr = \once \override Hairpin.extra-offset = #'( 0 . 0.8 )
moveDynCin = \once \override DynamicText.extra-offset = #'( 0 . 0.8 )
moveDynSix = \once \override TextScript.extra-offset = #'( -0.5 . 3 )
moveDynSep = \once \override DynamicText.extra-offset = #'( -2.5 . 2.5 )
moveDynOct = \once \override DynamicText.extra-offset = #'( -3.2 . 3.5 )
moveDynNov = \once \override DynamicText.extra-offset = #'( 0.6 . 1.4 )
moveDynTen = \once \override DynamicText.extra-offset = #'( 0 . -2.4 )
moveDynEle = \once \override DynamicText.extra-offset = #'( -1.5 . -2.5 )
moveDynTwe = \once \override Hairpin.rotation = #'(9 0.5 0)
moveDynThi = \once \override TextScript.extra-offset = #'( -0.7 . -4 )
moveDynFou = \once \override DynamicText.extra-offset = #'( -2.5 . -3.8 )
moveDynFif = \once \override DynamicText.extra-offset = #'( -4.8 . -4.7 )
moveDynSixt = \once \override Hairpin.extra-offset = #'( -3 . 0 )
moveDynSevt = \once \override Hairpin.extra-offset = #'( 0 . -0.6 )
moveDynEigt = \once \override DynamicText.extra-offset = #'( 0 . -0.6 )
openHairpin = \once \override Hairpin.height = #1
lengthenHairpin = \once \override Hairpin.minimum-length = #8
brokenHairpin = {
  \override Hairpin.to-barline = ##f
  \override Hairpin.after-line-breaking = ##t
}
spacerOne = { \hideNotes \shiftOff a,,8 \unHideNotes }
timeSigParenth = \once \override Staff.TimeSignature.stencil = #(lambda (grob) (parenthesize-stencil 
      (ly:time-signature::print grob) 0.1 0.4 0.4 0.1 ))
timeSigShowBeg = {
  \once \override Staff.TimeSignature #'break-visibility = #begin-of-line-visible
  \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible 
}

shapeSlurOne = \shape #'((0 . 0) (0 . 0) (0 . 0) (-0.5 . 0)) Slur
shapeSlurTwo = \shape #'((-1.0 . 1.3) (0 . 1.0) (0 . 0.1) (-0.9 . 0.2)) Slur
shapeSlurTre = \shape #'((1.0 . -0.8) (2 . -6.0) (-1 . 0.8) (0 . 1.2)) PhrasingSlur
shapeSlurQtr = \shape #'((0.6 . 2) (2 . -1.5) (0 . 0) (0 . 0)) Slur
shapeSlurCin = \shape #'((-0.5 . 0) (3 . 2) (-2 . 2) (-0.5 . -1.6)) PhrasingSlur
shapeSlurSix = \shape #'(
               ((0.4 . -1.6) (3 . 0.4) (0 . 0) (0 . 0))
               ((0 . -0.4) (0 . -0.2) (0 . -0.4) (-0.5 . -1.2))
               ) PhrasingSlur
shapeSlurSep = \shape #'((0.5 . 2) (1 . 0.5) (0 . 0) (0 . 0)) Slur
shapeSlurOct = \shape #'((0 . 0) (1 . -0.8) (-1 . -1) (-0.5 . -1)) Slur
shapeSlurNov = \shape #'((0.4 . 2) (1 . 2.2) (0 . 2.2) (-0.7 . 2.7)) Slur
shapeSlurEle = \shape #'((0.5 . 1) (0 . 0.3) (0 . 0.3) (-0.5 . 1)) Slur
shapeSlurTwe = \shape #'((0 . 0) (0 . 0) (0 . 0) (2 . 0)) Slur
shapeSlurThi = \shape #'((0 . 0) (0 . 0) (-0.5 . 0.6) (0 . -0.8)) PhrasingSlur
shapeSlurFou = \shape #'((0.5 . -1.8) (1 . -0.5) (-1 . -0.4) (-0.5 . -1.8)) PhrasingSlur
shapeSlurFif = \shape #'(
               ((0.7 . -0.9) (3 . 1.2) (-1 . 1.2) (-0.5 . 0))
               ((0 . 0) (2 . 1.3) (-1 . 1.3) (-0.5 . 0.5))
               ) PhrasingSlur
shapeSlurSixt = \shape #'((0.8 . -1.8) (4 . 2) (-7 . 2) (-0.5 . -2.5)) PhrasingSlur
shapeSlurSevt = \shape #'((0 . -0.5) (2 . 2) (-3 . 0.5) (-0.5 . 0)) PhrasingSlur
shapeSlurEigt = \shape #'((0.5 . 2.8) (0 . 2) (0 . 1.3) (0 . 1)) Slur
shapeSlurNint = \shape #'((1.0 . 2.1) (1 . 1.3) (-1 . 0.3) (-1.5 . 0.8)) PhrasingSlur
shapeSlurTwen = \shape #'((1.0 . 1.1) (1.5 . 0.4) (-1 . 0.0) (-0.5 . 0.3)) PhrasingSlur
shapeSlurTwUn = \shape #'((0 . 0.4) (0 . 0.3) (0 . 0) (-0.5 . 0)) Slur

alignBeamOne = \once \override Beam.damping = #4
alignBeamTwo = \once \override Beam.positions = #'(0.3 . 0.7)
alignBeamTre = \once \override Beam.positions = #'(1.0 . 2.0)
alignBeamQtr = \once \override Beam.positions = #'(-5.5 . -6.6)
alignBeamCin = \override Beam.positions = #'(2.2 . 2.6)
alignBeamSix = \once \override Beam.positions = #'(5.7 . 8)
alignBeamRev = \revert Beam.positions

moveNoteOne = \once \override NoteColumn #'force-hshift = #-1.9
moveNoteTwo = \once \override NoteColumn #'force-hshift = #1
moveNoteTre = \once \override NoteColumn #'force-hshift = #-0.7

moveScriptOne = \once \override TextScript.extra-offset = #'( -2.5 . -2.8 )

preBrokenBeam = {
  \override Beam.layer = #0
  \override Stem.layer = #3
  \override Accidental.layer = #3
  \override NoteHead.layer = #15
  \override StaffSymbol.layer = #3
  \override TextScript.layer = #1
}
preBrokenBeamOne = { 
  \once \override TextScript.staff-padding = #0
  \once \override TextScript.vertical-skylines = #'()
  \once \override TextScript.extra-offset = #'( -1 . 3.3 )
}
preBrokenBeamTwo = { 
  \once \override TextScript.staff-padding = #0
  \once \override TextScript.vertical-skylines = #'()
  \once \override TextScript.extra-offset = #'( -1 . 4.2 )
}
preBrokenBeamTre = { 
  \once \override TextScript.staff-padding = #0
  \once \override TextScript.vertical-skylines = #'()
  \once \override TextScript.extra-offset = #'( -0.9 . 4.8 )
}
postBrokenBeam = {
  \revert Beam.layer
  \revert Stem.layer
  \revert NoteHead.layer
  \revert StaffSymbol.layer
  \revert TextScript.layer
}
breakBeamOne = \markup {
                   \with-dimensions #'(2 . 7) #'(0 . 0)
                   \with-color #white
                   \filled-box #'(5.0 . 9.0) #'(1.0 . 1.8) #0
}
breakBeamTwo = \markup {
                   \with-dimensions #'(2 . 7) #'(0 . 0)
                   \with-color #white
                   \filled-box #'(5.2 . 8.4) #'(1.0 . 1.8) #0
}
breakBeamTre = \markup {
                   \with-dimensions #'(2 . 7) #'(0 . 0)
                   \with-color #white
                   \filled-box #'(5.2 . 8.4) #'(1.05 . 1.9) #0
}
breakBeamQtr = \markup {
                   \with-dimensions #'(2 . 7) #'(0 . 0)
                   \with-color #white
                   \filled-box #'(5.3 . 8.6) #'(0.5 . 1.2) #0
}
breakBeamCin = \markup {
                   \with-dimensions #'(2 . 7) #'(0 . 0)
                   \with-color #white
                   \filled-box #'(5.0 . 8.3) #'(0.5 . 1.2) #0
}
breakBeamSix = \markup {
                   \with-dimensions #'(2 . 7) #'(0 . 0)
                   \with-color #white
                   \filled-box #'(5.2 . 8.2) #'(0.5 . 1.2) #0
}
breakBeamSep = \markup {
                   \with-dimensions #'(2 . 7) #'(0 . 0)
                   \with-color #white
                   \filled-box #'(5.2 . 8.5) #'(0.5 . 1.2) #0
}
legendOne = \markup { \center-align \smaller "doux et soutenu" }
legendTwo = \markup { \center-align \italic \smaller "doux mais en dehors" }


%}
