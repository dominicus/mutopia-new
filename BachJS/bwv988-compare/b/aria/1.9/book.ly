\version "2.16.2"

\include "../common/aria/1.9/spacing-bk.ly"
\include "../common/aria/1.9/guitar1.ly"
\include "../common/aria/1.9/guitar2.ly"

global = {
  \time 3/4
  \key g \major
 \set harmonicDots = ##t
}

\bookpart {
	\paper {
	print-first-page-number = ##t
	page-count = #2
	system-system-spacing =
	    #'((basic-distance . 25)
	       (minimum-distance . 14)
	       (padding . 4)
	       (stretchability . 12))
	}

    \header {
%	title = \markup \column { \null \fontsize #6 \override #'(font-name . "URW Bookman L") "Aria" }
	title = \markup \column { \null \fontsize #5 \override #'(font-name . "FreeSerif") "Aria" }
	subtitle = "  "
	subsubtitle = "  "
	poet = ""
	meter = ""
	piece = "1.9"
	style = "Baroque"
	copyright = \markup {
			 \fill-line {
			     \tiny {
				\line {Steve Shorter (2014). JD Erickson (2007). \epsfile #X #10 #'"by-sa.eps" }
			     }
		        }
		}
	maintainer = "Steve Shorter"
	lastupdated = "2013/05"
    } 

\score {
    \new StaffGroup \with {
		\override StaffGrouper #'staff-staff-spacing =
                #'((basic-distance . 13)
                   (minimum-distance . 8)
                   (padding . 2))
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

