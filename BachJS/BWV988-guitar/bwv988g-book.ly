\version "2.18.2"

#(set-global-staff-size 18)
#(set-default-paper-size "letter")
#(ly:set-option 'relative-includes #t)

\header { maintainer = "Steve Shorter et.al." }
\include "mutopia-header.ily"

\include "./common/styles.ily"
\include "./common/definitions.ily"

%------ Cover Pages
\include "./common/cover.ily"
\include "./common/blank1.ily"
%------ Table of Contents
\include "./common/toc.ily"
%------ Introduction
\include "./common/intro.ily"
%------ Aria for 2 guitars
\header { maintainer = "Steve Shorter and J.D. Erickson" }
\include "mutopia-header.ily"
\include "./v00/1.7e/ariav1.7e.ily"
%------ Aria for 3 guitars
\include "./v00/1.8/ariav1.8.ily"
\include "./v01/v01.ily"
\include "./v02/v02.ily"
\header { maintainer = "Steve Shorter and Hajo Delzelski" }
\include "mutopia-header.ily"
\include "./v03/v03.ily"
\include "./v04/v04.ily"
\include "./v05/v05.ily"
\include "./v06/v06.ily"
\include "./v07/v07.ily"
\include "./v08/v08.ily"
\include "./v09/v09.ily"
\include "./v10/v10.ily"
\include "./v11/v11.ily"
\include "./v12/v12.ily"
\include "./v13/v13.ily"
\include "./v14/v14.ily"
\include "./v15/v15.ily"
\include "./v16/v16.ily"
\include "./v17/v17.ily"
\header { maintainer = "Steve Shorter and Benjamin Esham" }
\include "mutopia-header.ily"
\include "./v18/v18.ily"
\header { maintainer = "Steve Shorter and Hajo Delzelski" }
\include "mutopia-header.ily"
\include "./v19/v19.ily"
\include "./v20/v20.ily"
\include "./v21/v21.ily"
\include "./v22/v22.ily"
\include "./v23/v23.ily"
\include "./v24/v24.ily"
\include "./v25/v25.ily"
\include "./v26/v26.ily"
\include "./v27/v27.ily"
\include "./v28/v28.ily"
\include "./v29/v29.ily"
\include "./v30/v30.ily"
\header { maintainer = "Steve Shorter" }
\include "mutopia-header.ily"
\include "./ornaments/ornaments.ily"
\include "./common/ack.ily"
\include "./common/copyright.ily"
\include "./common/errata.ily"
\include "./common/blank1.ily"