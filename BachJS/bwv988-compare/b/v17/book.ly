\version "2.18.0"

\include "../common/v17/guitar1.ly"
\include "../common/v17/guitar2.ly"

global = {
  \time 3/4
  \key g \major
  \clef "G_8"
}


\bookpart {

    \paper {
	print-first-page-number = ##t 
	system-count = #10
    }

    \header {
	title = "Variation 17"
	subtitle = "   "
	subsubtitle = "   "
	copyright = \markup {
			 \fill-line {
			     \tiny {
				\line {Steve Shorter (2014). Hajo Delzelski (2008). \epsfile #X #10 #'"/by-sa.eps" }
			     }
		        }
		}
    }

    \tocItem \markup { Variation 17 }

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

