\version "2.18.0"

\include "../common/v12/spacing-bk.ly"
\include "../common/v12/guitar1.ly"
\include "../common/v12/guitar2.ly"
\include "../common/v12/guitar3.ly"

global = {
  \time 3/4
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
    }


    \header {
	title = "Variation 12"
%	subtitle = "   "
%	subsubtitle = "   "
	meter = "Canon at the Fourth"
	poet = "  "
	piece = "  "
	copyright = \markup {
			 \fill-line {
			     \tiny {
				\line {Steve Shorter (2014). Hajo Delzelski (2008). \epsfile #X #10 #'"/by-sa.eps" }
			     }
		        }
		}
    }

    \tocItem \markup { "Variation 12" \hspace #10 "Canon at the Fourth" }

    \score {
	\new StaffGroup \with {
	    \override StaffGrouper #'staff-staff-spacing =
		#'((basic-distance . 10)
                   (minimum-distance . 6)
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

