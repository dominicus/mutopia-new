\version "2.18.2"

\include "guitar1.ily"
\include "guitar2.ily"
\include "guitar3.ily"

global = {
  \time 12/8
  \key g \major
  \clef "G_8"
}

\bookpart {

    \paper {
      print-first-page-number = ##t
      ragged-bottom = ##f
    }

    \header {
	title = "Variation 03"
	meter = \markup \column { "Canon at the Unison" \null }
    }

    \tocItem \markup { "Variation 03" \hspace #10 "Canon at the Unison" }

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

