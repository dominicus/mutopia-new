\version "2.12.3"

\paper {
%       annotate-spacing = ##t
       after-title-space = 2.0\cm
       head-separation = 3.0\cm
       between-title-space = 4.0\cm
%       between-system-padding = #.1
       page-limit-inter-system-space = ##t
       page-limit-inter-system-space-factor = 1.2
%       between-system-space = 1.0\cm
       print-page-number = ##f
       page-count = #1
       #(set-paper-size "gooeytar_12X42")
       ragged-last-bottom = ##f
       ragged-bottom = ##f
       system-count = #12
}

\include "guitar1.ly"
\include "guitar2_12X42.ly"
\include "guitar3_12X42.ly"

\header {
  title =  \markup \center-column {
           \fontsize #5.25
           "Trauer Marsch"
           \null
           \fontsize #5.25
           "auf den Totd des"
           \null
           \fontsize #5.25
           "Herrn Michael Haydn"
           \null
           \null
           \null
           \null
         }
  dedication = ""
  composer = \markup {\fontsize #3.0 " A. Diabelli (1781-1858)"}
%  opus = "1.1"
%  poet = "poet v1.1"
  arranger = \markup {\fontsize #3.0 "S. Shorter (2011)"}
  mutopiatitle = ""
  meter = \markup {\fontsize #2.3 "v1.1"}
  piece = \markup \bold \italic \fontsize #2.3 \roman { "Largo e mesto" }
  style = "Classical"
%  copyright = "Steve Shorter (2011)"
  maintainer = "Steve Shorter"
  lastupdated = "2011/Oct/25"
  version = "2.10.33"
  footer = "FOOTER"
}


\score {
 
 \new GrandStaff {
 <<

 \context Staff = "one" {
 \guitarone
 }

 \context Staff = "two" {
 \guitartwo
 }

 \context Staff = "three" {
 \guitarthree
 }

 >>
 
}

 \layout { }

}

