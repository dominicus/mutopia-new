\version "2.18.2"

\include "guitar1.ily"
\include "guitar2.ily"
\include "guitar3.ily"

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

