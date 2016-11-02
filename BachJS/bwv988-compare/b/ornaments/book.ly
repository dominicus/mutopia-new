\version "2.18.0"

\include "../common/ornaments/guitar1.ly"
\include "../common/ornaments/guitar2.ly"

global = {
  \clef "G_8"
}

\bookpart {

    \paper { indent = 0 }

    \header {
	title = "Table of Ornaments"
	subtitle = " "
	subsubtitle = " "
	copyright = \markup {
			 \fill-line {
			     \tiny {
				\line {"Steve Shorter (2014). All rights reserved."}
			     }
		        }
		}
    }

   \tocItem \markup { Table of Ornaments }


\markup { \column {
	" "
	" "
	\fontsize #1 {
	" "
	"         This table of ornaments is taken from J. S. Bach's \"Klavierbüchlein für Wilhelm Friedemann"
	"Bach\", written for Bach's eldest son. It was meant to be schematic rather than literal."
	"Ornaments in this period were typically improvised. Even when notated the length of the"
	"ornament and its articulation was dependent on its context and the performers preference."
	" "
	" "
	" "
	" "
	" "
	" "
	}
    }
}
    \score {
	\new StaffGroup \with {
	    \override StaffGrouper #'staff-staff-spacing =
		#'((basic-distance . 10)
		   (minimum-distance . 8)
		   (padding . 8))
            }
	<<
	    \new Staff \with { \remove "Time_signature_engraver" }
		<< \global \guitarone >>
	    \new Staff \with { \remove "Time_signature_engraver" }
		<< \global \guitartwo >>
	>>
	

	\layout { }
    }
}

