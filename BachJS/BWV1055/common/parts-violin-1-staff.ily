%{
  ***********************************************************************
  * Bach - Keyboard Concerto No.4 in A major                            *
  *                                                                     *
  * typeset by Javier Ruiz-Alma                                         *
  *                                                                     *
  *                                                                     *
  *                                                                     *
  * Parts staff for violins and viola                                   *
  *                                                                     *
  *                                                                     *
  * Do not compile                                                      *
  *                                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "common/version.ily"


%-------Typeset music
\score {
  \keepWithTag #'printed
%  \keepWithTag #'parts
        <<
          \new Staff = "Staff_violinI"  { \set Staff.instrumentName = #"Violin I"
                                          \clef treble \global \condenseRests \violinI }
        >>
    \layout{ }
}
