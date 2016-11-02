\version "2.18.0"

\include "../common/v22/guitar1.ly"
\include "../common/v22/guitar2.ly"
\include "../common/v22/guitar3.ly"
\include "../common/v22/guitar4.ly"

global = {
  \time 2/2
  \clef "G_8"
  \key g \major
}

\bookpart {

    \paper {
	print-first-page-number = ##t
	system-system-spacing =
	    #'((basic-distance . 22)
	       (minimum-distance . 14)
	       (padding . 4)
	       (stretchability . 12))
     }

    \header {
	title = "Variation 22"
	subtitle = "  "
	subsubtitle = "  "
	copyright = \markup {
			 \fill-line {
			     \tiny {
				\line {Steve Shorter (2014). Hajo Delzelski (2008). \epsfile #X #10 #'"/by-sa.eps" }
			     }
		        }
		}
    }

    \tocItem \markup { Variation 22 }

    \score {
	\new StaffGroup \with {
	    \override StaffGrouper #'staff-staff-spacing =
		#'((basic-distance . 12)
                   (minimum-distance . 8)
                   (padding . 0))
            }
	<<
	    \new Staff << \global \guitarone >>
	    \new Staff << \global \guitartwo >>
	    \new Staff << \global \guitarthree >>
	    \new Staff << \global \guitarfour >>
	>>

	\layout { }
    }
 }

