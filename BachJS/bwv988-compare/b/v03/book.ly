\version "2.18.0"

\include "../common/v03/guitar1.ly"
\include "../common/v03/guitar2.ly"
\include "../common/v03/guitar3.ly"

global = {
  \time 12/8
  \key g \major
  \clef "G_8"
}

\bookpart {

    \paper { print-first-page-number = ##t }

    \header {
	title = "Variation 03"
%        subtitle = "  "
%        subsubtitle = "  "
	opus = "   "
	meter = \markup \column { "Canon at the Unison" \null }
	poet  = "   "
	piece = "  "
	copyright = \markup {
			 \fill-line {
			     \tiny {
				\line {Steve Shorter (2014). Hajo Delzelski (2008). \epsfile #X #10 #'"/by-sa.eps" }
			     }
		        }
		}
    }

    \tocItem \markup { "Variation 03" \hspace #10 "Canon at the Unison" }

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

