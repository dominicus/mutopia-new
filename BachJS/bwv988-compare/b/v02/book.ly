\version "2.18.0"

\include "../common/v02/spacing-bk.ly"
\include "../common/v02/guitar1.ly"
\include "../common/v02/guitar2.ly"
\include "../common/v02/guitar3.ly"

global = {
  \time 2/4
  \key g \major
  \clef "G_8"
}

\bookpart {

    \paper {
	print-first-page-number = ##t
	top-system-spacing =
                #'((basic-distance . 20)
                   (minimum-distance . 10)
                   (padding . 6)
                   (stretchability . 12))
    }

    \header {
	title = "Variation 02"
	subtitle = "   "
	subsubtitle = "   "
	copyright = \markup {
			 \fill-line {
			     \tiny {
				\line {Steve Shorter (2014). JD Erickson (2007). \epsfile #X #10 #'"by-sa.eps" }
			     }
		        }
		}
    }

    \tocItem \markup { Variation 02 }

    \score {
	\new StaffGroup {
	<<
	    \new Staff << \new Voice { \spacing } \new Voice {\global \guitarone } >>
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

