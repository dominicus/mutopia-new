%%--------------------------------------------------------------------
% The Mutopia Project
% LilyPond template for keyboard solo piece
%%--------------------------------------------------------------------

\version "2.18.2"

#(set-default-paper-size "letter")
#(set-global-staff-size 18)

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
  %\voiceOneStyle
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
  a16 bes a gis \stemDown a g'! e f  f g'f e \cadenzaOne  | %33
   \mBreak \stemNeutral
  cis8\) b8\rest d2->\(~ d4 c g                           | %34
  bes2. fis                                               | %35
  g4\)\stopTextSpan \stemUp bes'4^\aTempo s2 a4 s         | %36
  s4 bes4 s2 aes4 s                                       | %37
  s4 g s2 c,4 s                                           | %38
  s4 ees s2 g,4^( <a fis>                                 | %39
  <bes g>4)^\agitato <bes bes'>2 s4 <a a'>2               | %40
  s4 <bes bes'>2 s4 <aes aes'>2                           | %41
  s4 <g'g,>2 s4 <c,c,>2  \slurUp                          | %42
  s4 <ees ees,>2 s4 <fis,fis,>2 (                         | %43
  bes4-.) c,8(^\sPiuMosso bes a g  g'4-.) c,8\( bes a g   | %44
  f'!8_> c ees fis,\< c' ees fis_[ c' f! ees d c]         | %45
  g'4-.\)-\hideF c,8( bes a g  g'4-.) c,8\( bes a g       | %46
  \stemDown
  f'!8-> c ees fis, c' ees  fis c' f! ees d c             | %47
  <bes-\hideMF g'>4-.\) b,8\rest <g''c>( bes d, <fis bes> a d, <bes fis> a d,) | %48
  <g c>8( bes d <g c> bes d,<fis bes> a d,<bes fis> a d,) | %49
  <g c>8( bes d <g c> bes d,<fis, bes> a d,<bes fis>a d,) | %50
  <c'g>8( bes d <g c> bes d, <fis bes> a d,<bes fis> a d,)| %51
  <c'g>8( bes d <g c> bes d, <a'd,>g bes,<ees bes> d g,)  | %52
  \stemNeutral
  <c g>8( bes d, <a'd,> g bes, \clef bass <bes ees>d g, <g c!> bes d,)| %53
  \menoFSpanner
  <c'g>8\startTextSpan\( bes d, <d'g,> c ees, <c'g> bes d, <d'g,> c ees,| %54
  <c'g> bes d, <d'g,> c ees, <c'g> bes d, <d'g,> c ees,\) | %55
  \clef treble
  g8\(\< d'bes d g bes  d-> g bes \ottava #1 d g d'\!     | %56
  bes\> d g, d \ottava #0 bes g d bes g d bes\! c,\)_(\<  | %57
  g'8)\!\>( d'\! bes d g d'bes d g, d bes d,)_(\<         | %58
  fis8)\!\>( d'\! bes d fis d' bes d fis, d bes d,)_(\<\stopTextSpan | %59
  \piuPianoSpanner
  g8)\!(\>\startTextSpan d'\! bes d g bes d g bes \ottava #1 d g d' | %60
  bes8 d g, d \ottava #0 bes g d bes g d bes d,)_(\<\stopTextSpan | %61
  \calandoSpanner
  ges8)\!\>(\startTextSpan d'\!bes d ges d'bes d ges,d bes d,\<)_( | %62
  f8)\!\>( d'\! bes d f_\dimTxt d'bes d f,d bes c,)_(\stopTextSpan | %63
  f8)(^\smorzTxt c'a c f a c f a c \ottava #1 f a         | %64 
  f'4) \ottava #0 b,,,\rest b\rest b2\rest b4\rest        | %65
  \restDownOne R1*6/4                                     | %66
  b2\rest b4\rest b\rest b\rest f->-\menoMosso~\(         | %67
  f2.( g2) g4(                                            | %68
  ees2.)\)~ ees4 ees'4.\( d8                              | %69
  \stemUp c2.( d2) d4(                                    | %70
  bes2.)\) \stemNeutral bes'2\(^\< bes4                   | %71
  bes2->\! aes4 aes g fis                                 | %72
  fis2 g\) aes4.( ees8                                    | %73
  g2 f) g4.\( d8                                          | %74
  f4 ees d \times 2/3 { c8[ d c] } b c d ees              | %75
  f,2.\)(\( g2) g4(                                       | %76
  ees2.)\)_~ ees4 ees'4.\( d8                             | %77
  \stemUp c2.( d2) d4(                                    | %78
  bes2.)\) \stemNeutral bes'2->\( bes4                    | %79
  %-----------------------------------correction to source bar40: bes2->bes2.
  bes2. c,2\) d4\(                                        | %80
  \times 2/3 { ees8 f ees } d4 ees g\) g->(~ \times 2/3 { g8 f ees) } | %81
  ees2. b4\rest g8[( aes] \times 2/3 { bes d c}           | %82
  bes2.)~ bes4 g8([ aes] \times 2/3 { bes d c) }          | %83
  bes2.~ bes4 f8([ aes] \times 2/3 { bes d c }            | %84
  bes4)_~ \times 2/3 { bes8[ des,_\( ees] g[ c bes]} aes4_~ aes8 ces,ees f | %85
  g2\) b4\rest b\rest g8([ aes] \times 2/3 { bes d c }    | %86
  bes4) bes'2.-> \times 2/3 { b,8\rest( g[ aes] bes d c } | %87
  bes4) bes'2.-> \times 2/3 { b,8\rest( f[ aes] bes d c } | %88
  bes4)_~ \times 2/3 { bes8[ des,_\( ees] g[ c bes]} aes4_~ aes8 ces,ees f | %89
  g2.\)_~ g8\noBeam g( bes g'f ees                        | %90
  d2.)~ d8 bes( d bes' d,ees                              | %91
  e4 f2)~ f8 d\( f d'c bes                                | %92
  gis8 a f'e d a \staffDown d,^[ \staffUp a f d e \acciaccatura { g } f] | %93
  e,2.\)\pp b''8\rest \stemDown
     \hideNotes d,8_~^( \unHideNotes \moveNoteOne d2      | %94
  \stemUp a'2.) e'2.(                                     | %95
  d2.) s8 \stemDown
     \hideNotes d,8_~^( \unHideNotes \moveNoteOne d2      | %96
  \stemUp a'2.) fis->(                                    | %97
  gis2.) b8\rest \stemDown
     \hideNotes d,8_~^( \unHideNotes \moveNoteOne d2      | %98
  \stemUp a'2.) e'(                                       | %99
  fis2.) \stemDown s8 c,2( s8                             | %100
  \stemUp a'2.) fis'(                                     | %101
  gis2. fis2) f8\rest gis                                 | %102
  gis2.( fis2) f8\rest gis                                | %103
  gis2.( fis2) f8\rest gis                                | %104
  a2.( fis2 a4)                                           | %105
  \stemDown
  <b gis e d!b>2.(\( <cis gis e d>2) <cis gis e d>4(      | %106
  <a cis,a>2.)\) <a'cis,a>2\( <gis cis,gis>4              | %107
  <fis cis fis,>2.( <gis dis b>2) <gis dis b>4(           | %108
  <e gis,e>2.)\) <e e,>2-^ <e e,>4-^                      | %109
  \squeezeNotation
  <e e,>2->(<d d,>4) \times 2/3 { <d d,>8([<e e,><d d,>] }
     <cis cis,><d d,><fis fis,><e e,>)                    | %110
  <d d,>2->(<cis cis,>4) \times 2/3 { <cis cis,>8([<d d,><cis cis,>] }
     <bis bis,><cis cis,><e e,><d d,>)                    | %111
  \stemUp
  <cis cis,>4( <b b,>4.<ais ais,>8) 
     \times 3/4 {<b b,>4(<bis bis,><cis cis,><gis gis,>) }| %112
  <b b,>4( a4. gis8 \grace { fis16[ gis] } fis4) eis8-.(
     fis-. gis-. a-.)                                     | %113
  <b,gis e d>2.(\( <e cis gis e>2) <e cis gis e d>4(      | %114
  \stemNeutral \unSqueezeNotation
  <a,cis,a>4)\) b\rest <a'cis,a>\(<a'cis,a>2<gis cis,gis>4| %115
  <fis cis fis,>2.(<gis dis b>2)<gis dis a>4(             | %116
  <e gis,e>2)\) b,4\rest \ottava #1 <e''~e,_~>2<e e,>8.<e e,>16  | %117
  <e e,>4-. \ottava #0 b,,\rest b\rest <fis'~ fis,_~>2.->-\tenTxt| %118
  <fis fis,>4 <fis fis,>-\sharpPrall\( <eis eis,>8<fis fis,>
     <gis gis,><ais ais,><b b,><cis cis,><d!d,!><e e,>    |%119
  <fis fis,>4-.\) b,,\rest b\rest <gis'gis,>2->-\tenTxt <gis gis,>4-^ | %120
  gis,8\( gis'a gis <fisis fisis,><gis gis,><ais ais,>
     <bis bis,><cis cis,><dis dis,><e e,><fis fis,>       | %121
  <gis gis,>4-.\)b,,\rest b\rest<gis'gis,>2-^<gis gis,>4-^| %122
  <gis gis,>4-\sharpPrall\( <fisis fisis,>8
     <gis gis,><ais ais,><b b,><cis cis,><dis dis,>
     <eis eis,><fisis fisis,!><gis gis,!><ais ais,!>      | %123
  <b b,>4-.\)
  \bar "|."
}

upperTwo =  \relative c' {
  %\voiceTwoStyle
  \time 4/4
  \repeat unfold 7 { s1 | }                                     % 1-7
  \time 6/4
  \mergeDifferentlyHeadedOn
  s2. s8 \stemUp c8-\hideP d fis bes a \stemDown              | % 8
  b,4\rest <d bes>-.( <d bes>-.) b\rest <g'd>-.( <g d>-.)     | % 9
  c,4\rest <g' ees>-.( <g ees>-.) s8 \stemUp c,8^> d fis bes a \stemDown   | %10
  b,4\rest <d bes>-.( <d bes>-.) g,\rest <cis a g>-.( <cis a g>-.)  | %11
  a4\rest <d a fis>-.( <d a fis>-.) s8 \stemUp c^> d fis bes a \stemDown | %12
%------------ Schirmer, Breitkopf & Härtel, and Cortot: Bar13 5th and 6th beat:<des bes g>
  b,4\rest <d bes>-.( <d bes>-.) g\rest <des'bes g>-.( <des bes g>-.)  | %13
  g,4\rest <bes c>-.( <bes c>-.) \stemUp ees,8^>[ f a ees' d b16\rest cis]  | %14
  e,4\rest \stemDown <a f ees>-.( <a f ees>-.) e\rest <bes' f d>-.( <bes f d>-.)   | %15
  e,4\rest <g ees>-.( <g ees>-.) s8 c,^[^> d fis bes a]       | %16
  a,4\rest <d bes>-.( <d bes>-.) c\rest <g'd>-.(<g d>-.)      | %17
  c,4\rest <g'ees>-.(<g ees>-.) s8 c,^[ d fis bes a]          | %18
  a,4\rest <d bes>-.(<d bes>-.) g,\rest <cis a g>-.(<cis a g>-.)  | %19
  a4\rest <d a fis>-.( <d a fis>-.) s8 c^[ d fis bes a]       | %20
  a,4\rest <f'!d b>4-.( <f d b>-.) g\rest <d'b g f>-.( <d b g f>-.)  | %21
  a4\rest <ees'c g>-.( <ees c g>-.) e,\rest <g d>-.( <g d>-.) | %22
  c,4\rest <g'c,>-.( <g c,>-.) b,\rest <d bes>-.( <d bes>-.)  | %23
  g4\rest <ees'c g>-.( <ees c g>-.) d,\rest <g d>-.( <g d>-.) | %24
  d4\rest <g c,>-.( <g c,>-.) a,\rest <cis bes>-.( <cis bes>-.)  | %25
  a4\rest <d bes>-.( <d bes>-.) e\rest <bes'f d>-.( <bes f d>-.) | %26
  <a ees!>4_\tenutoTxt <a ees> <a ees> <a ees> <a ees> <a ees>| %27
  g\rest <bes ees,> <bes ees,> <bes d,> <bes d,> <bes d,>     | %28
  <fis c> <fis c> <fis c> <fis c> <fis c> <fis c>             | %29
  e\rest <g!c,> <g c,> <g bes,> <g bes,> <g bes,>             | %30
  \moveNoteTwo <g ees> <g ees> <g ees> <fis d> <fis d> <fis d>| %31
  <e a,>4\arpeggio s1\< s4                                    | %32
  s2. s16\! s8.-\pocoCresc s2                                 | %33
  s1.                                                         | %34
  s1. \tieUp \slurUp                                          | %35
  s4 bes'8\<( d\! f\> ees\!~ ees4) a,8\<( cis\! ees\> d\!~    | %36
  d4) bes8\<( d\! f\> ees\!~ ees4) aes,8\<( cis\! ees\> d\!~  | %37
  d4) g,8( b d c~ c4) c,8( gis' bes a~                        | %38
  a4) ees8( b' d c~c4)  ees,8\< d cis c                       | %39
  bes4_\f bes'8->( d f ees) b4\rest a8->( cis ees d)          | %40
  b4\rest bes8->( d f ees) b4\rest aes8->( cis ees d)         | %41
  b4\rest g8->( b d c) b4\rest c,8->( gis' bes a)             | %42
  b4\rest ees,8->( b' d c) b4\rest fis,8-> cis' ees d         | %43
  bes4-\hideF g-> s4 bes g-> s4                               | %44
  s1.                                                         | %45
  bes'4 g-> s bes g-> s                                       | %46
  \repeat unfold 3 { s1. | }                                  | %47-49
  \repeat unfold 17 { s1. | }                                 | %50-66
  s1 s4 \stemDown \ignoreClashOnce c,4_~                      | %67
  c2._( d                                                     | %68
  ees2.) s                                                    | %69
  g2._( a                                                     | %70
  bes2.) s                                                    | %71
  \repeat unfold 4 { s1. | } \slurDown                          %72-75
  c,!2.( d                                                    | %76
  ees2.) s                                                    | %77
  g2.( a                                                      | %78
  bes2.) s                                                    | %79
  \repeat unfold 5 { s1. | }                                    %80-84
  s4 \scaleDurations 2/3 { s8 des,4-> s4. } s4 s8 ces4-> s8   | %85
  \repeat unfold 3 { s1. | }                                    %86-88
  s4 \scaleDurations 2/3 { s8 des4-> s4. } s4 s8 ces4-> s8    | %89
  \repeat unfold 4 { s1. | }                                    %90-93
  s2. \stemUp s8 d8-\hidePP e^\aTempoMenoMosso gis c b        | %94
  c,4\rest \stemDown <e c>-.( <e c>-.) e\rest a-.( a-.)       | %95
  e\rest <a f>-.( <a f>-.) b8\rest \stemUp d,e gis c b \stemDown | %96
  c,4\rest <e c>_.( <e c>)_.) a,\rest <e'c a>_.( <e c a>_.)   | %97
  a,\rest <e'b>_.( <e b>_.) s8 \stemUp d e! gis! c b          | %98
  \stemDown c,4\rest <e c>_.( <e c>_.) d\rest <c'a>_.(<c a>_.)| %99
  g4\rest <c a e>_.( <c a e>_.) b8\rest \stemUp c,8 e gis b a | %100
  \stemDown c,4\rest <e c>_.( <e c>_.) e\rest <c'a e>_.( <c a e>_.) | %101
  e,4\rest <dis'c a>_.(<dis c a>_.) g,\rest <dis'c a> g,\rest  | %102
  g4\rest <dis'c a> <dis c a> g,\rest <dis'c a> g,\rest       | %103
  g4\rest <dis'c a> <dis c a> g,\rest <dis'c a> g,\rest       | %104
  g4\rest<fis'dis c><fis dis c> g,\rest <fis'dis c><fis dis c>| %105
  \repeat unfold 4 { s1. | }                                  | %106-109
  \squeezeNotation
  \moveNoteTre a1.                                            | %110
  \moveNoteTre gis1.                                          | %111
  fis2. eis2 s4                                               | %112
  <fis cis>2. <dis b a>4 <dis b a>8<dis b a><dis b a><dis b a>| %113
  s1.                                                         | %114
}

upperTre = \relative c' {
  \time 4/4 \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn \stemDown
  \repeat unfold 7 { s1 | } \time 6/4        % 1-7
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
  \repeat unfold 73 { s1. | }                %21-93
  s1 \tweak Stem.transparent ##t e2        | %94
  s1.                                      | %95
  s1 \tweak Stem.transparent ##t e2        | %96
  s1.                                      | %97
  s1 \tweak Stem.transparent ##t e2        | %98
  s1.                                      | %99
  s1  e4. s8                               | %100
  \repeat unfold 12 { s1. | }                %101-112
  s4 a2 s2.                                | %113
}
upperQtr = \relative c' {
  \time 4/4
  \repeat unfold 7 { s1 | }                  % 1-7
  \time 6/4 \mergeDifferentlyDottedOn \stemDown
  s1 s8 fis4.-\hideP                       | % 8
  s1.                                      | % 9
  s1 s8 fis4.                              | %10
  s1.                                      | %11
  s1 s8 fis!4.                             | %12
  \repeat unfold 3 { s1. | }                 %13-15
  s1 s8 fis4.                              | %16
  s1.                                      | %17
  s1 s8 fis4.                              | %18
  s1.                                      | %19
  s1 s8 fis!4.                             | %20
  \repeat unfold 73 { s1. | }                %21-93
  s1 s8 gis4.-\hidePP                      | %94
  s1.                                      | %95
  s1 s8 gis4.                              | %96
  s1.                                      | %97
  s1 s8 gis4.                              | %98
  s1.                                      | %99
  s1 s8 gis4 s8                            | %100
}

upperStaff =  <<
  { \upperOne } \\ 
  { \upperTwo } \\
  { \upperTre } \\
  { \upperQtr }
>>

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
   \bar "||" \time 6/4 \stemNeutral
  d,2.\rest\sustainOff d,4-. d'\rest d\rest     | % 8
  d4\rest g,_._( g_.) d'\rest bes'-.( bes-.)    | % 9
  d,4\rest <c'a>-.( <c a>-.) d,\rest d,_._( d_.)| %10
  d'4\rest g,_._( g_.) d'\rest a_._( a_.)       | %11
  d4\rest d,_._( d_.) d'\rest d-.( d-.)         | %12
  d4\rest g,_._( g_.) d'\rest e'-.( e-.)        | %13
  d,4\rest f'-.( f-.) d,\rest f,_._( f_.)       | %14
  d'4\rest bes_._( bes_.) d\rest bes'-.( bes-.) | %15
  d,4\rest a'^.^( a^.) d,\rest d,_._( d_.)      | %16
  d'4\rest g,_._( g_.) d'\rest bes'-.( bes-.)   | %17
  d,4\rest <c'a>-.( <c a>-.) d,\rest d,_._( d_.)| %18
  d'4\rest g,_._( g_.) d'\rest a_._( a_.)       | %19
  d4\rest d,_._( d_.) d'\rest d-.( d-.)         | %20
  d4\rest g-.( g-.) d\rest g,_._( g_.)          | %21
  d'4\rest \stemUp c2 d4\rest d2                | %22
  d4\rest ees2 d4\rest d2  \stemDown            | %23
  b8->( c d c g'4)  cis,8->( d ees d g4)        | %24
  d8->( ees f ees g4) \stemUp \grace { dis16->_([_\( e]) \slashFlag f8 } \stemDown \afterGrace e2.\trill { \stemUp dis16[ e]\) } | %25
  \stemDown f2.~_\( f4 \stemUp <e e,> <f f,>    | %26
  <fis~ fis,_~>2. <fis fis,>4 <eis eis,> <fis fis,>\)  | %27
  <g g,>1._\(                                   | %28
  <d d,>1.                                      | %29
  <ees ees,>1.                                  | %30
  <c c,>2. <d d,>                               | %31
   <cis cis,>4\)\arpeggio \stemNeutral \doubleSlursOff <e' a, e>-.( <e a, e>-. <e a, e>-. <e a, e>-. <e a, e>-.) | %32
  <c,!c,!>4 <f'ees!a,f>-.( <f ees a,f>-. <f ees a,f>-. <f ees a,f>-. <f ees a,f>-.)      | %33
  <bes,,bes,>4 <bes'f d> <d bes f> ees,,<c''g ees><ees c g>  | %34
  d,,4_. g'2 d2._(                              | %35
  g,4_.) <bes'g>2 fis,4_. <a'fis>2              | %36
  g,4_. <bes'g>2 f,!4_. <b'aes f!>2             | %37
  ees,,4_. <ees'g>2 c,4_. ees'2                 | %38
  d,4_. <d'c'>2 d,4_. a''( d,)                  | %39
  <g g,>4_. g2 <fis fis,>4_. fis2               | %40
  <g g,>4_. g2 <f! f,!>4_. f2                   | %41
  <ees ees,>4_. ees2 <c c,>4_. \stemDown c2     | %42
  \stemNeutral
  d,4_. <g'a,>( <fis c>) d,_. <ees'g,>( <d c>)  | %43
  \stemDown
  g,4 \stemUp <g g,>2_( <d'g,>4_.) \stemDown g, d'\rest | %44
  <ees c g>2._~ <ees c g>4 \stemUp <g g,> \stemNeutral <ees'ees,>| %45
  s4 <g,g,>2( <g d'>4-.) g d\rest               | %46
   \clef treble
  b''4\rest a2->(~ a4 <g g,> <ees'ees,>         | %47
  \stemDown
  <d g,>4-.) b\rest b\rest <a fis ees>_._\fz s2 | %48
  s4 d,2_( <a'fis ees>4_.)_\fz s2               | %49
  s2. \clef bass <ees,fis a>4_._> s2            | %50
  s4 d2_( <ees fis a>4_._>) s2                  | %51
  g,2 d'4\rest \stemNeutral <cis cis,>_( <d d,>) d\rest | %52
  <g,g,>4( d') d\rest cis,_( d) d'\rest         | %53
  <g,g,>4 d'\rest c,!( <g'g,>) d'\rest c,(      | %54
  <g'g,>4) d'\rest c,( <g'g,>) d'\rest c,(      | %55
  <g'g,>2.) d'4\rest <d'g>-.( <d g,>-.          | %56
  <d g>2) d,4\rest d\rest d\rest d,_(           | %57
  <g~ g,_~>2.) <g g,>2 d4_(                     | %58
  <fis~ fis,_~>2.) <fis fis,>2 d4_(             | %59
  <g g,>2.) d'4\rest <d g>(-. <d g,>-.          | %60
  <d g>2) d4\rest d\rest d\rest d,_(            | %61
  <ges~ ges,_~>2.) <ges ges,>2 d4_(             | %62
  f2.)(~ f2 g4                                  | %63
  a!2) d4\rest d\rest <c'f>(\( <c f,>-.         | %64
  \piuDimSpanner
  <c~ f_~>2.)\startTextSpan <c f>2 <c f,>4(     | %65
  <c~ f_~>2.) <c f>2 <c f,>4(                   | %66
  <c f>2 <c f,>4 <c f> <c f,> \staffUp \hideNotes \stemDown
      f)\)\stopTextSpan \unHideNotes \staffDown | %67
  \stemNeutral bes,,,4(_. bes' aes'f c'bes)     | %68
  ees,,4( bes' ees g bes ees)                   | %69
  c( ees f, ees'g f)                            | %70
  bes,,( f' bes d f bes)                        | %71
  c,4( ees f, bes d aes')                       | %72
  bes,( d ees, aes c g')                        | %73
  aes,( c d,g b f')                             | %74
  g,( c c,f a! ees')                            | %75
  f,4( aes bes,aes'c bes)                       | %76
  ees,,4( bes'ees g bes ees)                    | %77
  c( ees f,ees'g f)                             | %78
  bes,,4( f'bes d f bes)                        | %79
  c,,,4 e''( bes \stemUp g e' bes)              | %80
  f4 ees'!( a,) bes, \stemNeutral d'( aes)      | %81
  \stemDown
  ees,8( bes'g'ees bes'g ees'4) d,4\rest d\rest | %82
  ees,8( bes'g'ees bes'g ees'4) d,4\rest d\rest | %83
  ees,8( bes' aes'f bes aes d4) d,4\rest d\rest | %84
  ees,8( bes'g'4) d\rest ees,8(ces'aes'4)d,\rest| %85
  ees,8( bes'g'ees bes'g ees'4) d,\rest d\rest  | %86
  ees,8( bes'g'ees bes'g ees'4) d,\rest d\rest  | %87
  ees,8( bes'aes'f bes aes d4) d,\rest d\rest   | %88
  ees,8( bes'g'4) d\rest ees,8(ces'aes'4)d,\rest| %89
  ees,8( bes'g'ees bes'g ees'4) d,\rest d\rest  | %90
  g,8( d'bes'g d'bes g'4) d,\rest d\rest        | %91
  bes8( f'd'bes f'd bes'4) d,,\rest d\rest      | %92
  d8( a'f' \clef treble d a'f d'4) b\rest b\rest| %93
  \clef bass \stemNeutral \slurDown
  d,,\rest e,_.(-\hidePP e_.) d'\rest e,_.( e_.)| %94
  d'\rest e,_.( e_.) b'\rest <a'e>_.( <a e>_.)  | %95
  b,\rest <a'e>_.( <a e>_.) b,\rest \stemDown e,_.( e_.) | %96
  e4\rest e_.( e_.) e\rest e_.( e_.)            | %97
  e4\rest e_.( e_.) e\rest e_.( e_.)            | %98
  e4\rest e_.( e_.) b'\rest <c'a e>_.(<c a e>_.)| %99
  b,4\rest<c'a e>_.(<c a e>_.)e,,\rest e_.( e_.)| %100
  e4\rest e_.( e_.) d'\rest <c'a e>_.(<c a e>_.)| %101
  d,4\rest <c'a e>_.(<c a e>_.) d,\rest <c'a e> d,\rest | %102
  d4\rest <c'a e><c a e> d,\rest <c'a e> d,\rest| %103
  d4\rest <c'a e><c a e> d,\rest <c'a e> d,\rest| %104
  \stemNeutral \slurUp
  d4\rest <c'a e><c a e> d,\rest <c'a e> <c a e>\arpeggio| %105
  <e,,e,>4\arpeggio<d''gis,e>( <e d gis,> <gis d b> <e d gis,> <d gis,e>) | %106
  <a,a,>4 <cis'e,>(<e a,><a cis,><e a,><cis e,>)| %107
  <b,b,>4 <b'fis>(<dis a><fis b,><dis a><b fis>)| %108
  <e,e,>4 <b'e,>(<e gis,><gis b,><e gis,><b e,>)| %109
  \squeezeNotation
  <fis fis,>4 <d'fis,>( <a'a,>) <b,,b,> <d'~ fis,>( <a'd,b>)   | %110
  <e,e,>4 <cis'e,>( <gis'gis,>) <a,,a,><cis'~e,>( <gis'cis,a>) | %111
  <d,d,>4 <b'd,>(<fis'fis,>) <cis,cis,> <cis'gis>(<eis b>)     | %112
  <fis,,fis,>^> fis'2 <bes,bes,>4 fis'2         | %113
  <e,e,>4<gis'b,><b ees,><d gis,><b ees,><gis b,>| %114
  <a,a,>4 <cis'e,> <e a,> <a cis, ><e a,><cis e,>| %115
  <b,b,>4 <b'fis ><dis a> <fis b, ><dis a><b fis>| %116
  <e,e,>4 <b'e,> <e gis,> <gis b,><e gis,> <b e,>| %117
  <e,e,>4 <ais e> <cis fis,> <e ais,!> <cis fis,> <ais e>| %118
  <e,e,>4 <ais'e> <cis fis,> <e ais,!> <cis fis,> <ais e>| %119
  <e e,>4 <bis'e,><dis gis,><fis bis,> <dis gis,><bis e,>| %120
  <e,,e,>4<bis''e,><dis gis,><fis bis,!><dis gis,><bis e,>| %121
  <e,e,>4<cis'e,><e gis,><dis,dis,><b'dis,><dis gis,>    | %122
  <cis,cis,>4<gis'cis,><cis e,><gis,gis,><gis'b,><b dis,>| %123
}

lowerTwo = \relative c {
  \time 4/4
  \repeat unfold 7 { s1 | }                          % 1-7
  \time 6/4
  \repeat unfold 14 { s1. | }                        %8-21
  \stemDown s4 c,-._(-\hideP g''-.) s d,-._( g'-.) | %22
  s4 ees,4-._( g'-.) s d,-._( g'-.)                | %23
  \repeat unfold 11 { s1. | }                      | %24-34
  \stemUp \slurUp \tieUp
  s4 <bes ees>(^\> <d bes>2 <cis bes>4 <c a>)\!    | %35
  s4 f!( ees) s ees( d)                            | %36
  s4 f!( ees) s ees( d)                            | %37
  s4 d( c) s bes( a)                               | %38
  s4 g( fis) s2.                                   | %39
  s4 f'( <ees bes>) s ees( <d a>)                  | %40
  s4 f( <ees bes>) s ees( <d b aes>)               | %41
  s4 d( <c g>) s bes( <a ees>)                     | %42
  s1.                                              | %43
  d,4 s2. ees8( d) s4                              | %44
  a'4\rest a2^>^\(~ a4 s2                          | %45
  \stemDown <d d,>4^.\) s2. \stemUp ees8( d) s4    | %46
  \clef treble \stemDown \tieDown
  <ees c g>2.~ <ees c g>4 s2 \stemUp               | %47
  s2. ees'4^>( d d,                                | %48
  g,-.) d'(^\< d'\! ees^> d d,                     | %49
  g,4) b'\rest \clef bass d,,( ees'd d,            | %50
  g,4-.) d'(\< d'\! ees d d,                       | %51
  g,4)( <d'd'>) s1                                 | %52
  \repeat unfold 10 { s1. | }                      | %53-62
  \stemDown f,,1.~                                 | %63
  f2 s1                                            | %64
  s1.                                              | %65
  s1.                                              | %66
  s1 s4 d''\rest                                   | %67
  \repeat unfold 12 { s1. | }                      | %68-79
  s2. g_(                                          | %80
  f2. bes,4) s2                                    | %81
  \repeat unfold 4 { s1. | }                         %82-85
  \stemUp s2 bes'4^> s2.                           | %86
  \repeat unfold 3 { s1. | }                         %87-89
  s2 bes4^> s2.                                    | %90
  \repeat unfold 4 { s1. | }                         %91-94
  s2. e2.(                                         | %95
  d2.) a2.\rest                                    | %96
  a2.\rest fis^>(                                  | %97
  gis2.) a2.\rest                                  | %98
  a2.\rest e'(                                     | %99
  fis2.)-\hideF a,2.\rest                          | %100
  a2.\rest fis'(                                   | %101
  gis2.^> fis2) f8\rest gis                        | %102
  gis2.^>( fis2) f8\rest gis                       | %103
  gis2.^>( fis2) f8\rest gis                       | %104
  a2.( gis2 a4)\arpeggio                           | %105
  \repeat unfold 7 { s1. | }                         %106-112
  \squeezeNotation
  s4 cis,( <fis a,>) s b,( <dis a>)                | %113
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
  \repeat unfold 3 { s1. \mNoBreak } s1. \mBreak      % line 10 (42-45)
  \repeat unfold 3 { s1. \mNoBreak } s1. \mBreak      % line 11 (46-49)
  \repeat unfold 3 { s1. \mNoBreak } s1. \mBreak      % line 12 (50-53)
  \repeat unfold 3 { s1. \mNoBreak } s1. \mBreak      % line 13 (54-57)
  \repeat unfold 3 { s1. \mNoBreak } s1. \mBreak      % line 14 (58-61)
  \repeat unfold 4 { s1. \mNoBreak } s1. \mBreak      % line 15 (62-66)
  \repeat unfold 4 { s1. \mNoBreak } s1. \mBreak      % line 16 (67-71)
  \repeat unfold 3 { s1. \mNoBreak } s1. \mBreak      % line 17 (72-75)
  \repeat unfold 4 { s1. \mNoBreak } s1. \mBreak      % line 18 (76-80)
  \repeat unfold 3 { s1. \mNoBreak } s1. \mBreak      % line 19 (81-84)
  \repeat unfold 3 { s1. \mNoBreak } s1. \mBreak      % line 20 (85-88)
  \repeat unfold 3 { s1. \mNoBreak } s1. \mBreak      % line 21 (89-92)
  \repeat unfold 3 { s1. \mNoBreak } s1. \mBreak      % line 22 (93-96)
  \repeat unfold 3 { s1. \mNoBreak } s1. \mBreak      % line 23 (97-100)
  \repeat unfold 3 { s1. \mNoBreak } s1. \mBreak      % line 24 (101-104)
  \repeat unfold 4 { s1. \mNoBreak } s1. \mBreak      % line 25 (105-109)
  \repeat unfold 4 { s1. \mNoBreak } s1. \mBreak      % line 25 (110-114)
  \repeat unfold 4 { s1. \mNoBreak } s1. \mBreak      % line 26 (115-119)
  \repeat unfold 3 { s1. \mNoBreak } s1. \mBreak      % line 27 (120-123)
}

lowerStaff = <<
  { \lowerOne } \\
  { \lowerTwo } \\
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
  \repeat unfold 3 { s1. | }                          | %41-43
  s1.\f                                               | %44
  s1.                                                 | %45
  s1.\f                                               | %46
  s1.                                                 | %47
  s1.-\piuF                                           | %48
  s1.                                                 | %49
  \repeat unfold 18 { s1. | }                           %50-67
  s1.\pp                                              | %68
  \repeat unfold 13 { s1. | }                           %69-81
  s1.-\semprePP                                       | %82
  \repeat unfold 7 { s1. | }                            %83-89
  \semprePiuPSpanner s1.\startTextSpan                | %90
  s1 s4 s8\stopTextSpan \eRallSpanner s8\startTextSpan| %91
  s1.                                                 | %92
  s1 s4. s8\stopTextSpan                              | %93
  s2. s8 s2-\sottoVoce s8                             | %94
  s1.                                                 | %95
  s1 s2-\semprePP                                     | %96
  s1.                                                 | %97
  s1.                                                 | %98
  s2.\< s2.-\crescTiny                                | %99
  s2.\f s8 s8\pp s2                                   | %100
  s2.\< s2.-\crescTiny                                | %101
  s4\fz \sempreCrescSpanner s4\startTextSpan s2. s4\< | %102
  s1.\sf                                              | %103
  s1\sf s4 s8. s16\stopTextSpan                       | %104
  s2.^\moltoCresc s2.\<                               | %105
  s1.\ff                                              | %106
  \repeat unfold 5 { s1. | }                            %107-111
  s2. s2.\<                                           | %112
  s2.\! s4 s2\<                                       | %113
  s1.\ff                                              | %114
  \repeat unfold 3 { s1. | }                            %115-117
  s1.-\semprePiuF                                     | %118
  s2 s1\<                                             | %119
  s16 s8.\! s4 s1                                     | %120
  s2 s1\<                                             | %121
  s16 s16\! s8 s1^\moltoCresc s4                      | %122
  s4 s1\< s4                                          | %123
  s1.\!-\ffz                                          | %124
} 

pedal = {
 \repeat unfold 6 { s1 | }                                % 1-6
 s1                                                     | % 7
 s2. s2\sustainOn s8 s8\sustainOff                      | % 8
 \repeat unfold 23 { s1. | }                              % 9-31
 s4\sustainOn s1 s4\sustainOff                          | %32
 s4\sustainOn s1 s8 s16. s32\sustainOff                 | %33
 s4\sustainOn s s\sustainOff s\sustainOn s s\sustainOff | %34
 s4\sustainOn s4. s4\sustainOff s8 s2                   | %35
 s4..\sustainOn s4\sustainOff s16 s4..\sustainOn s4\sustainOff s16 | %36
 s4..\sustainOn s4\sustainOff s16 s4..\sustainOn s4\sustainOff s16 | %37
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %38
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %39
 s2\sustainOn s4\sustainOff s4..\sustainOn s4\sustainOff s16  | %40
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %41
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %42
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %43
 s1.                                                    | %44
 s2.\sustainOn s8 s8\sustainOff s2                      | %45
 s1.                                                    | %46
 s2\sustainOn s4 s8 s8\sustainOff s2                    | %47
 s1.                                                    | %48
 s2\sustainOn s8 s8\sustainOff s2.                      | %49
 s2\sustainOn s8 s32\sustainOff s16. s2.                | %50
 s2\sustainOn s8. s16\sustainOff s2.                    | %51
 s2\sustainOn s1\sustainOff                             | %52
 s2\sustainOn s1\sustainOff                             | %53
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %54
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %55
 s1.\sustainOn                                          | %56
 s1 s4 s4\sustainOff                                    | %57
 s1\sustainOn s4 s4\sustainOff                          | %58
 s1\sustainOn s4 s4\sustainOff                          | %59
 s1.\sustainOn                                          | %60
 s1 s4 s4\sustainOff                                    | %61
 s1\sustainOn s4. s8\sustainOff                         | %62
 s1\sustainOn s4. s8\sustainOff                         | %63
 s1.\sustainOn                                          | %64
 s1.                                                    | %65
 s1.                                                    | %66
 s1 s4 s4\sustainOff                                    | %67
 s1\sustainOn s2\sustainOff                             | %68
 s1\sustainOn s4. s8\sustainOff                         | %69
 s1\sustainOn s2\sustainOff                             | %70
 s1\sustainOn s4 s4\sustainOff                          | %71
 s1\sustainOn s4 s4\sustainOff                          | %72
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %73
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %74
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %75
 s1\sustainOn s2\sustainOff                             | %76
 s1\sustainOn s4 s4\sustainOff                          | %77
 %---------------------------------- the SustainOff prior to 6th beat (bar 78) pulls
 %---------------------------------- the note column unexpectedly to left..why?
 s1\sustainOn s8. s16\sustainOff s4                     | %78
 s1\sustainOn s4. s8\sustainOff                         | %79
 %---------------------------------- can't get this one to land on 4th beat
 %---------------------------------- ...trying results in notecolumn shifts
 s2.\sustainOn s2.\sustainOff                           | %80
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %81
 s1\sustainOn s4 s4\sustainOff                          | %82
 s1\sustainOn s4 s4\sustainOff                          | %83
 s1\sustainOn s4 s4\sustainOff                          | %84
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %85
 s1\sustainOn s4 s4\sustainOff                          | %86
 s1\sustainOn s4 s4\sustainOff                          | %87
 s1\sustainOn s4 s4\sustainOff                          | %88
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %89
 s1\sustainOn s4 s4\sustainOff                          | %90
 s1\sustainOn s4 s4\sustainOff                          | %91
 s4\sustainOn s8\sustainOff s8 s2.\sustainOn s4\sustainOff | %92
 s1\sustainOn s4 s4\sustainOff                          | %93
 s1\sustainOn s4 s4\sustainOff                          | %94
 s1\sustainOn s4.. s16\sustainOff                       | %95
 s2\sustainOn s4\sustainOff s2\sustainOn s8 s8\sustainOff| %96
 s2\sustainOn s16 s8.\sustainOff s2\sustainOn s16 s8.\sustainOff  | %97
 s1\sustainOn s4. s16\sustainOff s16                    | %98
 s1.\sustainOn                                          | %99
 s2 s4\sustainOff s4\sustainOn s4. s16\sustainOff s16   | %100
 s1\sustainOn s4 s4\sustainOff                          | %101
 s2\sustainOn s4\sustainOff s2\sustainOn s8 s8\sustainOff| %102
 s2\sustainOn s4\sustainOff s2\sustainOn s8 s8\sustainOff| %103
 s2\sustainOn s4\sustainOff s2\sustainOn s8 s8\sustainOff| %104
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %105
 s1\sustainOn s4 s4\sustainOff                          | %106
 s1\sustainOn s4 s4\sustainOff                          | %107
 s1\sustainOn s4 s4\sustainOff                          | %108
 s1\sustainOn s4 s4\sustainOff                          | %109
 s2\sustainOn s4\sustainOff s16 s4\sustainOn s8 s8.\sustainOff s8  | %110
 s2\sustainOn s4\sustainOff s16 s4\sustainOn s8 s8.\sustainOff s8  | %111
 s2\sustainOn s4\sustainOff s2\sustainOn s8. s16\sustainOff  | %112
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %113
 s1\sustainOn s4. s16\sustainOff s16                    | %114
 s1\sustainOn s4 s4\sustainOff                          | %115
 s1\sustainOn s4 s4\sustainOff                          | %116
 s1\sustainOn s4 s4\sustainOff                          | %117
 s1\sustainOn s4 s4\sustainOff                          | %118
 s2\sustainOn s8. s16\sustainOff s2.                    | %119
 s1\sustainOn s4 s4\sustainOff                          | %120
 s2\sustainOn s8. s16\sustainOff s2.                    | %121
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %122
 s2\sustainOn s4\sustainOff s2\sustainOn s4\sustainOff  | %123
}

%-------Typeset music 
\score {
    %\removeWithTag #'played
    \new PianoStaff <<
        \new Staff = "upper" \with { \consists "Span_arpeggio_engraver" }
           { \clef treble \global \connectArpeggio \upperStaff }
        \new Dynamics = "dyns" { \dynamics }
        \new Staff = "lower" \with { \consists "Span_arpeggio_engraver" }
           { \clef bass \global \connectArpeggio \lowerStaff }
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
%}