\version "2.18.2"

\include "guitar1.ily"
\include "guitar2.ily"
\include "guitar3.ily"

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
	title = "Variation 13"

    }

    \tocItem \markup { Variation 13 }

    \score {
	\new StaffGroup {
	<<
	\new Staff << \global \guitarone >>
	\new Staff << \global \guitartwo >>
	\new Staff << \global \guitarthree >>
	>>
	}

	\layout { }
     }
 }

