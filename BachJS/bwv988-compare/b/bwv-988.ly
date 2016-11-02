\version "2.18.0"

\paper {
%	annotate-spacing = ##t
	print-page-number = ##t
	print-first-page-number = ##t
	first-page-number = #3

	#(set-paper-size "gooeytar_9X12")

	top-margin = 10 \mm
	bottom-margin = 10 \mm
	left-margin = 18 \mm
	right-margin = 18 \mm

	top-system-spacing =
                #'((basic-distance . 20)
                   (minimum-distance . 20)
                   (padding . 0))
%                   (stretchability . 12))

	system-system-spacing =
	    #'((basic-distance . 20)
	       (minimum-distance . 14)
	       (padding . 4)
	       (stretchability . 12))

	ragged-last-bottom = ##t
	ragged-bottom = ##t
	oddFooterMarkup = \markup \column { \null \null \fromproperty #'header:copyright }
}

\pointAndClickOff

#(set-global-staff-size 19)

graceSchleifer = 
#(define-music-function (parser location note) (ly:music?)
  (make-music 'SequentialMusic
   'elements (list #{
              \once \override Voice.NoteHead #'stencil = #ly:text-interface::print
              \once \override Voice.NoteHead #'X-extent = #'(-2 . -0)
              \once \override Voice.NoteHead #'text =
              #(markup #:large #:halign 0.4 #:raise 0.0 #:combine #:halign 1.1 #:musicglyph "scripts.prall"
              #:rotate 120 #:normalsize #:raise 2.4 #:musicglyph "flags.u3")
              \once \override Flag #'style = #'no-flag 
              \once \override Voice.Stem #'stencil = ##f #}
              note)))

TIn =  \shape #'((0.8 . 0.0)(0.0 . 0.0)(0.0 . 0.0)(-0.8 . 0.0)) Tie
TIna =  \shape #'((0.8 . 0.0)(0.0 . 0.0)(0.0 . 0.0)(0.0 . 0.0)) Tie
TInb =  \shape #'((0.4 . 0.0)(0.0 . 0.0)(0.0 . 0.0)(-0.4 . 0.0)) Tie
TInc =  \shape #'((0.6 . 0.3)(0.0 . 0.4)(0.0 . 0.4)(-0.1 . 0.3)) Tie
TInd =  \shape #'((0.3 . 0.0)(0.0 . 0.0)(0.0 . 0.0)(-0.3 . 0.0)) Tie
Tr = \shape #'((0.4 . 0.0)(0.3 . 0.0)(0.0 . 0.0)(0.0 . 0.0)) Tie
Tl = \shape #'((0.0 . 0.0)(0.0 . 0.0)(0.0 . 0.0)(-0.2 . 0.0)) Tie

TUp =  \shape #'((0.0 . 0.4)(0.0 . 0.4)(0.0 . 0.4)(0.0 . 0.4)) Tie
TUpa =  \shape #'((0.0 . 0.4)(0.0 . 0.6)(0.0 . 0.6)(0.0 . 0.4)) Tie
TUpb =  \shape #'((0.0 . 0.2)(0.0 . 0.2)(0.0 . 0.2)(0.0 . 0.2)) Tie
TUpc =  \shape #'((0.0 . 0.1)(0.0 . 0.1)(0.0 . 0.1)(0.0 . 0.1)) Tie
TUpd =  \shape #'((0.0 . 0.3)(0.0 . 0.6)(0.0 . 0.6)(0.0 . 0.3)) Tie
TUpe =  \shape #'((0.0 . 0.2)(0.0 . -0.1)(0.0 . -0.1)(0.0 . 0.2)) Tie
TUpi =  \shape #'((0.4 . 0.0)(0.0 . 0.0)(0.0 . 0.0)(-0.4 . 0.0)) Tie
TUpj =  \shape #'((0.0 . 0.0)(0.0 . 0.1)(0.0 . 0.1)(0.0 . 0.0)) Tie
TUpk =  \shape #'((0.2 . 0.1)(0.0 . -0.2)(0.0 . -0.2)(-0.2 . 0.1)) Tie
TUpo =  \shape #'((-0.4 . 0.4)(0.0 . 0.4)(0.0 . 0.4)(0.4 . 0.4)) Tie
TUpp =  \shape #'((-0.0 . 0.3)(0.0 . 0.0)(0.0 . 0.0)(0.0 . 0.3)) Tie
TUpq =  \shape #'((0.0 . 0.4)(0.0 . 0.4)(0.0 . 0.4)(0.4 . 0.4)) Tie
TUpr =  \shape #'((0.0 . 0.4)(0.0 . 0.4)(0.4 . 0.4)(0.8 . 0.4)) Tie
TUps =  \shape #'((0.0 . 0.1)(0.0 . 0.0)(0.0 . 0.0)(-0.2 . 0.1)) Tie
TUpt =  \shape #'((-0.3 . 0.5)(0.0 . 0.6)(0.0 . 0.6)(0.3 . 0.5)) Tie
TUpu =  \shape #'((0.2 . 0.1)(0.0 . -0.1)(0.0 . -0.1)(-0.2 . 0.1)) Tie

TDn =  \shape #'((0.0 . -0.4)(0.0 . -0.4)(0.0 . -0.4)(0.0 . -0.4)) Tie
TDna =  \shape #'((0.0 . -0.1)(0.0 . -0.1)(0.0 . -0.1)(-0.0 . -0.1)) Tie
TDnb =  \shape #'((0.0 . -0.2)(0.0 . -0.1)(0.0 . -0.1)(-0.0 . -0.2)) Tie
TDnc =  \shape #'((-0.3 . -0.3)(0.0 . -0.0)(0.0 . -0.0)(0.1 . -0.3)) Tie
TDnd =  \shape #'((0.0 . -0.2)(0.0 . 0.1)(0.0 . 0.1)(-0.2 . -0.3)) Tie
TDne =  \shape #'((0.0 . -0.2)(0.0 . 0.1)(0.0 . 0.1)(0.0 . -0.2)) Tie
TDnf =  \shape #'((0.0 . -0.4)(0.0 . -0.6)(0.0 . -0.6)(0.0 . -0.4)) Tie
TDng =  \shape #'((0.0 . -0.0)(0.0 . -0.2)(0.0 . -0.2)(0.0 . -0.0)) Tie
TDnh =  \shape #'((0.0 . -0.3)(0.0 . -0.4)(0.0 . -0.4)(-0.0 . -0.3)) Tie
TDno = \shape #'((-0.4 . -0.4)(0.0 . -0.4)(0.0 . -0.4)(0.4 . -0.4)) Tie
TDnp = \shape #'((-0.4 . -0.4)(0.0 . -0.6)(0.0 . -0.6)(0.4 . -0.4)) Tie
TDni = \shape #'((0.0 . -0.2)(0.0 . -0.2)(0.0 . -0.2)(-0.6 . -0.2)) Tie
TDnj = \shape #'((0.6 . -0.0)(0.0 . -0.0)(0.0 . -0.0)(-0.6 . -0.0)) Tie
TDnk = \shape #'((0.6 . -0.0)(0.0 . -0.0)(0.0 . -0.0)(-0.6 . -0.0)) Tie
TDnl =  \shape #'((-0.6 . -0.4)(0.0 . -0.4)(0.0 . -0.4)(0.0 . -0.4)) Tie
TDnm =  \shape #'((0.0 . -0.2)(0.0 . 0.0)(0.0 . 0.0)(-0.3 . -0.2)) Tie
TDnn = \shape #'((0.4 . -0.2)(0.0 . 0.0)(0.0 . 0.0)(-0.1 . -0.2)) Tie
TDno =  \shape #'((-0.3 . -0.3)(0.0 . -0.6)(0.0 . -0.6)(0.1 . -0.3)) Tie
TDnp =  \shape #'((0.3 . -0.2)(0.0 . 0.1)(0.0 . 0.1)(0.0 . -0.2)) Tie
TDnq = \shape #'((-0.4 . -0.4)(0.0 . -0.2)(0.0 . -0.2)(0.4 . -0.4)) Tie
TDnr =  \shape #'((-0.5 . -0.3)(0.0 . -0.4)(0.0 . -0.4)(0.5 . -0.3)) Tie

SDn = \shape #'((0.0 . 0.0)(0.0 . -0.6)(0.0 . -0.6)(0.0 . 0.0)) Slur
SUp = \shape #'((0.0 . 1.0)(0.0 . 0.0)(0.0 . 0.0)(0.0 . 0.0)) Slur
SUpa = \shape #'((0.0 . 0.6)(0.0 . 0.0)(0.0 . 0.0)(0.0 . 0.0)) Slur
SUpb = \shape #'((0.0 . 0.2)(-0.2 . -0.0)(-0.1 . 0.6)(-0.8 . 0.2)) Slur
SUpc = \shape #'((0.0 . 0.1)(-0.2 . 0.1)(-0.4 . 0.7)(-1.0 . 0.5)) Slur
SUpd = \shape #'((0.0 . 0.4)(-0.0 . -0.2)(-0.0 . 0.6)(-1.0 . 0.0)) Slur
SBl = \shape #'((0.0 . 0.0)(0.0 . 0.0)(0.0 . 0.0)(-1.0 . 0.0)) Slur

\include "toc.ly"
%\include "forward.ly"
\include "blank.ly"
\include "intro.ly"
\include "aria/1.7e/book.ly"
\include "aria/1.8/book.ly"
%\include "aria/1.9/book.ly"
\include "v01/book.ly"
\include "v02/book.ly"
\include "v03/book.ly"
\include "v04/book.ly"
\include "v05/book.ly"
\include "v06/book.ly"
\include "v07/book.ly"
\include "v08/book.ly"
\include "v09/book.ly"
\include "v10/book.ly"
\include "v11/book.ly"
\include "v12/book.ly"
\include "v13/book.ly"
\include "v14/book.ly"
\include "v15/book.ly"
\include "v16/book.ly"
\include "v17/book.ly"
\include "v18/book.ly"
\include "v19/book.ly"
\include "v20/book.ly"
\include "v21/book.ly"
\include "v22/book.ly"
\include "v23/book.ly"
\include "v24/book.ly"
\include "v25/book.ly"
\include "v26/book.ly"
\include "v27/book.ly"
\include "v28/book.ly"
\include "v29/book.ly"
\include "v30/book.ly"
\include "ornaments/book.ly"
\include "ack.ly"
\include "copyright.ly"
\include "errata.ly"
\include "blank1.ly"
