\version "2.18.2"

\include "guitar1.ily"
\include "guitar2.ily"

global = {
  \time 6/8
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
	ragged-bottom = ##f
	markup-system-spacing.basic-distance = #2
    }

    \header {
	title = "Variation 07"
%	subtitle = "   "
	meter = "At the tempo of a Giga"
    }

    \tocItem \markup { "Variation 07" \hspace #10 "At the tempo of a Giga" }

    \score {
	\new StaffGroup \with {
	    \override StaffGrouper #'staff-staff-spacing =
		#'((basic-distance . 10)
                   (minimum-distance . 8)
                   (padding . 6))
            }
	<<
	    \new Staff << \global \guitarone >>
	    \new Staff << \global \guitartwo >>
	>>

	\layout { }
    }
}

