\version "2.18.0"

\include "../common/v13/guitar1.ly"
\include "../common/v13/guitar2.ly"
\include "../common/v13/guitar3.ly"

global = {
  \time 3/4
  \key g \major
  \clef "G_8"
}

\bookpart {

    \paper { print-first-page-number = ##t }

    \header {
	title = "Variation 13"
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

    \tocItem \markup { Variation 13 }

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

