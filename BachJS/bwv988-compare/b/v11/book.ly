\version "2.18.0"

\include "../common/v11/guitar1.ly"
\include "../common/v11/guitar2.ly"

global = {
  \time 12/16
  \clef "G_8"
  \key g \major
}

\bookpart {

    \paper {
	system-count = #10
	print-first-page-number = ##t 
    }

    \header {
	title = "Variation 11"
	subtitle = " "
	subsubtitle = " "
	copyright = \markup {
			 \fill-line {
			     \tiny {
				\line {Steve Shorter (2014). Hajo Delzelski (2008). \epsfile #X #10 #'"/by-sa.eps" }
			     }
		        }
		}
    }

    \tocItem \markup { Variation 11 }

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

