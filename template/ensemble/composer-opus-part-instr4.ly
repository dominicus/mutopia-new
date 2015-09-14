%{
  ***********************************************************************
  * Composer - Work in Tonality                                         *
  * typeset by                                                          *
  *                                                                     *
  * Parts : Continuo                                                    *
  *                                                                     *
  * *******************************                                     *
  * *   Main file                 *                                     *
  * *******************************                                     *
  *                                                                     *
  ***********************************************************************
%}

%#(set-default-paper-size "letter")
#(ly:set-option 'relative-includes #t)

\include "common/version.ily"
\include "common/variables.ily"

\include "common/definitions.ily"
\include "common/parts-dimension.ily"

Part = "Continuo"
PartShort = "Continuo"

\include "mutopia-header.ily"

\include "common/parts-header.ily"
\include "common/parts-paper.ily"

%---------------MOVEMENTS 
%------- -------First Mov: Allegro
\include "mov1/music.ily"
  \bookpart {
    \header { piece = \markup {
                         \fontsize #2 \raise #1 {
                           \hspace #20 \thisTempoMovI   %--------------- /common/variables.ily
                         }
              }
    }
    \markup { \fill-line {
                   \fontsize #3 \lower#7 \bold \concat {
                     \char ##x2014 \hspace #2
                     \thisIdentifierMovI       %------------------------ /common/variables.ily
                     \hspace #2 \char ##x2014
                   }
              }
    }
    \include "common/parts-staff-continuo.ily"
  }

%---------------Second Mov: Larghetto
\include "mov2/music.ily"
  \bookpart {
    \header { piece = \markup { \fontsize #2 \raise #1 { \hspace #20 \thisTempoMovII } }  }
    \markup {\fill-line {\fontsize #3 \lower#7 \bold \concat { \char ##x2014 \hspace #2 \thisIdentifierMovII \hspace #2 \char ##x2014 } } }
    \include "common/parts-staff-continuo.ily"
  }

%--------------Third Mov: Allegro ma non tanto
\include "mov3/music.ily"
  \bookpart {
    \header { piece = \markup { \fontsize #2 \raise #1 { \hspace #20 \thisTempoMovIII } }  }
    \markup {\fill-line {\fontsize #3 \lower#7 \bold \concat { \char ##x2014 \hspace #2 \thisIdentifierMovIII \hspace #2 \char ##x2014 } } }
    \include "common/parts-staff-continuo.ily"
  }
