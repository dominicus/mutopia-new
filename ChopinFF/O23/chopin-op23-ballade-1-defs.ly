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
sfSforzato = \markup { \dynamic "fz" \musicglyph #"scripts.sforzato" }
crescTxt = \markup \italic \larger "cresc."
crescTiny = \markup \italic \small "cresc."
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
pocoRitenSpanner = {
  \override TextSpanner #'(bound-details left text) = \markup { \italic \larger "poco riten." }
  \override TextSpanner #'(bound-details left-broken text) = ##f
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
setRestDirDown = \override Rest #'direction = #down
setRestDirUp = \override Rest #'direction = #up

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
