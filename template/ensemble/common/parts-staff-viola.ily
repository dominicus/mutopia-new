%{
  ***********************************************************************
  * Composer - Work in Tonality                                         *
  * typeset by                                                          *
  *                                                                     *
  *                                                                     *
  * Parts staff for violins and viola                                   *
  *                                                                     *
  * Do not compile                                                      *
  *                                                                     *
  ***********************************************************************
%}

\include "version.ily"

\score {
  \keepWithTag #'printed         %------------------------------ [manual entry]
     <<
        \new Staff {
          \set Staff.instrumentName = \thisInstrNameIII   %--- ../common/variables.ily
          \clef treble           %------------------------------ [manual entry]
          \condenseRests         %---------------------------- ../common/definitions.ily
          \global                %---------------------------- ../mov_/music.ily
          \viola                 %---------------------------- ../mov_/music.ily [manually set instrument]
        }
     >>
    \layout{ }
}
