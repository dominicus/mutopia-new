\version "2.18.0"

\include "../common/v04/guitar1.ly"
\include "../common/v04/guitar2.ly"
\include "../common/v04/guitar3.ly"
\include "../common/v04/guitar4.ly"

global = {
  \time 3/8
  \key g \major
  \clef "G_8"
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
	title = "Variation 04"
	subtitle = "   "
	subsubtitle = "   "
	copyright = \markup {
			 \fill-line {
			     \tiny {
				\line {Steve Shorter (2014). Hajo Delzelski (2008). \epsfile #X #10 #'"/by-sa.eps" }
			     }
		        }
		}
    }

    \tocItem \markup { Variation 04 }

    \score {
	\new StaffGroup \with {
	    \override StaffGrouper #'staff-staff-spacing =
		#'((basic-distance . 10)
                   (minimum-distance . 6)
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

