\version "2.18.0"

\include "../common/v15/spacing-bk.ly"
\include "../common/v15/guitar1.ly"
\include "../common/v15/guitar2.ly"
\include "../common/v15/guitar3.ly"

global = {
  \time 2/4
  \key g \minor
  \clef "G_8"
}

\bookpart {

    \paper {
	print-first-page-number = ##t 
	system-system-spacing =
	    #'((basic-distance . 28)
	       (minimum-distance . 25)
	       (padding . 4))
%	       (stretchability . 12))
    }

    \header {
	title = "Variation 15"
	subtitle = "   "
%	subsubtitle = "   "
	poet = "Canon at the Fifth"
	piece  = "   "
	meter  = "   "
	copyright = \markup {
			 \fill-line {
			     \tiny {
				\line {Steve Shorter (2014). Hajo Delzelski (2008). \epsfile #X #10 #'"/by-sa.eps" }
			     }
		        }
		}
    }

    \tocItem \markup { "Variation 15" \hspace #10 "Canon at the Fifth" }

    \score {
	\new StaffGroup \with {
	    \override StaffGrouper #'staff-staff-spacing =
		#'((basic-distance . 12)
                   (minimum-distance . 8)
                   (padding . 4))
            }
	<<
	    \new Staff << \new Voice { \spacing } \new Voice { \global \guitarone } >>
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

