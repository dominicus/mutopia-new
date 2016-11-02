 \once \override Script #'padding = #1

    \once \override Tie #'control-points = #'((2.0 . 4.0) (4 . 3.0) (10 . 3.0) (12.5 . 4.0))
    \once \override Slur #'control-points = #'((2.0 . 4.0) (4 . 3.0) (10 . 3.0) (12.5 . 4.0))

	\new StaffGroup \with {
	    \override StaffGrouper #'staff-staff-spacing =
		#'((basic-distance . 12)
                   (minimum-distance . 8)
                   (padding . 6))
            }
	<<
	    \new Staff << \global \guitarone >>
	    \new Staff << \global \guitartwo >>
	>>

	\layout { }

	\layout {
            \context {
                \Score
                    %\override NonMusicalPaperColumn #'line-break-permission = ##f
                    \override NonMusicalPaperColumn #'page-break-permission = ##f
            }
        }
        <<
            \new Staff << \global \guitarone >>
            \new Staff << \global \guitartwo >>
        >>


 \scaleDurations #'(4 . 6) { }
pdftk A=bwv-988.pdf B=orig_goldberg_title9X12.pdf cat  A1-2 B A3-end output output.pdf
