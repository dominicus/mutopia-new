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
    composer = \markup "Fr.Chopin (1810-1849),Op.23"
    poet = \markup \italic "à Mr. le Baron de Stockhausen."
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
  \stemDown \cadenzaSizeOn \alignBeamOne \subdivideBeamOn
  \scaleDurations 2/3 {
    ees16[ c a bes d c bes g f d ees e f fis a g f! ees]
  } \cadenzaSizeOff \subdivideBeamOff
}

upperOne =  \relative c {
  \setRestDirUp
  \time 4/4 \tempoLargo \hideTempo
  \trebleToBass
  \stemNeutral
  c2-\hideF(\(_~^\lentoLegend c8 ees aes bes              | % 1
  \clef treble
  c8) aes_( ees' bes'  c) aes( ees' bes'                  | % 2
  c8) g( bes aes  g4 fis8)\) b,8\rest                     | % 3
  b8\rest fis'(^\(-\hideP g fis  eis) fis( \times 2/3 { a g ees) } | % 4
  ees8. d16 \times 2/3 { f!8 ees d\) } d4 b\rest          | % 5
  \stemNeutral b2\rest^\espressTxt c4.\( g8               | % 6
  bes1~                                                   | % 7
   \time 6/4 \tempoMod
  bes2.^\moderatoLegend b8\rest \stemDown \hideNotes c,8_~
     \unHideNotes \shiftOnn \moveNoteOne c2-\hideMF       | % 8
  \stemUp g'2.\) d'(                                      | % 9
  c2.) b8\rest \stemDown \hideNotes c,8\(_~ \unHideNotes 
     \moveNoteOne c2                                      | %10
  \stemUp g'2.\) e(                                       | %11
  fis2.) b8\rest \stemDown \hideNotes c,8_~^( \unHideNotes 
     \moveNoteOne c2                                      | %12
  \stemUp g'2.) g'(                                       | %13
  f2.) \stemDown ees,(                                    | %14
  \stemUp cis'2. d)\(                                     | %15
  c!2.\) b8\rest \stemDown \hideNotes c,8_~^( \unHideNotes
     \moveNoteOne c2                                      | %16
  \stemUp g'2.) d'(                                       | %17
  c2.) b8\rest \stemDown \hideNotes c,8_~^( \unHideNotes
     \moveNoteOne c2                                      | %18
  \stemUp g'2.) e(                                        | %19
  fis2.) b8\rest \stemDown \hideNotes c,8_~^\( \unHideNotes
     \moveNoteOne c2                                      | %20
  \stemUp g'2. g'                                         | %21
  g2.\)\( d                                               | %22
  c2. g\)\(                                               | %23
  g'2. d                                                  | %24
  c2. g                                                   | %25
  f2.\) d'~\(                                             | %26
  d4 \slurDown \acciaccatura  { d8 } c4 \slurNeutral b c d ees                   | %27
  ees2. d\)                                               | %28
  d4\rest \acciaccatura { bes8 } a4\( gis a bes c         | %29
  c2. bes                                                 | %30
  %--------------------------------------------ISSUE HERE: OBSCURED DOT!
  \ritenSpanner a2.\startTextSpan a2~ a8 a                                   | %31
  a2.\arpeggio ~ a2 a4->_~                                | %32
  a16 bes a gis \stemDown a g'! e f  f g'f e \cadenzaOne | %33
   \mBreak \stemNeutral
  cis8\) b8\rest d2->\(~ d4 c g                             | %34
  bes2. fis                                               | %35
  g4\)\stopTextSpan \stemUp bes'4^\aTempo s2 a4 s          | %36
  s4 bes4 s2 aes4 s                                | %37
  s4 g s2 c,4 s                                    | %38
  s4 ees s2 g,4^( <a fis>                           | %39
  <bes g>4)^\agitato <bes bes'>2 s4 <a a'>2         | %40
  s4 <bes bes'>2 s4 <aes aes'>2                     | %41
  
  \bar "|."
%}
}

upperTwo =  \relative c' {
  \time 4/4
  \repeat unfold 7 { s1 | }      % 1-7
  \time 6/4
  \mergeDifferentlyHeadedOn
  s2. s8 \stemUp c8-\hideP d fis bes a \stemDown   | % 8
  b,4\rest <d bes>-.( <d bes>-.) b\rest <g'd>-.( <g d>-.) | % 9
  c,4\rest <g' ees>-.( <g ees>-.) s8 \stemUp c,8^> d fis bes a \stemDown   | %10
  b,4\rest <d bes>-.( <d bes>-.) g,\rest <cis a g>-.( <cis a g>-.)  | %11
  a4\rest <d a fis>-.( <d a fis>-.) s8 \stemUp c^> d fis bes a \stemDown | %12
%------------ Schirmer, Breitkopf & Härtel, and Cortot: Bar13 5th and 6th beat:<des bes g>
  b,4\rest <d bes>-.( <d bes>-.) g\rest <des'bes g>-.( <des bes g>-.)  | %13
  g,4\rest <bes c>-.( <bes c>-.) \stemUp ees,8^>[ f a ees' d b16\rest cis]  | %14
  e,4\rest \stemDown <a f ees>-.( <a f ees>-.) e\rest <bes' f d>-.( <bes f d>-.)   | %15
  e,4\rest <g ees>-.( <g ees>-.) s8 c,^[^> d fis bes a]       | %16
  a,4\rest <d bes>-.( <d bes>-.) c\rest <g'd>-.(<g d>-.)    | %17
  c,4\rest <g'ees>-.(<g ees>-.) s8 c,^[ d fis bes a]        | %18
  a,4\rest <d bes>-.(<d bes>-.) g,\rest <cis a g>-.(<cis a g>-.)  | %19
  a4\rest <d a fis>-.( <d a fis>-.) s8 c^[ d fis bes a]  | %20
  a,4\rest <f'!d b>4-.( <f d b>-.) g\rest <d'b g f>-.( <d b g f>-.)  | %21
  a4\rest <ees'c g>-.( <ees c g>-.) e,\rest <g d>-.( <g d>-.)   | %22
  c,4\rest <g'c,>-.( <g c,>-.) b,\rest <d bes>-.( <d bes>-.)   | %23
  g4\rest <ees'c g>-.( <ees c g>-.) d,\rest <g d>-.( <g d>-.)   | %24
  d4\rest <g c,>-.( <g c,>-.) a,\rest <cis bes>-.( <cis bes>-.)  | %25
  a4\rest <d bes>-.( <d bes>-.) e\rest <bes'f d>-.( <bes f d>-.)  | %26
  <a ees!>4_\tenutoTxt <a ees> <a ees> <a ees> <a ees> <a ees>  | %27
  g\rest <bes ees,> <bes ees,> <bes d,> <bes d,> <bes d,>  | %28
  <fis c> <fis c> <fis c> <fis c> <fis c> <fis c>     | %29
  e\rest <g!c,> <g c,> <g bes,> <g bes,> <g bes,>     | %30
  \moveNoteTwo <g ees> <g ees> <g ees> <fis d> <fis d> <fis d>     | %31
   \mBreak
  <e a,>4\arpeggio s1\< s4                              | %32
  s2. s16\! s8.-\pocoCresc s2                           | %33
  s1.                                                   | %34
  s1. \tieUp \slurUp                                    | %35
  s4 bes'8\<( d\! f\> ees\!~ ees4) a,8\<( cis\! ees\> d\!~           | %36
  d4) bes8\<( d\! f\> ees\!~ ees4) aes,8\<( cis\! ees\> d\!~          | %37
  d4) g,8( b d c~ c4) c,8( gis' bes a~                  | %38
  a4) ees8( b' d c~c4)  ees,8\< d cis c                 | %39
  bes4_\f bes'8->( d f ees) b4\rest a8->( cis ees d)    | %40
  b4\rest bes8->( d f ees) b4\rest aes8->( cis ees d)   | %41
}

upperTre = \relative c' {
  \time 4/4
  \repeat unfold 7 { s1 | } \time 6/4     % 1-7
  \mergeDifferentlyHeadedOn \mergeDifferentlyDottedOn
  \stemDown
  s1 \tweak Stem.transparent ##t d2-\hideP | % 8
  s1.                                      | % 9
  s1 \tweak Stem.transparent ##t d2        | %10
  s1.                                      | %11
  s1 \tweak Stem.transparent ##t d2        | %12
  s1.                                      | %13
  s1 a'2                                   | %14
  s1.                                      | %15
  s1 \tweak Stem.transparent ##t d,2       | %16
  s1.                                      | %17
  s1 \tweak Stem.transparent ##t d2        | %18
  s1.                                      | %19
  s1 \tweak Stem.transparent ##t d2        | %20
}
upperQtr = \relative c' {
  \time 4/4
  \repeat unfold 7 { s1 | }              % 1-7
  \time 6/4 \mergeDifferentlyDottedOn \stemDown
  s1 s8 fis4.-\hideP                   | % 8
  s1.                                  | % 9
  s1 s8 fis4.                          | %10
  s1.                                  | %11
  s1 s8 fis!4.                         | %12
  \repeat unfold 3 { s1. | }             %13-15
  s1 s8 fis4.                          | %16
  s1.                                  | %17
  s1 s8 fis4.                          | %18
  s1.                                  | %19
  s1 s8 fis!4.                         | %20
}

upperStaff =  <<{ \upperOne  } \\ { \upperTwo } \\ {  \upperTre } \\ {  \upperQtr }  >>

lowerOne = \relative c, {
  \time 4/4
  \setRestDirDown
  c2-\hideF\(_~ c8 ees aes bes                  | % 1
  c8 aes ees' bes' \clef treble  c aes ees' bes'| % 2
  c8 g bes aes  g4 fis8\) b8\rest               | % 3
  b8\rest fis8_\(-\hideP g fis  eis fis \times 2/3 { a g ees }  | % 4
  ees8. d16 \times 2/3 { f!8 ees d\) } d4 \staffDown b'\rest | %5
  \clef bass
  d,,2\rest <c' g ees>2(^>                      | % 6
  <ees g,d>1\arpeggio)\sustainOn                | % 7
   \bar "||" \time 6/4
   \stemNeutral
  d,2.\rest\sustainOff d,4-. d'\rest d\rest     | % 8
  d4\rest g,_._( g_.) d'\rest bes'-.( bes-.)    | % 9
  d,4\rest <c'a>-.( <c a>-.) d,\rest d,_._( d_.)| % 10
  d'4\rest g,_._( g_.) d'\rest a_._( a_.)       | %11
  d4\rest d,-.( d_.) d'\rest d-.( d-.)          | %12
  d4\rest g,_._( g_.) d'\rest e'-.( e-.)        | %13
  d,4\rest f'-.( f-.) d,\rest f,_._( f_.)       | %14
  d'4\rest bes_._( bes_.) d\rest bes'-.( bes-.) | %15
  d,4\rest a'^.^( a^.) d,\rest d,_._( d_.)      | %16
  d'4\rest g,_._( g_.) d'\rest bes'-.( bes-.)   | %17
  d,4\rest <c'a>-.( <c a>-.) d,\rest d,_._( d_.)| %18
  d'4\rest g,_._( g_.) d'\rest a_._( a_.)       | %19
  d4\rest d,_._( d_.) d'\rest d-.( d-.)         | %20
  d4\rest g-.( g-.) d\rest g,_._( g_.)          | %21
  d'4\rest \stemUp c2 d4\rest d2         | %22
  d4\rest ees2 d4\rest d2              | %23
   \mBreak \stemDown
  b8->( c d c g'4)  cis,8->( d ees d g4)   | %24
  d8->( ees f ees g4) \stemUp \grace { dis16->_([_\( e]) \slashFlag f8 } \stemDown \afterGrace e2.\trill { \stemUp dis16[ e]\) } | %25
  \stemDown f2.~_\( f4 \stemUp <e e,> <f f,>                 | %26
  <fis~ fis,_~>2. <fis fis,>4 <eis eis,> <fis fis,>\)  | %27
   \mBreak
  <g g,>1._\(                                          | %28
  <d d,>1.                                          | %29
  <ees ees,>1.                                      | %30
  <c c,>2. <d d,>                  | %31
   \mBreak
   <cis cis,>4\)\arpeggio \stemNeutral \doubleSlursOff <e' a, e>-.( <e a, e>-. <e a, e>-. <e a, e>-. <e a, e>-.) | %32
  <c,!c,!>4 <f'ees!a,f>-.( <f ees a,f>-. <f ees a,f>-. <f ees a,f>-. <f ees a,f>-.)      | %33
   \mBreak
  <bes,,bes,>4 <bes'f d> <d bes f> ees,,<c''g ees><ees c g>  | %34
  d,,4_. g'2 d2._(                          | %35
  g,4_.) <bes'g>2 fis,4_. <a'fis>2                   | %36
  g,4_. <bes'g>2 f,!4_. <b'aes f!>2                 | %37
  ees,,4_. <ees'g>2 c,4_. ees'2                     | %38
  d,4_. <d'c'>2 d,4_. a''( d,)                      | %39
  <g g,>4_. g2 <fis fis,>4_. fis2                   | %40
  <g g,>4_. g2 <f! f,!>4_. f2                       | %41
}

lowerTwo = \relative c {
  \time 4/4
  \repeat unfold 7 { s1 | }      % 1-7
  \time 6/4
  \repeat unfold 14 { s1. | }   %8-21
  \stemDown s4 c,-._( g''-.) s d,-._( g'-.)    | %22
  s4 ees,4-._( g'-.) s d,-._( g'-.)            | %23
  \repeat unfold 11 { s1. | }          | %24-34
  \stemUp \slurUp \tieUp
  s4 <bes ees>(^\> <d bes>2 <cis bes>4 <c a>)\!    | %35
  s4 f!( ees) s ees( d)              | %36
  s4 f!( ees) s ees( d)              | %37
  s4 d( c) s bes( a)                 | %38
  s4 g( fis) s2.                     | %39
  s4 f'( <ees bes>) s ees( <d a>)    | %40
  s4 f( <ees bes>) s ees( <d b aes>) | %41
}
breaks = {
  \repeat unfold 3 { s1 \mNoBreak } s1 \mBreak        % line 1 ( 1- 4)
  \repeat unfold 3 { s1 \mNoBreak } 
     \repeat unfold 2 { s1. \mNoBreak }  s1. \mBreak  % line 2 ( 5-10)
  \repeat unfold 4 { s1. \mNoBreak } s1. \mBreak      % line 3 (11-15)
  \repeat unfold 4 { s1. \mNoBreak } s1. \mBreak      % line 4 (16-20)
  \repeat unfold 4 { s1. \mNoBreak } s1. \mBreak      % line 5 (21-25)
  \repeat unfold 4 { s1. \mNoBreak } s1. \mBreak      % line 6 (26-30)
  \repeat unfold 2 { s1. \mNoBreak } s1. \mBreak      % line 7 (31-33)
  \repeat unfold 3 { s1. \mNoBreak } s1. \mBreak      % line 8 (34-37)
  \repeat unfold 3 { s1. \mNoBreak } s1. \mBreak      % line 9 (38-41)
}

lowerStaff = << { \lowerOne }
                \\
                { \lowerTwo }
                \\
                { \breaks }
>>

dynamics = {
  s4-\fPesante s8 s8 s2                               | % 1
  s4 s2-\dimTxt s4\>                                  | % 2
  s2. s4\!                                            | % 3
  s8 s8\p s2.                                         | % 4
  s1                                                  | % 5
  s4. s8\p s4. s8\<                                   | % 6
  s2. s8 s8\!                                         | % 7
  s2.\> s8\! s2-\pDolce s8                            | % 8
  \repeat unfold 12 { s1. | }                         | % 9-20
  s4 s1\< s4                                          | %21
  s8\! s8\> s2 s2.\!                                  | %22
  s2. s2.\<                                           | %23
  s4\!\> s4\! s1                                      | %24
  s1.\<                                               | %25
  s1.\!\p                                             | %26
  s1.\<                                               | %27
  s1\!\> s2\!                                         | %28
  s1.\<                                               | %29
  s2.\!\> s2.\!                                       | %30
  s1\< s4 s16 s8.\!                                   | %31
  s1.\pp                                              | %32
  s1.                                                 | %33
  s1.                                                 | %34
  s1.                                                 | %35
  s1.\p                                               | %36
  s1.                                                 | %37
  s4 s16 s16-\crescTxt s4. s2.                        | %38
  s1.                                                 | %39
  s1.                                                 | %40
}

pedal = {
 \repeat unfold 6 { s1 | }                                % 1-6
 s1                                                     | % 7
 s2. s2\sustainOn s8 s8\sustainOff                      | % 8
 \repeat unfold 23 { s1. | }                              % 9-31
 s4\sustainOn s1 s4\sustainOff                          | %32
 s4\sustainOn s1 s8 s16. s32\sustainOff                 | %33
 s4\sustainOn s s\sustainOff s\sustainOn s s\sustainOff | %34
 s4\sustainOn s4. s4\sustainOff s8 s2                       | %35
 s4..\sustainOn s4\sustainOff s16 s4..\sustainOn s4\sustainOff s16 | %36
 s4..\sustainOn s4\sustainOff s16 s4..\sustainOn s4\sustainOff s16  | %37
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %38
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %39
 s2\sustainOn s4\sustainOff s4..\sustainOn s4\sustainOff s16  | %40
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %41
}

%-------Typeset music 
\score {
    %\removeWithTag #'played
    \new PianoStaff <<
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