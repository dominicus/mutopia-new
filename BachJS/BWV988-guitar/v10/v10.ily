\version "2.18.2"

\include "guitar1.ily"
\include "guitar2.ily"
\include "guitar3.ily"
\include "guitar4.ily"

global = {
  \time 2/2
  \key g \major
  \clef "G_8"
}

\bookpart {

    \paper {
	print-first-page-number = ##t
	system-system-spacing =
	    #'((basic-distance . 22)
	       (minimum-distance . 12)
	       (padding . 4)
	       (stretchability . 12))
    }

    \header {
	title = "Variation 10"
	subtitle = " "
%	subsubtitle = " "
	poet = "Fughetta"
	meter = "  "
    }

    \tocItem \markup { "Variation 10" \hspace #10 "Fughetta" }

    \score {
	\new StaffGroup {
	<<
	    \new Staff << \global \guitarone >>
	    \new Staff << \global \guitartwo >>
	    \new Staff << \global \guitarthree >>
	    \new Staff << \global \guitarfour >>
	>>
	}

	\layout { }
    }
}

