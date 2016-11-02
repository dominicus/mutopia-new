\version "2.18.0"

\include "../common/v05/guitar1.ly"
\include "../common/v05/guitar2.ly"

global = {
  \time 3/4
  \key g \major
  \clef "G_8"
}

\bookpart {

    \paper {
	print-first-page-number = ##t
	system-system-spacing =
	    #'((basic-distance . 18)
	       (minimum-distance . 14)
	       (padding . 4)
	       (stretchability . 12))
    }

    \header {
	title = "Variation 05"
	subtitle = "  "
	subsubtitle = "  "
	piece = "  "
	poet = "  "
	copyright = \markup {
			 \fill-line {
			     \tiny {
				\line {Steve Shorter (2014). Hajo Delzelski (2008). \epsfile #X #10 #'"/by-sa.eps" }
			     }
		        }
		}
    }

    \tocItem \markup { Variation 05 }

    \score {
	\new StaffGroup \with {
	    \override StaffGrouper #'staff-staff-spacing =
		#'((basic-distance . 13)
		   (minimum-distance . 8)
		   (padding . 2))
            }
	<<
	    \new Staff << \global \guitarone >>
	    \new Staff << \global \guitartwo >>
	>>

	\layout { }
    }
 }

