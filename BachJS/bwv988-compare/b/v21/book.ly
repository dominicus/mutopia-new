\version "2.18.0"

\include "../common/v21/guitar1.ly"
\include "../common/v21/guitar2.ly"
\include "../common/v21/guitar3.ly"

global = {
  \time 4/4
  \key g \minor
  \clef "G_8"
}

\bookpart {

    \paper {
	page-count = #2
	print-first-page-number = ##t
	system-system-spacing =
	    #'((basic-distance . 25)
	       (minimum-distance . 14)
	       (padding . 4)
	       (stretchability . 12))
    }

    \header {
	title = "Variation 21"
%	subtitle = "   "
%	subsubtitle = "   "
	meter = "Canon at the Seventh"
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

    \tocItem \markup { "Variation 21" \hspace #10 "Canon at the Seventh" }

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

