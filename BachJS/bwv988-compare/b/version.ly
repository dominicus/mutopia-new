\version "2.18.0"

date = #(strftime "%d-%m-%Y" (localtime (current-time)))

\bookpart {

    \paper { print-first-page-number = ##f }

    \header {

	tagline = \markup {
	\simple #(strftime "%x" (localtime (current-time)))
	Version 0.99b

    }

 }

  \markup " "
    
}


