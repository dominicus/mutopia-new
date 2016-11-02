\version "2.18.0"

\include "../common/v16/spacing-bk.ly"
\include "../common/v16/guitar1.ly"
\include "../common/v16/guitar2.ly"

global = {
  \key g \major
  \clef "G_8"
}

\bookpart {

    \paper {
	print-first-page-number = ##t 
	system-system-spacing =
	    #'((basic-distance . 26)
	       (minimum-distance . 14)
	       (padding . 4)
	       (stretchability . 12))
    }

    \header {
	title = "Variation 16"
	subtitle = "   "
	subsubtitle = "   "
	poet = "Overture"
	copyright = \markup {
			 \fill-line {
			     \tiny {
				\line {Steve Shorter (2014). Hajo Delzelski (2008). \epsfile #X #10 #'"/by-sa.eps" }
			     }
		        }
		}
    }

    \tocItem \markup { "Variation 16" \hspace #10 "Overture" }

    \score {
	\new StaffGroup \with {
            \override StaffGrouper #'staff-staff-spacing =
                #'((basic-distance . 7)
                   (minimum-distance . 5)
                   (padding . 4)
                   (stretchability . 7))
        }
	<<
	    \new Staff \with { \consists "Span_arpeggio_engraver" } << \global \guitarone >>
	    \new Staff << \new Voice { \spacing } \new Voice { \global \guitartwo } >>
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

