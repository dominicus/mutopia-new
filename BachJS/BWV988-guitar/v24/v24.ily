\version "2.18.2"

\include "spacing-bk.ily"
\include "guitar1.ily"
\include "guitar2.ily"
\include "guitar3.ily"

global = {
  \time 9/8
  \key g \major
  \clef "G_8"
}

\bookpart {

    \paper {
        print-first-page-number = ##t
        top-system-spacing.basic-distance = #15
    }

    \header {
	title = "Variation 24"
%	subtitle = "  "
%	subsubtitle = "  "
	meter = \markup \column { "Canon at the Octave" \null }

    }

    \tocItem \markup { "Variation 24" \hspace #10 "Canon at the Octave" }

    \score {
	\new StaffGroup {
	<<
	    \new Staff << \new Voice { \spacing } \new Voice { \global \guitarone } >>
	    \new Staff << \global \guitartwo >>
	    \new Staff << \global \guitarthree >>
	>>
	}

	\layout {
            \context {
                \Score
                    \override NonMusicalPaperColumn #'line-break-permission = ##f
                    \override NonMusicalPaperColumn #'page-break-permission = ##f
            }
        }
    }
} 

