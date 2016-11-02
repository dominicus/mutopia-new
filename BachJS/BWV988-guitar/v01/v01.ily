\version "2.18.2"

\include "guitar1.ily"
\include "guitar2.ily"

global = {
  \time 3/4
  \key g \major
  \clef "G_8"
}

\bookpart {

    \paper { 
      print-first-page-number = ##t
      ragged-bottom = ##f
    }

    \header {
	title = "Variation 01"
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

