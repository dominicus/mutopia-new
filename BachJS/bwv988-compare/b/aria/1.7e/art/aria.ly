\version "2.12.3"

\paper {
       between-system-padding = #9.0
       between-system-space = #2.0

       after-title-space = 2.0\cm
       head-separation = 4.0\cm
       between-title-space = 6.0\cm

%       page-limit-inter-system-space = ##t
%       page-limit-inter-system-space-factor = 1.2
       between-system-space = 3.0\cm

       print-page-number = ##f
       page-count = #1
       #(set-paper-size "gooeytar_12X30")

%       ragged-last-bottom = ##f
%       ragged-bottom = ##f
       system-count = #9
}

\include "guitar1.ly"
\include "guitar2.ly"

\header {
  title = \markup \center-column { \fontsize #3.5 "Aria" }
  subtitle = \markup \center-column { \fontsize #1.0 "   "  \fontsize #2.3  "\"Goldberg\"" }
 % composer = "J. S. Bach (1685-1750)"
  composer =  \markup \center-column {
                     \null
                     \null
                     \null
                     \null
                     \fontsize #2.0 "J. S. Bach (1685-1750)"
                   }
  opus = "   "
  arranger = ##f
  piece = "     "
  style = "Baroque"
  maintainer = "Steve Shorter"
  lastupdated = "2012/Aug/15"
  version = "2.12.3"
 footer = "_ footer"
}


\score {
 
 \new PianoStaff {
 <<

 \set PianoStaff.instrumentName = #"Guitar "

 \context Staff = "one" {
 \guitarone
 }

 \context Staff = "two" {
 \guitartwo
 }

 >>
 
}

 \layout { }
}

