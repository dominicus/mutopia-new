\version "2.18.0"

\include "../common/v25/guitar1.ly"
\include "../common/v25/guitar2.ly"
\include "../common/v25/guitar3.ly"

global = {
  \time 3/4
  \key g \minor
  \clef "G_8"
}

\bookpart {

    \paper { print-first-page-number = ##t }

    \header {
	title = "Variation 25"
	subtitle = "   "
	subsubtitle = "   "
	poet = "   "
	piece = "   "
	copyright = \markup {
			 \fill-line {
			     \tiny {
				\line {Steve Shorter (2014). Hajo Delzelski (2008). \epsfile #X #10 #'"/by-sa.eps" }
			     }
		        }
		}
    }

    \tocItem \markup { Variation 25 }

    \score {
	\new StaffGroup \with {
	    \override StaffGrouper #'staff-staff-spacing =
		#'((basic-distance . 12)
                   (minimum-distance . 8)
                   (padding . 2))
            }
	<<
	    \new Staff << \global \guitarone >>
	    \new Staff << \global \guitartwo >>
	    \new Staff << \global \guitarthree >>
	>>

	\layout { }
    }
 }

