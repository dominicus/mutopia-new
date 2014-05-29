%%--------------------------------------------------------------------
% The Mutopia Project
% LilyPond template for keyboard solo piece
%%--------------------------------------------------------------------

\version "2.18.2"

#(set-default-paper-size "letter")
#(set-global-staff-size 20)

\paper {
    top-margin = 8\mm                              %-minimum top-margin: 8mm
    top-markup-spacing.basic-distance = #5         %-dist. from bottom of top margin to the first markup/title
    markup-system-spacing.basic-distance = #6      %-dist. from header/title to first system
    top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
    last-bottom-spacing.basic-distance = #11       %-pads music from copyright block
    ragged-bottom = ##t
    ragged-last-bottom = ##t
}

\header {
    title = "Première Ballade."
    composer = "Fr.Chopin (1810-1849),Op.23"
    piece = \markup \italic "à Mr. le Baron de Stockhausen."
    date = "1836"
    style = "Romantic"
    source = "Klindworth; Bote & Bock,n.d.[1880]" % "Mikuli; Schirmer, 1894"

    maintainer = "Javier Ruiz-Alma"
    maintainerEmail = "javier (at) ruiz-alma.com"
    license = "Creative Commons Attribution-ShareAlike 4.0"

    mutopiatitle = "Première Ballade"
    mutopiaopus = "Op.23"
    mutopiacomposer = "ChopinFF"
    mutopiainstrument = "Piano"

    footer = "Mutopia-2001/01/01-0"
    copyright = \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9 "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 4.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
    tagline = ##f
}

%--------Definitions
\include "chopin-op23-ballade-1-defs.ly"

%------------Music

cadenzaOne = { 
  \stemDown \cadenzaSizeOn \alignBeamOne
  \scaleDurations 1/3 {
    ees8[ c a bes d c bes g ees d ees! e f fis a g f! ees]) 
  } \cadenzaSizeOff
}

upperOne =  \relative c {
  \setRestDirUp
  \time 4/4 \tempoLargo \hideTempo
  \trebleToBass
  \stemNeutral
  c2-\hideF(\(_~^\lentoLegend c8 ees aes bes              | %1
  \clef treble
  c8) aes_( ees' bes'  c) aes( ees' bes' | % 2
  c8) g( bes aes  g4 fis8)\) b,8\rest  | % 3
  b8\rest fis'(^\(-\hideP g fis  eis) fis( \times 2/3 { a g ees) }     | % 4
   \mBreak
  ees8. d16 \times 2/3 { f!8 ees d\) } d4 b\rest  | % 5
  \stemNeutral b2\rest^\espressTxt c4.\( g8    | % 6
  bes1~                     | % 7
   \time 6/4 \tempoMod
  bes2.^\moderatoLegend b8\rest \stemDown \hideNotes c,8_~ \unHideNotes c2-\hideMF    | % 8
  \stemUp g'2.\) d'(        | %9
  c2.) b8\rest \stemDown \hideNotes c,8\(_~ \unHideNotes c2 | %10
   \mBreak
  \stemUp g'2.\) e(         | %11
   \mBreak
  fis2.) b8\rest c,!2( s8   | %12
  g'2.) g'(                 | %13
  f2.) e,(                  | %14
  cis'2.)\( d               | %15
   \mBreak
  c!2.\) b8\rest c,2( s8    | %16
  g'2.) d'(                 | %17
  c2.) b8\rest c,2( s8      | %18
  g'2.) e(                  | %19
   \mBreak
  fis2.) b8\rest c,2( s8    | %20
  g'2.) g'\(                | %21
  g2. d                     | %22
  c2. g\)                   | %23
   \mBreak
  g'2.\( d                  | %24
  c2. g                     | %25
  f2.\) d'~\(               | %26
  d4 \acciaccatura  { d8 } c4 b c d ees  | %27
   \mBreak
  ees2. d\)                              | %28
  d4\rest \acciaccatura { bes8 } a4\( gis a bes c | %29
  c2. bes                                | %30
  a2.\) a2^\riten~ a8 a                  | %31
   \mBreak
  a2.\arpeggio ~ a2 a4->_~                         | %32
  a16( bes a gis \stemDown a g'! e f  f g'f e \cadenzaOne | %33
   \mBreak \stemNeutral
  cis8 b8\rest d2->~ d4 c\( g   | %34
  bes2. fis                     | %35
  g4\) <bes'bes,>8( d,f ees~ ees4) <a a,>8( cis,ees d~ | %36
  d4) <bes'bes,>8( d,f ees~ ees4) <aes aes,>8( cis,ees d ~ | %37
   \mBreak
  d)
  \bar "|."
%}
}

upperTwo =  \relative c' {
  \time 4/4
  \repeat unfold 7 { s1 | }      % 1-7
  \time 6/4
  %\mergeDifferentlyHeadedOn
  s2. s8 \stemUp c8-\hideP d fis bes a \stemDown   | % 8
  b,4\rest <d bes>-.( <d bes>-.) e\rest <g d>-.( <g d>-.) | % 9
  c,4\rest <g' ees>-.( <g ees>-.) s8 \stemUp c,8^> d fis bes a \stemDown   | %10
  b,4\rest <d bes>^.^( <d bes>^.) g,\rest <cis a g>^.^( <cis a g>^.)  | %11
  a4\rest <d a fis>^.^( <d a fis>^.) s8 c!_> d fis bes a  | %12
  b,4\rest <d bes>^.^( <d bes>^.) g\rest <des'bes g>^.^( <des bes g>^.)  | %13
  g,4\rest <bes c>^.^( <bes c>^.) e,8_>[ f a ees' d! b16\rest cis]  | %14
  e,4\rest <a f ees>^.^( <a f ees>^.) e\rest <bes' f d>^.^( <bes f d>^.)   | %15
  e,4\rest <g ees>^.^( <g ees>^.) s8 c,_> d fis bes a       | %16
  a,4\rest <d bes>^.^( <d bes>^.) c\rest <g'd>^.^(<g d>^.)    | %17
  c,4\rest <g'ees>^.^(<g ees>^.) s8 c, d fis bes a          | %18
  a,4\rest <d bes>^.^(<d bes>^.) g,\rest <cis a g>^.^(<cis a g>^.)  | %19
   \mBreak
  a4\rest <d a fis>^.^( <d a fis>^.) s8 c d fis bes a  | %20
  a,4\rest <f'!d b>4^.^( <f d b>^.) g\rest <d'b g f>^.^( <d b g f>^.)  | %21
  a4\rest <ees'c g>^.^( <ees c g>^.) e,\rest <g d>^.^( <g d>^.)   | %22
  c,4\rest <g'c,>^.^( <g c,>^.) b,\rest <d bes>^.^( <d bes>^.)   | %23
   \mBreak
  g4\rest <ees'c g>^.^( <ees c g>^.) d,\rest <g d>^.^( <g d>^.)   | %24
  d4\rest <g c,>^.^( <g c,>^.) a,\rest <cis bes>^.^( <cis bes>^.)  | %25
  a4\rest <d bes>^.^( <d bes>^.) e\rest <bes'f d>^.^( <bes f d>^.)  | %26
  <a ees!>4 <a ees> <a ees> <a ees> <a ees!> <a ees>  | %27
   \mBreak
  g\rest <bes ees,> <bes ees,> <bes d,> <bes d,> <bes d,>  | %28
  <fis c> <fis c> <fis c> <fis c> <fis c> <fis c>     | %29
  e\rest <g!c,> <g c,> <g bes,> <g bes,> <g bes,>     | %30
  <g ees> <g ees> <g ees> <fis d> <fis d> <fis d>     | %31
   \mBreak
  <e a,>4\arpeggio s1 s4                              | %32
  s1.                                                 | %33
}

upperTre = \relative c' {
  \time 4/4
  \repeat unfold 7 { s1 | } \time 6/4     % 1-7
  %\mergeDifferentlyHeadedOn
  \stemUp
  s1 d2-\hideP                       | % 8
  s1.                                | % 9
  s1 d2                              | %10
  \repeat unfold 3 { s1. | }         | %11-13
  s1 a'2                       | %14
  s1.                          | %15
  s1 d,4. s8                 | %16
  s1.                       | %17
  s1 d4. s8                  | %18
  s1.                     | %19
 %} 
}
upperQtr = \relative c' {
 
  \time 4/4
  \repeat unfold 7 { s1 | }     % 1-7
  \time 6/4 \mergeDifferentlyDottedOn \stemDown
  s1 s8 fis4.-\hideP                   | % 8
  s1.                                  | % 9
  s1 s8 fis4.                          | %10
  \repeat unfold 5 { s1. | }    % 11-15
  s1 s8 fis4 s8                | %16
  s1.                     | %17
  s1 s8 fis4 s8            | %18
  %}
}

upperStaff =  <<{ \upperOne  } \\ { \upperTwo } \\ {  \upperTre } \\ {  \upperQtr }  >>

lowerOne = \relative c, {
  \time 4/4
  \setRestDirDown
  c2-\hideF\(_~ c8 ees aes bes    | % 1
  c8 aes ees' bes' \clef treble  c aes ees' bes' | % 2
  c8 g bes aes  g4 fis8\) b8\rest    | % 3
  b8\rest fis8_\(-\hideP g fis  eis fis \times 2/3 { a g ees }  | % 4
  ees8. d16 \times 2/3 { f!8 ees d\) } d4 \staffDown b'\rest | %5
  \clef bass
  d,,2\rest <c' g ees>2(^>  | % 6
  <ees g,d>1\arpeggio)   | % 7
   \bar "||" \time 6/4
   \stemNeutral
  d,2.\rest d,4-. d'\rest d\rest   | % 8
  d4\rest g,_._( g_.) d'\rest bes'-.( bes-.)  | % 9
  d,4\rest <c'a>-.( <c a>-.) d,\rest d,_._( d_.)  | % 10
  d'4\rest g,_._( g_.) d'\rest a_._( a_.)    | %11
  d4\rest d,-.( d_.) d'\rest d-.( d-.)    | %12
  d4\rest g,_._( g_.) d'\rest e'-.( e-.)    | %13
  d,4\rest f'-.( f-.) d,\rest f,_._( f_.)   | %14
  d'4\rest bes-.( bes-.) d\rest bes'-.( bes-.)  | %15
  d,4\rest a'^.^( a^.) d,\rest d,-.( d-.)       | %16
  d'4\rest g,-.( g-.) d'\rest bes'-.( bes-.)    | %17
  d,4\rest <c'a>-.( <c a>-.) d,\rest d,-.( d-.) | %18
  d'4\rest g,-.( g-.) d'\rest a-.( a-.)         | %19
   \mBreak
  d4\rest d,-.( d_.) d'\rest d-.( d-.)         | %20
  d4\rest g-.( g-.) d\rest g,-.( g-.)          | %21
  d'4\rest \stemUp c2 d4\rest d2         | %22
  d4\rest ees2 d4\rest d2              | %23
   \mBreak \stemDown
  b8_>( c d c g'4)  cis,8_>( d ees d g4)   | %24
  d8_>( ees f ees g4)_\< \stemUp \grace { dis16_([ e]) } \stemDown \afterGrace e2.\trill { dis16[_( e]) } | %25
  f2.\!~ f4_( \stemUp <e e,> <f f,>                 | %26
  <fis fis,>2.)~ <fis fis,>4 <eis eis,> <fis fis,>  | %27
   \mBreak
  <g g,>1.                                          | %28
  <d d,>1.                                          | %29
  <ees ees,>1.                                      | %30
  \doubleSlursOn <c c,>2.( <d d,>)                  | %31
   \mBreak
  <cis cis,>4 \stemNeutral \doubleSlursOff <e' a, e>-.( <e a, e>-. <e a, e>-. <e a, e>-. <e a, e>-.) | %32
  <c,!c,!>4( <f'ees!a,f> <f ees a,f> <f ees a,f> <f ees a,f> <f ees a,f>)      | %33
   \mBreak
  <bes,,bes,>4 <bes'f d> <d bes f> ees,,<c''!g ees><ees c g>  | %34
  d,,4 <ees''bes g> g, d2.                          | %35
  g,4_. <bes'g>2 fis,4_. <a'fis>2                   | %36
  g,4_. <bes'g>2 f,!4_. <b'aes f!>2                 | %37
}

lowerTwo = \relative c {
  \time 4/4
  \repeat unfold 7 { s1 | }      % 1-7
  \time 6/4
  \repeat unfold 14 { s1. | }   %8-21
  \stemDown s4 c,_( g'') s d,_( g')    | %22
  s4 ees,4_( g') s d,_( g')            | %23
  \repeat unfold 11 { s1. | }          | %24-34
  \stemUp
  s4^( s <d'bes>2 <cis bes>4 <c a>)    | %35
  s4 f!^( ees) s ees^( d)              | %36
  s4 f!^( ees) s ees^( d)              | %37
}

lowerStaff = <<
  \new Voice = "5" { \lowerOne }             
  \new Voice = "6" { \lowerTwo } 
>>

dynamics = {
  s4-\fPesante s8 s8 s2                               | % 1
  s4 s2-\dimTxt s4\>                                  | % 2
  s2. s4\!                                            | % 3
  s8 s8\p s2.                                         | % 4
  s1                                                  | % 5
  s4. s8\p s4. s8\<                                   | % 6
  s2. s8 s8\!                                         | % 7
  s2.\> s8\! s2-\pDolce s8
  \repeat unfold 18 { s1. | }                         | % 9-26
  s4 s1\< s4                                          | %27
  s1.\!                                               | %28
  s2 s1\<                                             | %29
  s4\! s4\> s4 s2.\!                                  | %30
  s2. s2\< s16 s8.\!                                  | %31

}

pedal = {
 \repeat unfold 7 { s1 | }                              %1-7
 \repeat unfold 24 { s1. | }                            %8-31
 s4\sustainOn s1 s4\sustainOff                        | %32
 s4\sustainOn s1 s8 s16. s32\sustainOff               | %33
 s4\sustainOn s s\sustainOff s\sustainOn s s\sustainOff | %34
 s4\sustainOn s2 s4\sustainOff s2                       | %35
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff         | %36
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff| %37
}

%-------Typeset music 
\score {
    %\removeWithTag #'played
    \new PianoStaff <<
        \set PianoStaff.midiInstrument = "acoustic grand"
        \new Staff = "upper" \with { \consists "Span_arpeggio_engraver" }
           { \clef treble \global \connectArpeggio \upperStaff }
        \new Dynamics = "dyns" { \dynamics }
        \new Staff = "lower" { \clef bass \global \lowerStaff }
        \new Dynamics = "ped" { \pedal }
    >>
    \layout{ 
     %{ \context {
        \PianoStaff
        \consists #Span_stem_engraver
      }%}
    } 
}
%-------generate Midi
\score {
    %\removeWithTag #'printed
    \context PianoStaff <<
        \set PianoStaff.midiInstrument = "acoustic grand"
        \new Staff = "upper" { \clef treble \global \upperStaff }
        \new Dynamics = "dyns" { \dynamics }
        \new Staff = "lower" { \clef bass \global \lowerStaff }
        \new Dynamics = "ped" { \pedal }
    >>
    \midi  { }
}