\version "2.18.0"

\bookpart {

    \paper {
	print-first-page-number = ##f
    }

    \header { tagline = "" }

 \pointAndClickOff

 \markup { \fill-line {  \center-column {
    \vspace #16
    \typewriter \fontsize #6 { "For" }
    \vspace #3
    \fontsize #6 \italic {
                   " "
                   "Eli Kassner"
                   " "
                   "and"
                   " "
                   "Glenn Gould"
    }
    \vspace #4
    \typewriter \fontsize #6 { "From" }
    \vspace #5
    \roman \fontsize #6 \italic { "The Guitar Society of Toronto Orchestra" }
   }
  }
 }
}


