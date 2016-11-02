\version "2.18.0"

\bookpart {
    \paper {
	tocTitleMarkup = \markup \fontsize #6 \column {
	    \null
	    \null
	    \fill-line { \null \bold "Table of Contents" \null }
	    \null
	    \null
	    \null
	}
	tocItemMarkup = \markup \fontsize #3 \fill-with-pattern #1 #RIGHT . 
	    \fromproperty #'toc:text \fromproperty #'toc:page
	
%	top-margin = 20 \mm
	bottom-margin = 30 \mm
	left-margin = 30 \mm
	right-margin = 30 \mm
    }

    \markuplist \table-of-contents
}


