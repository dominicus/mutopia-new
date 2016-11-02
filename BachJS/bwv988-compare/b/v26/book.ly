\version "2.18.0"

\include "../common/v26/guitar1.ly"
\include "../common/v26/guitar2.ly"
\include "../common/v26/guitar3.ly"

global = {
   \key g \major
   \clef "G_8"
}

\bookpart {

    \paper { print-first-page-number = ##t }

    \header {
	title = "Variation 26"
	subtitle = "   "
	subsubtitle = "   "
	poet = "   "
	copyright = \markup {
			 \fill-line {
			     \tiny {
				\line {Steve Shorter (2014). Hajo Delzelski (2008). \epsfile #X #10 #'"/by-sa.eps" }
			     }
		        }
		}
    }

    \tocItem \markup { Variation 26 }

    \score {
	\new StaffGroup {
	<<
	    \new Staff << \global \guitarone >>
	    \new Staff << \global \guitartwo >>
	    \new Staff << \global \guitarthree >>
	>>
	}
	\layout { }
    }
}

