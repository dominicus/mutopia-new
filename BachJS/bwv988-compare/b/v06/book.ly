\version "2.18.0"

\include "../common/v06/guitar1.ly"
\include "../common/v06/guitar2.ly"
\include "../common/v06/guitar3.ly"

global = {
  \time 3/8
  \clef "G_8"
  \key g \major
}

\bookpart {

    \paper { print-first-page-number = ##t }

    \header {
	title = "Variation 06" 
	subtitle = "  " 
%	subsubtitle = "  " 
%	meter = \markup \column { "Canon at the Second" \null }
	meter = "Canon at the Second"
%	piece = "   "
%	poet = "   "
	copyright = \markup {
			 \fill-line {
			     \tiny {
				\line {Steve Shorter (2014). Hajo Delzelski (2008). \epsfile #X #10 #'"/by-sa.eps" }
			     }
		        }
		}
    }

    \tocItem \markup { "Variation 06" \hspace #10 "Canon at the Second" }

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

	\layout {
            \context {
                \Score
                    %\override NonMusicalPaperColumn #'line-break-permission = ##f
                    \override NonMusicalPaperColumn #'page-break-permission = ##f
            }
        }
    }
}

