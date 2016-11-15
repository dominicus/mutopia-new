\version "2.18.0"

\include "../common/v23/spacing-bk.ly"
\include "../common/v23/guitar1.ly"
\include "../common/v23/guitar2.ly"

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
	title = "Variation 23"
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

    \tocItem \markup { Variation 23 }

    \score {
	\new StaffGroup \with {
            \override StaffGrouper #'staff-staff-spacing =
                #'((basic-distance . 12)
                   (minimum-distance . 5)
                   (padding . 4)
                   (stretchability . 8))
        }
	<<
	    \new Staff << \new Voice { \spacing } \new Voice { \global \guitarone } >>
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
