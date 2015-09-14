%{
  ***********************************************************************
  * Composer - Work in Tonality                                         *
  * typeset by                                                          *
  *                                                                     *
  *                                                                     *
  * score block for violins and viola                                   *
  *                                                                     *
  * Do not compile                                                      *
  *                                                                     *
  ***********************************************************************
%}

\include "version.ily"

\score {
  \keepWithTag #'printed        %------------------------------- [manual entry]
        <<
          \new Staff {
            \set Staff.instrumentName = \thisInstrNameII %---- ../common/variables.ily
            \clef treble        %------------------------------- [manual entry]
            \condenseRests      %----------------------------- ../common/definitions.ily
            \global             %----------------------------- ../mov_/music.ily
            \violinII           %----------------------------- ../mov_/music.ily [manually set instrument]
          }
        >>
    \layout{ }
}
