\version "2.18.0"

\include "../common/v30/guitar1.ly"
\include "../common/v30/guitar2.ly"
\include "../common/v30/guitar3.ly"
\include "../common/v30/guitar4.ly"

global = {
  \time 4/4
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
	title = "Variation 30"
	subtitle = "  "
	subsubtitle = "  "
	meter = \markup \column { "Quodlibet" \null }
%	poet = "Quodlibet"
	copyright = \markup {
			 \fill-line {
			     \tiny {
				\line {Steve Shorter (2014). Hajo Delzelski (2008). \epsfile #X #10 #'"/by-sa.eps" }
			     }
		        }
		}
    }

    \tocItem \markup { "Variation 30" \hspace #10 "Quodlibet" }

   \score {
	\new StaffGroup {
	<<
	    \new Staff << \global \guitarone >>
	    \new Staff << \global \guitartwo >>
	    \new Staff << \global \guitarthree >>
	    \new Staff << \global \guitarfour >>
	>>
	}

	\layout { }
    }
}

