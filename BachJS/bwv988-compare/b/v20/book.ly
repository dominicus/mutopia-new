\version "2.18.0"

\include "../common/v20/spacing-bk.ly"
\include "../common/v20/guitar1.ly"
\include "../common/v20/guitar2.ly"

global = {
  \time 3/4
  \key g \major
  \clef "G_8"
}


\bookpart {

    \paper {
	print-first-page-number = ##t 
	system-system-spacing =
	    #'((basic-distance . 25)
	       (minimum-distance . 15)
	       (padding . 4)
	       (stretchability . 12))
    }

    \header {
	title = "Variation 20"
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

    \tocItem \markup { Variation 20 }

    \score {
	\new StaffGroup \with {
	    \override StaffGrouper #'staff-staff-spacing =
		#'((basic-distance . 14)
                   (minimum-distance . 10)
                   (padding . 0))
            }
	<<
	    \new Staff << \new Voice { \spacing } \new Voice { \global \guitarone } >>
	    \new Staff << \global \guitartwo >>
	>>

	\layout {
            \context {
                \Score
                    \override NonMusicalPaperColumn #'line-break-permission = ##f
                    \override NonMusicalPaperColumn #'page-break-permission = ##f
            }
        }
    }
 }

