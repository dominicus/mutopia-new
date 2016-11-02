\version "2.18.0"

\include "../common/v01/guitar1.ly"
\include "../common/v01/guitar2.ly"

global = {
  \time 3/4
  \key g \major
  \clef "G_8"
}

\bookpart {

    \paper { print-first-page-number = ##t }

    \header {
	title = "Variation 01"
	subtitle = "   "
	subsubtitle = "   "
	copyright = \markup {
			 \fill-line {
			     \tiny {
				\line {Steve Shorter (2014). JD Erickson (2007). \epsfile #X #10 #'"by-sa.eps" }
			     }
		        }
		}
    }

   \tocItem \markup { Variation 01 }

    \score {
	\new StaffGroup \with {
	    \override StaffGrouper #'staff-staff-spacing =
		#'((basic-distance . 11)
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

