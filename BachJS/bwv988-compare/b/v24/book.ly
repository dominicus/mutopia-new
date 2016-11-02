\version "2.18.0"

\include "../common/v24/spacing-bk.ly"
\include "../common/v24/guitar1.ly"
\include "../common/v24/guitar2.ly"
\include "../common/v24/guitar3.ly"

global = {
  \time 9/8
  \key g \major
  \clef "G_8"
}

\bookpart {

    \paper { print-first-page-number = ##t }

    \header {
	title = "Variation 24"
%	subtitle = "  "
%	subsubtitle = "  "
	meter = \markup \column { "Canon at the Octave" \null }
	poet = "   "
	piece = "  "
	copyright = \markup {
			 \fill-line {
			     \tiny {
				\line {Steve Shorter (2014). Hajo Delzelski (2008). \epsfile #X #10 #'"/by-sa.eps" }
			     }
		        }
		}
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

