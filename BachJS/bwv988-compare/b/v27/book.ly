\version "2.18.0"

\include "../common/v27/guitar1.ly"
\include "../common/v27/guitar2.ly"

global = {
  \time 6/8
  \key g \major
  \clef "G_8"
}

\bookpart {

    \paper {
	print-first-page-number = ##t
	page-count = #2
    }

    \header {
	title = "Variation 27"
%	subtitle = "  "
%	subsubtitle = "  "
	meter = "Canon at the Ninth"
	poet = "   "
	piece = "   "
	copyright = \markup {
			 \fill-line {
			     \tiny {
				\line {Steve Shorter (2014). Hajo Delzelski (2008). \epsfile #X #10 #'"/by-sa.eps" }
			     }
		        }
		}
    }

    \tocItem \markup { "Variation 27" \hspace #10 "Canon at the Ninth" }

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

