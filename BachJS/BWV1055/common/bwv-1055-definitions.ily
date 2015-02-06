\version "2.18.2"

staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"

hideF = \tweak #'stencil ##f \f
hideFF = \tweak #'stencil ##f \ff
hideMF = \tweak #'stencil ##f \mf
hideMP = \tweak #'stencil ##f \mp
hideP = \tweak #'stencil ##f \p
hidePP = \tweak #'stencil ##f \pp
hidePPP = \tweak #'stencil ##f \ppp
hidePPPP = \tweak #'stencil ##f \pppp

scrCourtMordent = \markup { \center-align \concat { \hspace #0.6 "(" \hspace #0.2 \raise #0.6 \small \musicglyph #"scripts.mordent" \hspace #0.2 ")" } }
scrCourtMordStem = \markup { \center-align \concat { \hspace #0.6 "(" \hspace #0.2 \raise #0.6 \small \musicglyph #"scripts.mordent" \hspace #0.2 ")" } }
scrCourtMordentRight = \markup { \center-align \concat { \hspace #1.4 "(" \hspace #0.2 \raise #0.6 \small \musicglyph #"scripts.mordent" \hspace #0.2 ")" } }
scrCourtTurn = \markup { \center-align \concat { \hspace #0.6 "(" \hspace #0.2 \raise #0.6 \small \musicglyph #"scripts.turn" \hspace #0.2 ")" } }
scrCourtRevTurn = \markup { \center-align \concat { \hspace #0.6 "(" \hspace #0.2 \raise #0.6 \small \musicglyph #"scripts.reverseturn" \hspace #0.2 ")" } }
scrCourtPrall = \markup { \center-align \concat { \hspace #0.6 "(" \hspace #0.2 \raise #0.6 \small \musicglyph #"scripts.prall" \hspace #0.2 ")" } }
scrCourtPrallStem = \markup { \center-align \concat { \hspace #1.9 "(" \hspace #0.2 \raise #0.6 \small \musicglyph #"scripts.prall" \hspace #0.2 ")" } }
scrCourtPrallPrall = \markup { \center-align \concat { \hspace #0.6 "(" \hspace #0.2 \raise #0.6 \small \musicglyph #"scripts.prallprall" \hspace #0.2 ")" } }
scrCourtTrill = \markup { \center-align \concat { \hspace #0.6 "(" \hspace #0.2 \raise #0.0 \small \musicglyph #"scripts.trill" \hspace #0.2 ")" } }
scrTutti = \markup \tiny \bold "Tutti"
scrTuttiCtr = \markup { \center-align \tiny \bold \whiteout "Tutti" }
scrTuttiCtrPar = \markup { \center-align \tiny \bold \whiteout "(Tutti)" }
scrPiano = \markup { \small \concat { \dynamic p \italic \bold "iano" } }
scrPianoWhite = \markup { \small \whiteout \concat { \dynamic p \italic \bold "iano" } }
scrPianoPar = \markup { \small \concat { \italic \bold "(" \dynamic p \italic \bold "iano)" } }
scrForte = \markup { \small \concat { \dynamic f \italic \bold "orte" } }
scrForteLeft = \markup { \center-align \small \concat { \hspace #2 \dynamic f \italic \bold "orte" } }
scrFortePar = \markup { \small \concat { \italic \bold "(" \dynamic f \italic \bold "orte)" } }
scrForteParCtr = \markup { \center-align \small \concat { \italic \bold "(" \dynamic f \italic \bold "orte)" } }
scrSolo = \markup \small \bold "Solo"
scrSpiccato = \markup { \center-align \concat { \hspace #4  \small \bold "spiccato" } }
scrSpiccatoLeft = \markup \small \bold "spiccato"
scrSoloPiano = \markup { \override #'(baseline-skip . 0) \center-align \center-column \small \whiteout { \bold "  Solo  " \concat { \dynamic p \italic \bold "iano" } } }
scrSoloPianoLeftAlg = \markup { \override #'(baseline-skip . 0) \left-align \center-column \small \whiteout { \bold "  Solo  " \concat { \dynamic p \italic \bold "iano" } } }
scrTuttiSpiccato = \markup { \override #'(baseline-skip . 0.2) \left-align \left-column \small \bold \whiteout {  "Tutti" "spiccato" } }

scrNoPad = {
  \once \override TextScript.staff-padding = #'()
  \once \override TextScript.outside-staff-padding = #0.1
}

nachschlag = {
  \shape #'((0 . 0.2) (0 . 0) (0 . 0) (0 . 0)) Slur
  \once \override Slur.height-limit = 0.5
  \once \override NoteHead.font-size = -5
  \once \override Flag.font-size = -5
  \once \override Stem.length = 4
  \once \override Beam.beam-thickness = 0.3
  \once \override Beam.length-fraction = 0.5
  \once \override Beam.shorten = 1
}

setUpPrallSpanner = {
  \override TrillSpanner.bound-details.left.text = \markup{ \raise #0.9 \halign #-1.1 \smaller \musicglyph #"scripts.upprall" }
  \override TrillSpanner.bound-details.left.padding = #'0
  \override TrillSpanner.to-barline = ##t }

bigAccidental = \once \override FiguredBass.BassFigure #'font-size = #'2

setBeatStructureQuarter = {
  \set Voice.baseMoment = #(ly:make-moment 1/4)
  \set Voice.beatStructure = #'(1 1 1 1)
}

setBeatStructureHalf = {
  \set Voice.baseMoment = #(ly:make-moment 1/2)
  \set Voice.beatStructure = #'(1 1)
}

setBeatStructureEigth = {
  \set Voice.baseMoment = #(ly:make-moment 1/8)
  \set Voice.beatStructure = #'(1 1 1)
  \set Timing.beamExceptions = #'()
}

doKneedBeam = \once \override Beam.auto-knee-gap = #1
flatBeam = \once \override Beam.damping = #+inf.0
lessBeamSlant = \once \override Beam.damping = #2

posTextScriptA = \once \override TextScript.extra-offset = #'(0 . -1.9)
posTextScriptB = \once \override TextScript.extra-offset = #'(0 . -6.6)
posTextScriptC = \once \override TextScript.extra-offset = #'(0 . -0.3)
posTextScriptD = \once \override TextScript.extra-offset = #'(1.4 . 0)
posTextScriptE = \once \override TextScript.extra-offset = #'(-2.0 . -0.3)

alignBeamOne = \once \override Beam.positions = #'(0.1 . -0.1)
alignBeamTwo = \once \override Beam.positions = #'(-2.7 . -3.7)
alignBeamTre = \once \override Beam.positions = #'(1.9 . 1.9)

scriptAboveSlur = \once \override Script.avoid-slur = #'outside

smallNotehead = {
  \override NoteHead.font-size = #-4
  \override Accidental.font-size = #-4
  \override Beam.beam-thickness = #0.35
  \override Beam.length-fraction = #0.7 }
noteLeft = \once \override NoteColumn #'force-hshift = #-0.7
longerStem = \once \override Stem #'length-fraction = #(magstep 2)
hideAccidental = \once \override Voice.Accidental.stencil = ##f

hideTupletBracket = \override TupletBracket.bracket-visibility = ##f