%{
  ***********************************************************************
  * Composer - Work in Tonality                                         *
  * typeset by                                                          *
  *                                                                     *
  * movement printout for conductor's score                             *
  *                                                                     *
  * Do not compile                                                      *
  *                                                                     *
  ***********************************************************************
%}

\include "version.ily"

\include "titles.ily"
\thisTocLabel
\score {
  \keepWithTag #'printed        %------------------------------- [manual entry]
  \new StaffGroup
    <<
        \new GrandStaff
        <<
          \new Staff  {
            \set Staff.instrumentName = \thisInstrNameI %----- ../common/variables.ily
            \clef treble        %------------------------------- [manual entry]
            \global             %----------------------------- ../mov_/music.ily
            \violinI            %----------------------------- ../mov_/music.ily [manually set instrument]
          }
          \new Staff  {
            \set Staff.instrumentName = \thisInstrNameII
            \clef treble \global \violinII
          }
        >>
        \new Staff {
          \set Staff.instrumentName = \thisInstrNameIII
          \clef alto \global \viola
        }
        \new Staff {
          \set Staff.instrumentName = \thisInstrNameIV
          \clef bass \global \continuo
        }
        \new PianoStaff
        <<
          \set PianoStaff.instrumentName = \thisInstrNameV
          \new Staff = "upper" {  %-----------------------------  dependency with \staffUp in ../common/definitions.ily
            \clef treble \global \upperKeyb
          }
          \new Staff = "lower" {  %-----------------------------  dependency with \staffDown in ../common/definitions.ily
            \clef bass \global \lowerKeyb
          }
        >>
    >>
    \layout{ }
}
