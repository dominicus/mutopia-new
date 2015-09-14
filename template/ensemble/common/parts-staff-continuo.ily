%{
  ***********************************************************************
  * Composer - Work in Tonality                                         *
  * typeset by                                                          *
  *                                                                     *
  *                                                                     *
  * score block for Continuo part printout                              *
  *                                                                     *
  * Do not compile                                                      *
  *                                                                     *
  ***********************************************************************
%}

\include "version.ily"

\score {
  \keepWithTag #'printed    %------------------------------- [manual entry]
   <<
      \new Staff {
        \set Staff.instrumentName = \thisInstrNameIV  %----- ../common/variables.ily
        \clef bass          %------------------------------- [manual entry]
        \condenseRests      %------------------------------- ../common/definitions.ily
        \global             %------------------------------- ../mov_/music.ily
        \continuo           %------------------------------- ../mov_/music.ily [manually set instrument]
      }
    >>
    \layout{ }
}
