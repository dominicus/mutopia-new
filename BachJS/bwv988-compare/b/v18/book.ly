\version "2.18.0"

\include "../common/v18/spacing-bk.ly"
\include "../common/v18/guitar1.ly"
\include "../common/v18/guitar2.ly"
\include "../common/v18/guitar3.ly"

global = {
  \time 2/2
  \key g \major
  \clef "G_8"
}

\bookpart {

    \paper { print-first-page-number = ##t }

    \header {
	title = "Variation 18"
%	subtitle = "   "
%	subsubtitle = "   "
	meter = "Canon at the Sixth"
        poet  = "   "
        piece = "  "
	copyright = \markup {
			 \fill-line {
			     \tiny {
				\line {Steve Shorter (2014). Benjamin Esham (2007). \epsfile #X #10 #'"/by-sa.eps" }
			     }
		        }
		}
    }

    \tocItem \markup { "Variation 18" \hspace #10 "Canon at the Sixth" }

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
                    %\override NonMusicalPaperColumn #'line-break-permission = ##f
                    \override NonMusicalPaperColumn #'page-break-permission = ##f
            }
        }
    }
 }

