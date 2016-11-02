\version "2.18.0"

\include "../common/v09/guitar1.ly"
\include "../common/v09/guitar2.ly"
\include "../common/v09/guitar3.ly"

global = {
  \time 4/4
  \key g \major
  \clef "G_8"
}

\bookpart {

    \paper {
	print-first-page-number = ##t 
	system-system-spacing =
	    #'((basic-distance . 25)
	       (minimum-distance . 14)
	       (padding . 4)
	       (stretchability . 12))
    }

    \header {
	title = "Variation 09"
	subtitle = "   "
%	subsubtitle = "   "
	meter = \markup \column { "Canon at the Third" \null }
	meter = "Canon at the Third"
	piece = "   "
	poet = "   "
	copyright = \markup {
			 \fill-line {
			     \tiny {
				\line {Steve Shorter (2014). Hajo Delzelski (2008). \epsfile #X #10 #'"/by-sa.eps" }
			     }
		        }
		}
    }

    \tocItem \markup { "Variation 09" \hspace #10 "Canon at the Third" }

    \score {
	\new StaffGroup \with {
	    \override StaffGrouper #'staff-staff-spacing =
		#'((basic-distance . 10)
                   (minimum-distance . 8)
                   (padding . 4))
            }
	<<
	    \new Staff << \global \guitarone >>
	    \new Staff << \global \guitartwo >>
	    \new Staff << \global \guitarthree >>
	>>

	\layout { }
    }
}

