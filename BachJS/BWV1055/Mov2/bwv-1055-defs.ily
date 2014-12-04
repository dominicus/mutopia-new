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
scrCourtRevTurn = \markup { \center-align \concat { \hspace #0.6 "(" \hspace #0.2 \raise #0.6 \small \musicglyph #"scripts.reverseturn" \hspace #0.2 ")" } }
scrTutti = \markup \tiny "Tutti"
scrPiano = \markup \small \italic "piano"
scrPianoPar = \markup \small \italic "(piano)"
scrForte = \markup \small \italic "forte"
scrFortePar = \markup \small \italic "(forte)"
scrSolo = \markup \small "Solo"

scrNoPad = {
  \once \override TextScript.staff-padding = #'()
  \once \override TextScript.outside-staff-padding = #0.1
}
bigAccidental = \once \override FiguredBass.BassFigure #'font-size = #'2
