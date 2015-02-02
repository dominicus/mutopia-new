\version "2.18.2"

 #(set-default-paper-size "letter")

#(set-global-staff-size 18)

\paper {
    top-margin = 8\mm                              %-minimum top-margin: 8mm
    top-markup-spacing.basic-distance = #6         %-dist. from bottom of top margin to the first markup/title
    markup-system-spacing.basic-distance = #5      %-dist. from header/title to first system
    top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
    last-bottom-spacing.basic-distance = #12       %-pads music from copyright block
    ragged-bottom = ##f
    ragged-last-bottom = ##t
}

\header {
    title = "Keyboard Concerto No. 4 in A Major"
    composer = "Johann Sebastian Bach (1685-1750)"
    opus = "BWV 1055"
    piece = \markup \bold \larger \concat { \hspace #12 "Allegro." }
    date = "1738"
    style = "Baroque"
    source = "Bach-Gesellschaft Edition 1869 Band 17"

    maintainer = "Javier Ruiz-Alma"
    maintainerEmail = "Javier (at) ruiz-alma.com"
    license = "Creative Commons Attribution-ShareAlike 4.0"

    mutopiatitle = "Keyboard Concerto No. 4 in A Major"
    mutopiaopus = "BWV 1055.1"
    mutopiacomposer = "BachJS"
    mutopiainstrument = "Piano,Clavichord,Harpsichord,Violin,Viola,Cello"

    footer = "Mutopia-2001/01/01-1"
    copyright = \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9 "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
    tagline = ##f
}

%--------Definitions
\include "../common/bwv-1055-definitions.ily"

global = {
  \key a \major
  \time 2/2
}

violinI = \relative c'' {
  \setBeatStructureQuarter
  | r8 cis16[-\scrSpiccato d] e8 a cis,[ e a, cis]
  | r8 b16[ cis] d8 b' d,[ gis b, d]
  | cis8 a fis'4~ fis8 gis16( a b[ a gis a])
  | b8 b, e4 ~ e8 fis16( gis a gis fis gis)
  %5
  | a8 a,16 gis a8 a'16 gis a8 a,16 gis a8 a'16 gis
  | a8 gis16 fis gis8 e cis dis4( e16 fis)
  | b,8 dis( ~ dis16 e dis e) a,8 dis!4( e16 fis)
  | gis,8 a16 b cis8[ fis] b,[ b'] a16( gis) fis( gis)
  | e8 gis,16 a b8[ e] gis,[ b e,gis]
  %10
  | r8 e'16 fis gis8 b e,[ gis b, e]
  | r8 a16 gis a8 e cis[ e a,cis]
  | e8 g16 fis g8 e cis[ e a, cis]
  | fis b,4( cis16 d) e8 a,4( b16 cis)
  | d16 cis d e d fis e d cis b cis d cis e d cis
  %15
  | b16 a b cis b( cis a) b cis b cis d cis( d b) cis
  | d16 cis d e d cis b a e'8_[ a,e gis]
  | a8[ e-\scrPiano-\hideP a gis] a16( b cis d e8) d
  | cis8 r8 r4 r8 b[ e dis]
  | e16( fis gis a b8) a gis r8 r4
  %20
  | r8 e[ a gis] a16( b cis d e8) gis,
  | a8 r8 r4 r2
  | R1
  | r8 gis,16-\scrForte-\hideF a b8 e gis,[ b e,gis]
  | r8 e'16 fis gis8 b e,[ gis b,e]
  %25
  | a8 cis,16-\scrPiano-\hideP d e8 r r a,16 b cis8 r
  | r2 r8 cis fis4 ~
  | fis8 e16 dis e4 ~ e8 dis!16 cis dis8. e16
  | e1 ~
  | e2 r2
  %30
  | R1*3
  | r8 e16-\scrForte-\hideF dis e8 b gis[ b e,gis]
  | b8 d!16 cis d8 b gis[ b e,gis]
  %35
  | cis8 a fis'4 ~ fis8 gis16( a b a gis a)
  | b8 b, e4 ~ e8 fis16( gis a gis fis gis)
  | a8 a,16 gis a8 a'16 gis a8 a,16 gis a8 a'16 gis
  | a8 gis16 fis gis8 e cis dis4( e16 fis)
  | b,8 dis( ~ dis16 e dis e) a,8 dis!4( e16 fis)
  %40
  | gis,8 a16 b cis8 fis b,b' a16( gis) fis( gis)
  | e8 gis,16-\scrPiano-\hideP a b8 r r b16 cis d8 r
  | r2 r8 cis16 d e8 a
  | cis,8[ e a,cis] e,_[ cis'16 d] e8 r
  | r8 e16 fis g8 r r d16 e fis8 r
  %45
  | r2 r8 cis16 d e8 r
  | r2 r8 b16 cis d8 r
  | r8 g16 fis g8 r r4 r8 e16 d
  | e8 r r4 r2
  | r8 d16-\scrForte-\hideF e fis8 b d,[ fis b,d]
  %50
  | \stemDown fis,8 b16 cis dis8 fis b,[ dis fis,b]
  | e,8 d'!16-\scrPiano-\hideP cis d8 r r d16 cis d8 r
  | \stemNeutral r8 e[ a,cis] fis, r r4
  | r8 d'^[ gis,b] eis, r8 r4
  | r8 a16 b cis8 r r b16 cis d8 r
  %55
  | r8 cis16 d e8 r r2
  | R1
  | r8 a,16-\scrForte-\hideF b cis8 fis a,[ cis fis,a]
  | r8 fis'16-\scrForte-\hideF gis ais8 cis fis,[ ais cis,fis]
  | b,8 a'!16-\scrPiano-\hideP gis a8 r r a16 gis a8 r
  %60
  | r8 b[ e,gis] cis, r r4
  | r8 a'[ dis, fis] bis, r r4
  | r8 e,[( dis e]) r e[( dis e])
  | r8 e[( dis e]) r2
  | R1
  %65
  | r8 e'16-\scrForte-\hideF fis gis8 cis e,[ gis cis,e]
  | r8 dis16 e fis8 a dis,[fis bis,dis]
  | e2-\scrPiano-\hideP ~ e16 d! e fis e g fis e
  | d2~ d16 cis d e d fis e d
  | cis8 e a2.~
  %70
  | a2~ a8 a, d4 ~
  | d8 e,16 d e8 cis' ~ cis fis,16 e fis8 b ~
  | b8 gis16 fis gis8 b e,[ a cis,fis]
  | b,-\scrPianoPar-\hideP b'16 cis e8 r r gis,16 a \once \stemUp b8 r
  | r8 gis'16 a b8 r r a,16 b cis8 r
  %75
  | r8 fis,16 gis a8 r r fis'16 gis a8 r
    \setBeatStructureHalf \stemDown
  | r8 a dis,fis b, dis fis,a \stemNeutral
  | dis,8 fis b, r r2
  | R1
  | r8 cis'16-\scrForte-\hideF d e8[ a] cis,e a,cis
  %80
  | r8 b16 cis d8[ b'] d, gis b, d
    \setBeatStructureQuarter
  | cis8 cis,16-\scrPiano-\hideP d e8 r r e16 fis g8 r
  | r2 r8 fis16-\scrPiano g a8^[ d]
  | gis,![ b d, gis] b,gis'16 a \once \stemUp b8 r
  | r8 gis'16 a b8 r r cis,16 d e8 r
  %85
  | r2 r8 b16 cis d8 r
  | r2 r8 a16 b cis8 r
  | r8 b'16 a b8 r r4 r8 d,16 cis
  | d8 r r4 r2
  | r8 cis16-\scrSpiccatoLeft-\scrForteParCtr-\hideF d e8 a cis,[ e a,cis]
  %90
  | r8 b16 cis d8 b' d,8[ gis b, d]
  | cis8 a fis'4~ fis8 gis16( a b a gis a)
  | b8 b, e4~ e8 fis16( gis a gis fis gis)
  | a8 a,16 gis a8 a'16 gis a8 a,16 gis a8 a'16 gis
  | a8 gis16 fis gis8 e cis dis4( e16 fis)
  %95
  | b,8 dis( ~ dis16 e dis e) a,8 dis!4( e16 fis)
  | gis,8 a16 b cis8 fis b,b'a16( gis) fis( gis)
  | e8 gis,16 a b8 e gis,[ b e,gis]
  | r8 e'16 fis gis8 b e,[ gis b,e]
  | r8 a16 gis a8 e cis[ e a,cis]
  %100
  | e8 g16 fis g8 e cis[ e a,cis]
  | fis8 b,4( cis16 d) e8 a,4( b16 cis)
  | d16 cis d e d fis e d cis b cis d cis e d cis
  | b a b cis b cis a b cis b cis d cis d b cis
  | d cis d e d cis b a e'8_[ a,e gis]
  %105
  | \tag #'printed { a4 r4 } \tag #'played { a4. r8 } r2
  | \bar "|."
}

violinII = \relative c'' {
  | r8 a16[-\scrSpiccato b] cis8 e a, cis e, a
  | r8 gis16[ a] b8 d b d gis, b
  | a8[ cis16 b] cis8 dis16 e fis8 r8 r4
  | r8 b,16[ a] b8 cis16 dis e8 r8 r4
  %5
  | r8 fis,16[ e] fis8 fis'16 e fis8_[ fis,16 e] fis8 fis'16 e
  | fis8 e16 dis e8[ b] a8 fis4( gis16 a)
    \setBeatStructureQuarter
  | b16^[ cis b a] b a b gis a b a gis a fis e dis
  | e8 e4 a8 fis[ e e'dis]
  | b8 e,16 fis gis8 b  e,[ gis b,e]
  %10
  | r8 gis16 a b8 e gis,[ b e, gis]
  | r8 e'16 d e8 cis a[ cis e,a]
  | cis8 e16 d e8 cis a[ cis e, a]
  | fis8 gis!16 a b8 gis e fis16 gis a8 fis
  | d8[ fis gis b]~ b e, a4~
  %15
  | a8 a16 gis a8 a~ a a16 gis a8 a ~
  | a8 a16 gis a8 a ~ a[ e cis b]
  | cis8 cis16-\scrPiano-\hideP d e8 e ~ e a16( b cis8) gis
  | a8 r8 r4 r8 gis16 a b8 b ~
  | b8 e16( fis gis8) dis e r8 r4
  %20
  | r8 cis16 b a8_[ b] cis[ e a,b]
  | e,8 r8 r4 r2
  | R1
  | r8 e16-\scrForte-\hideF fis gis8 b e,[ gis b,e]
  | r8 b'[ e gis] b,[ e gis,b]
  %25
  | e8 a,16-\scrPiano-\hideP b cis8 r r fis,16 gis a8 r
  | R1*4
  %30
  | R1*3
  | r8 b16-\scrForte a b8 gis e[ gis b,e]
  | e8 b'16 a b8 gis e[ gis b, e]
  %35
  | e8 cis'16 b cis8 dis16 e fis8 r r4
  | r8 b,16 a b8 cis16 dis e8 r8 r4
  | r8 fis,16 e fis8 fis'16 e fis8_[ fis,16 e] fis8 fis'16 e
  | fis8 e16 dis e8 b a fis4( gis16 a)
  | b16^[ cis b a] b a b gis a b a gis a fis e dis
  %40
  | e8 e4 a8 fis[ e e'dis]
  | b8 e,16-\scrPiano-\hideP fis gis8 r r gis16 a \once \stemUp b8 r
  | r2 r8 a16 b cis8 e
  | a,8[ cis e,a] cis,a'16 b cis8 r
  | r8 e16 d cis8 r r a[ d] r
  %45
  | r2 r8 ais16 b cis8 r
  | r2 r8 fis,[ b] r
  | r4 r8 g16 fis g8 r r cis16 b
  | cis8 r r4 r2
  | r8 b16-\scrForte-\hideF cis d8 fis b,_[ d fis,b]
  %50
  | dis,8[ fis b dis] fis,[ b dis,fis]
  | \stemUp b,b'16-\scrPiano-\hideP a b8 r r b16 a b8 b
  | a8 r8 r4 r2
  | R1*2
  %55
  | R1
  | R1
  | r8 fis16-\scrForte-\hideF gis a8 cis fis,[ a cis,fis]
  | \stemNeutral r8 ais16_[-\scrForte-\hideF b] cis8 fis ais,[ cis fis,ais]
  | b8 fis'16-\scrPiano-\hideP e fis8 r r fis16 e fis8 fis
  %60
  | e8 r r4 r2
  | R1
  | r8 gis,[( fis gis]) r gis[( fis gis])
  | r8 gis[( fis gis]) r2
  | R1
  %65
  | r8 cis16-\scrForte-\hideF dis e8 gis cis,[ e gis,cis]
  | r8 bis16 cis dis8 fis bis,[ dis gis,bis]
  | cis2-\scrPiano-\hideP ~ cis16 b! cis d! cis e d cis
  | b2~ b16 a b cis b d cis b
  | a8 r r4 r2
  %70
  | R1*3
  | r8 fis8[-\scrPiano-\hideP b] r r b16 cis d8 r
  | r8 e16 fis gis8 r r e,[ a] r
  %75
  | r8 a16 b cis8 r r dis16 e fis8 r
    \setBeatStructureHalf
  | r8 fis b,dis fis,b b, r
  | R1*2
  | r8 a'16-\scrForte-\hideF b cis8[ e] a, cis e,a
  %80
  | r8 gis16 a b8[ d] gis, b e, gis
    \setBeatStructureQuarter
  | a8 a,16-\scrPiano-\hideP b cis8 r r cis16 d e8 r
  | r2 r8 d16 e fis8 a
  | d,8[ gis b, e] e e16 fis gis8 r
  | r8 d'16 cis b8 r r gis[ cis] r
  %85
  | r2 r8 fis,[ b] r
  | r2 r8 e,8[ a] r
  | r4 r8 b16 a \stemUp b8 r r b16 a
  | b8 r r4 r2
  | r8 a16-\scrSpiccatoLeft-\scrForteParCtr-\hideF b \stemNeutral cis8 e a,[cis e, a]
  %90
  | r8 gis16 a b8 d b[ d gis,b]
  | a8 cis16 b cis8 dis16 e fis8 r r4
  | r8 b,16 a b8 cis16 dis e8 r r4
  | r8 fis,16 e fis8 fis'16 e fis8_[ fis,16 e] fis8 fis'16 e
  | fis8 e16 dis e8 b a fis4( gis16 a)
  %95
  | b16^[ cis b a] b a b gis a b a gis a fis e dis
  | e8 e4 a8 fis[ e e'dis]
  | b8 e,16 fis gis8 b e,[ gis b,e]
  | r8 gis16 a b8 e gis,[ b e,gis]
  | r8 e'16 d e8 cis a[ cis e,a]
  %100
  | cis8 e16 d e8 cis a[ cis e, a]
  | fis8 gis!16 a b8 gis e8 fis16 gis a8 fis
  | d8[ fis gis b] ~ b e,a4~
  | a8 a16 gis a8 a~ a a16 gis a8 a~
  | a8 a16 gis a8 a~ a[ e cis b]
  %105
  | \tag #'printed { cis4 r } \tag #'played { cis4. r8 } r2
  | \bar "|."
}

viola = \relative c' {
  | r8 e8-\scrSpiccato a cis e, a cis, e
  | r8 e_[ b gis] gis' b d e,
  | a8 e cis a a' r8 r4
  | r8 dis,8 b gis gis' r8 r4
  %5
  | r8 cis,16 b cis8^[ cis] b fis'e e
  | dis8 b b e e fis16 e fis8[ b,] ~
  | \stemDown b8 gis b e cis fis a, b
  | b8 e a,cis dis e cis fis
  | gis b, e gis b, e gis,b
  %10
  | r8 b e gis b e gis, b
  | r8 cis16 b cis8[ a] e a cis, e
  | a8 cis, a cis e a cis,e
  | \stemNeutral a,8 b16 cis d8^[ b] gis a16 b cis8[ a]
  | fis8 b4 e8 e cis a e'
  %15
  | fis4 r8 fis e4 r8 e
  | d4 r8 d cis e e e
  | e8_[ a,16-\scrPiano-\hideP b] cis8 d cis e a e
  | e8 r8 r4 r8 e16 fis gis8[ a]
  | gis8 b e b b r8 r4
  %20
  | r8 a16 b cis8[ b] a a,16 b cis8[ b]
  | a8 r r4 r2
  | R1
  | r8 b-\scrForte-\hideF e gis b,_[ e gis,b]
  | r8 gis'16 a b8[ e] gis,b e,gis
  %25
  | a8 e-\scrPiano-\hideP a r r cis,16[ d] e8 r
  | R1*4
  %30
  | R1*3
  | r8 gis16-\scrForte-\hideF fis gis8[ e] \stemDown b e gis,b
  | e8 gis,e gis b e gis,b
  %35
  | a8 e'cis a a' r r4
  | r8 dis,8^[ b gis] gis' r8 r4
  | r8 cis,16^[ b] cis8^[ cis] b fis' e e
  | dis8 b b e e fis16 e fis8[ b,] ~
  | b8 gis b e cis fis a, b
  %40
  | b8 e a,cis dis e cis fis
  | gis8 b,-\scrPiano-\hideP e r r e^[ gis,] r
  | r2 r8 e'-\scrPiano-\hideP a cis
  | e,8 a e cis e e a r
  | r8 a e r r fis16 g a8 r
  %45
  | r2 r8 e16[ fis] g8 r
  | r2 r8 d16[ e] fis8 r
  | \stemNeutral r2 r8 g,16[ fis] g8 g'
  | fis8 r r4 r2
  | r8 fis-\scrForte-\hideF b d fis,b d,fis
  %50
  | b,8 dis16 e fis8[ b] dis,fis b,dis
  | e8 e16-\scrPiano-\hideP fis gis8[ a] gis fis e gis
  | e8 r r4 r2
  | R1*2
  %55
  | R1
  | R1
  | r8 cis-\scrForte-\hideF fis a cis,fis a,cis
  | r8 cis-\scrForte-\hideF fis ais cis,fis ais,cis
  | fis8 b,16-\scrPiano-\hideP cis dis8 e dis b b'b
  %60
  | b8 r r4 r2
  | R1*4
  %65
  | r8 gis-\scrForte-\hideF cis e gis,cis e,gis
  | r8 fis16 e dis8[ bis] gis' bis, dis gis
  | \posTextScriptB gis2^\scrPiano-\hideP ais
  | fis2 gis
  | e8 r r4 r2
  %70
  | R1*3
  | r8 d16[-\scrPiano-\hideP e] fis8 r r d16[ cis] b8 r
    \setBeatStructureQuarter
  | r8 b'16 cis d8 r r cis,16 d e8 r
  %75
  | r8 cis16 b a8 r r fis'[ b,] r
    \setBeatStructureHalf
  | r8 dis'fis,b b,r r4
  | R1*2
  | r8 e8-\scrForte-\hideF a cis e, a cis, e
  %80
  | r8 e_[ b gis] gis' b d e,
  | a,8 e-\scrPiano-\hideP a r r a'cis, r
  | r2 r8 a[ d fis]
    \setBeatStructureQuarter
  | gis!8 d d cis16 d e8_[ b e,] r
  | r8 b''16 a gis8 r r e16 fis gis8 r
  %85
  | r2 r8 d16 e fis8 r
  | r2 r8 cis16 d e8 r
  | r2 r8 b16 a b8 fis
  | gis8 r r4 r2
    \setBeatStructureHalf
  | r8 e'8-\scrSpiccatoLeft-\hideF a cis e, a cis, e
  %90
  | r8 e_[ b gis] gis'b d e,
  | a8 e cis a a' r r4
  | r8 dis, b gis gis' r r4
  | r8 cis,16 b cis8^[ cis] b fis'e e
  | dis8 b b e e fis16 e fis8[ b,] ~
  %95
  | \stemDown b8 gis b e cis fis a,b
  | b e a,cis dis e cis fis
  | gis b,e gis b, e gis, b
  | r8 b e gis b e gis,b
  | r8 cis16 b cis8[ a] e a cis,e
  %100
  | a8 cis,a cis e a cis,e
    \setBeatStructureQuarter \stemUp
  | a,8 b16 cis d8 b gis a16 b cis8 a
    \setBeatStructureHalf
  | fis8 b4 \stemDown e8 e cis a e'
  | fis4 r8 fis e4 r8 e
  | d4 r8 d cis e e e
  %105
  | \tag #'printed { e4 r } \tag #'played { e4. r8 } r2
  | \bar "|."
}

continuo = \relative c {
  | a8-\scrSpiccato a' r4 r2
  | gis,8_[ gis'] r4 r2
  | r8 a16[ gis] a8 fis dis fis dis b
  | gis8_[ gis'16 fis] gis8 e cis e cis a
  %5
  | fis8 fis'e e, dis dis'cis cis'
  | b b, e gis a, a'16 gis a8[ fis]
  | \stemDown gis, gis'16 fis gis8[ e] fis,8 fis'16 e fis8[ b,]
  | \stemNeutral e,8 fis16 gis a4~ a8 gis a b
  | e,8 e' r4 r2
  %10
  | d,8 d' r4 r2
  | cis8 cis' r4 r2
  | a,8 a' r4 r2
  | d,8 d' gis, b cis,cis'fis,a
  | b,8 b'e,gis a,a'fis cis
  %15
  | dis8 dis,dis dis' e e,e e'
  | fis8 fis,fis fis'cis16 b cis d e8[ e,]
  | a4 r4 r2
  | r8 a16^\scrSolo-\scrPiano-\hideP b cis8[ a] gis e r4
  | r2 r8 e'16^\scrSolo fis gis8[ e]
  %20
  | a8 a, r4 r2
  | R1
  | R1
  | e'8^\scrTuttiCtr-\scrForte e' r4 r2
  | d,8 d' r4 r2
  %25
  | cis,8 cis' r4 r2
  | R1*4
  %30
  | R1*3
  | e,,8^\scrTuttiCtr-\scrForte-\hideF e' r4 r2
  | gis,8 gis' r4 r2
  %35
  | r8 a16 gis a8[ fis] dis fis dis b
  | gis8_[ gis'16 fis] gis8 e cis e cis a
  | fis8 fis' e e, dis dis'cis cis'
  | b8 b, e gis a,[ a'16 gis] a8 fis
  | gis,8_[ gis'16 fis] gis8 cis, fis, fis'16 e fis8^[ b,]
  %40
  | e,8 fis16 gis a4( a8) gis a b
  | e,8 e' r4 r2
  | r2 a,8-\scrPiano^\scrSolo-\hideP a' r4
  | R1
  | r2 d,8 d' r4
  %45
  | r2 cis,8 cis' r4
  | r2 b,8 b' r4
  | R1
  | fis,8 fis' r4 r2
  | b,8-\scrForte-\hideF^\scrTuttiCtr b' r4 r2
  %50
  | a,8 a' r4 r2
  | gis,8^\scrSolo_[ gis'-\scrPiano-\hideP] r4 r2
  | a,8 a' r4 r2
  | gis,8 gis' r4 r2
  | fis,8 fis' r4 r2
  %55
  | R1
  | R1
  | fis,8-\scrForte-\hideF^\scrTuttiCtr fis' r4 r2
  | e,8^\scrForte-\hideF e' r4 r2
  | \posTextScriptA dis8^\scrSoloPiano-\hideP dis' r4 b,8 b' r4
  %60
  | e,8 e' r4 a,,8 a' r4
  | dis,8 dis' r4 gis,,8_[ gis'] r4
  | cis,8 r r4 dis8 r r4
  | e8 r r4 r2
  | R1
  %65
  | cis8^\scrTuttiCtr-\scrForte-\hideF cis' r4 r2
  | gis,8_[ gis'] r4 r2
  | \posTextScriptC cis,,8^\scrSoloPiano-\hideP cis' r4 fis,8 fis' r4
  | b,8 b' r4 e,8 e' r4
  | a,,8 a' r4 r2
  %70
  | R1*3
  | b,8^\scrSolo-\scrPiano-\hideP b' r4 gis,8_[ gis'] r4
  | e,8 e' r4 a,8 a' r4
  %75
  | fis,8 fis' r4 dis,8 dis' r8 b
  | dis8 fis a fis dis b dis fis
  | b8 r r4 r2
  | R1
  | a,8^\scrTutti-\scrForte-\hideF a' r4 r2
  % 80
  | e8 e' r4 r2
  | a,,8^\scrSolo-\scrPiano-\hideP a' r4 r2
  | r2 d,8 d' r4
  | R1
  | r2 cis,8 cis' r4
  %85
  | r2 b,8 b' r4
  | r2 a,8 a' r4
  | R1*2
  | a,8-\scrFortePar^\scrTuttiSpiccato-\hideF a' r4 r2
  %90
  | gis,8_[ gis'] r4 r2
  | r8 a16 gis a8[ fis] dis fis dis b
  | gis8_[ gis'16 fis] gis8 e cis e cis a
  | fis8 fis'e e, dis dis'cis cis'
  | b8 b,e gis a,a'16 gis a8[ fis]
  %95
  | gis,8_[ gis'16 fis] gis8 e fis,_[ fis'16 e] fis8 b,
  | e,8 fis16 gis a4~ a8 gis a b
  | e,8 e' r4 r2
  | d,8 d' r4 r2
  | cis8 cis' r4 r2
  %100
  | a,8 a' r4 r2
  | d,8 d'gis,b cis,cis' fis,a
  | b,8 b' e,gis a,a'fis cis
  | dis8 dis,dis dis' e e,e e'
  | fis8 fis,fis fis' cis16 b cis d e8[ e,]
  | \tag #'printed { a4 r } \tag #'played { a4. r8 } r2
  | \bar "|."
}

figuredContinuo = \figuremode {
  \bassFigureStaffAlignmentDown
  \set figuredBassAlterationDirection = #RIGHT
  | s1
  | <6 5>4 s2.
  | s8 <5>8 <6>4 <7> <6>
  | <7>4 <6> <5> <6>
  %5
  | <5>4 <6 4 2> <6 5> <6>
  | <7 _+>4. <6> <6>4
  | <7>4 <6> <7> <6\\>
  | s4 \tuplet 3/2 { <7>8 <6> <5> } <4 2>8 <6> <6 5> \bigAccidental <_+>
  | s1
  %10
  | <4 2>1
  | <6>1
  | <7!>1
  | s8 <6> <7>4 <7>8 <6> <7>4
  | <7>4 <7> s4. <6>8
  %15
  | <6 5>2 <6 4>
  | <6>2 <6>4 <6 4>8 <5 3>
  | s1
  | s4 <6> <6>2
  | s2. <6 5>4
  %20
  | s1*4
  | <4 2>1
  %25
  | <6>1
  | s1*4
  %30
  | s1*4
  | <6 5>1
  %35
  | s4 <6> <7> <[6]>
  | <7>4 <6> <7> <[6]>
  | <5>4 <6 4 2> <6 5> <6>
  | <7 _+>2 <7>4 <6>
  | <7>4 <6> <7> <6\\>
  %40
  | s4 \tuplet 3/2 { <7>8 <6> <5> } <4 2> <6> <6 5> \bigAccidental <_+>
  | s1*4
  %45
  | s2 <7 5!>8 <[6\\]> s4
  | s2 <5 3>
  | s1
  | <7 _+>1
  | s1
  %50
  | <6 4 2>1
  | <6 5->1
  | s1
  | <7>1
  | <5 3>1
  %55
  | s1*3
  | <6 4 2>1
  | <6 5>2 <7 _+>
  %60
  | s2 <7\\>
  | <7>2 <7 _+>
  | s2 <6\\>
  | <6>1
  | s1
  %65
  | s1
  | <7 _+>1
  | <5 3>2 <7 _+>
  | s2 <7>
  | s1
  %70
  | s1*3
  | s2 <6 5>
  | <7>1
  % 75
  | <5>2 <7 5>4. <7 _+>8
  | <6 5>2 <6 5>
  | <7 _+>1
  | s1*2
  %80
  | <7>1
  | s1*3
  | s2 <5>
  %85
  | s2 <5>
  | s2 <5>
  | s1*3
  %90
  | <6 5>1
  | s8 <5> <6>4 <7> <6>
  | <7>4 <6> <5> <6>
  | <5>4 <6 4 2> <6 5> <6>
  | <7 _+>4. <6> <6>4
  %95
  | <7>4 <6> <7> <6\\>
  | s4 \tuplet 3/2 { <7>8 <6> <5> } <4 2> <6> <6 5> \bigAccidental <_+>
  | s1
  | <4 2>1
  | <6>1
  %100
  | <7!>1
  | s8 <6> <7> s <7> <6> <7>4
  | <7>4 <7>2 s8 <6>
  | <6 5>2 <6 4>
  | <6>2 <6>4 <6 4>8 <5 3>
  %105
  | s1 |
}

upperKeyb =   \relative c'' {
  \setBeatStructureQuarter
  | r16 e a gis a e cis a e'_[ cis a e] cis'a e cis
  | r16 d' b'a b gis d b gis'd b gis d'_[ b gis e]
  | cis'8 a fis'4^\scrCourtMordent ~ fis8 gis16( a b a gis a)
  | b8 b, e4^\scrCourtMordent ~ e8 fis16( gis a gis fis gis)
  % 5
  | a8 a,16 gis a8 a'16 gis a8 a,16 gis a8 a'16 gis
  | a8 gis16^\scrCourtPrall fis gis8 e cis dis4( e16 fis)
  | b,8 dis~ dis16 e( dis e) a,8 dis!4( e16 fis)
  | gis,8 a16 b cis8 fis b,b' a16 gis fis gis
  | e16 b e dis e_[ b gis e] b' gis e b gis'e b gis
  %10
  | r16 b'gis'fis gis e b gis e'b gis e b'gis e b
  | r16 e'a gis a e cis a e' cis a e cis' a e cis
  | r16 e' g fis g e cis a e'^[ cis a fis] cis'a e cis
  | fis'8 b,4( cis16^\scrCourtMordent d) e8 a,4( b16^\scrCourtMordent cis)
  | d16 cis d e d fis e d cis b cis d cis e d cis
  %15
  | b16 a b cis b cis a b cis b cis d cis d b cis
  | d16 cis d e d cis b a e'8_[ a,e gis]^\scrCourtTurn
  | a,4 ~ a16 cis b cis \appoggiatura b8 a4 ~ a16 cis b cis
  | a16 b cis d e a gis fis \appoggiatura fis8 e4 ~ e16 gis fis gis
  | \appoggiatura fis8 e4 ~ e16 gis fis gis e fis gis a b d cis b
  %20
  | \appoggiatura b8 cis4 ~ cis16 e d e \appoggiatura d8 cis4 ~ cis16 e d e
  | cis16 d e fis g fis e g fis e d fis e d cis b
  | e16 d cis e d cis b a d cis b d cis b a cis
  | b16 gis e'dis e_[ b gis e] b'gis e b gis'e b gis
  | r16 e''b'a b gis e b gis'e b gis e'_[ b gis e]
  %25
  | a4^\scrCourtMordent ~ a16^[ cis b cis] \appoggiatura b8 a4~ a16^[ b cis d]
  | e16 a gis fis e8 d^\scrCourtTurn cis16 b cis d cis e d cis
  | \stemDown b16 a b cis b d cis b a gis a b a cis b a
  | \stemUp gis16 fis gis^\scrCourtMordent a gis e dis e a gis a b a e dis! e
  | b'16 a b cis b e,dis e cis'd! cis b a gis fis e
  %30
  | dis16 cis b cis dis e fis gis a gis a b a cis b a
  | \stemNeutral gis16 fis e fis gis a b cis d cis d e d fis e d
  | cis16 e dis fis e4^\scrCourtMordent ~ e16 dis!( e32 dis cis16) dis8.^\scrCourtPrallPrall e16
  | e16 b e dis e_[ b gis e] b'gis e b gis'e b gis
  | r16 d''! b'a b gis d b gis'd b gis d'_[ b gis e]
  %35
  | cis'8^\scrCourtMordent a fis'4^\scrCourtMordent ~ fis8 gis16 a b( a gis a)
  | b8 b, e4^\scrCourtMordent ~ e8 fis16 gis a( gis fis gis)
  | a8 a,16 gis a8 a'16 gis a8 a,16 gis a8 a'16 gis
  | a8 gis16^\scrCourtPrall fis gis8 e cis dis4( e16 fis)
  | b,8 dis~ dis16 e dis e a,8 dis!4( e16 fis)
  %40
  | gis,8 a16 b cis8 fis b, b'a16( gis fis gis)
  | e4~ e16 gis fis gis \appoggiatura fis8 e4~ e16 gis fis gis
  | e16 fis gis a b d cis b cis e,a gis a gis32( fis e d cis b)
  | \stemUp a32 gis a8.~ a16 cis b cis \appoggiatura b8 a4~ a16 cis b cis
  | \stemNeutral a16 b cis d e g fis e fis8-! d-! r16 fis e fis
  %45
  | b,16^[ cis b^\scrCourtPrallStem ais] b g( fis g) e' d \appoggiatura d8 e~ e16 d cis^\scrCourtPrall b
  | ais16 b ais gis! ais fis eis fis d'cis d8 r16 b ais! b
  | \lessBeamSlant e!8 e,16 d e8 e'16 d \lessBeamSlant e8 e,16 d e8 e'16 d
  | e8[ ais, \tag #'printed { b\turn } \tag #'played { cis32 b ais b } cis8] fis,fis' e16 d cis d
  | \stemDown b16 fis'b ais b fis d b fis' d b fis d'b fis d
  %50
  | r16 fis'b ais b fis dis b fis'dis b fis dis'b fis dis
  | \tag #'printed { d'!4\mordent~ } \tag #'played { d32 cis d8.~ }   d16 e d cis \tag #'printed { d4\mordent~ } \tag #'played { d32 cis d8.~ } d16 fis e d
  | cis16 a( gis a) cis d cis b \stemUp cis fis,eis fis d'cis b a
  | b16 gis fis gis b cis b a b eis,dis eis cis'b a gis
  | a8 eis4( fis8) b eis,4( fis8)
  %55
  | cis'16 eis, fis8~ fis16 ais b cis \stemNeutral d b ais b g'fis eis fis
  | eis16 cis dis eis fis gis! a gis b a gis fis a8 \tag #'printed { gis8\trill } \tag #'played { a32 gis a gis }
  | fis16 cis fis eis fis cis a fis cis'a fis cis a'fis cis a
  | r16 cis' fis eis fis cis ais fis cis'ais fis cis ais'fis cis ais
  | \doKneedBeam \alignBeamOne b16 a''!8.~ a16 b a gis a4~ a16 fis dis b
  %60
  | gis'16 a gis fis gis e( dis e) gis cis,( bis cis) a' gis fis e
  | fis gis fis e fis dis( cis dis) fis bis,dis fis gis fis e dis
  | e8-![ cis( bis cis)] fis-![ cis( bis cis)]
  | gis'8-![ cis,( bis cis)] a'16( gis fis e dis e fis cis)
  | bis16 fis'cis fis dis fis e dis gis8[ cis, gis \tag #'printed { bis!]\turn } \tag #'played { cis32 bis a bis }
  %65
  | cis16 gis cis bis cis gis e cis gis'e cis gis e' cis gis \staffDown e
  | \staffUp r16 dis'' fis e fis dis bis gis dis'bis gis dis bis' gis dis bis
  | << { r8 e'16 fis gis8[ e] cis[ e ais,! cis]          }
    \\ { gis8\rest cis16 dis e8[ cis] ais[ cis fis, ais] } >>
  | << { d8\rest d!16 e fis8[ d] b[ d gis,b]             }
    \\ { e,8\rest b'16[ cis] d8[ b] gis[ b e, gis]       } >>
  | << { cis16[ d cis b] } \\ { a8 g\rest } >> cis16 a( gis a) d e d cis d_[ a( gis a])
  %70
  | e'16 fis e d e a,( gis a) fis'g fis e d cis b a
  | gis!16 a gis fis gis e( dis e) a b a gis a e( dis e)
  | \stemUp b'16 cis b a b e,( dis e) cis'd! cis b a gis fis e
  | \appoggiatura e8 d4 ~ d16 e d cis d4^\scrCourtMordent ~ d16 e d cis
  | d16 gis b a gis fis e d \appoggiatura d8 cis4~ cis16 d cis b
  %75
  | \appoggiatura b8 cis4~ cis16 d cis b cis fis a gis fis e dis cis
  | \appoggiatura cis8 b4~ b16 cis b a \appoggiatura a8 b4~ b16 cis b a
  | b16 cis dis e fis a gis fis gis b e, fis gis a b cis
  | \stemNeutral d!16 fis b, cis d e fis gis a8[ b e,gis]^\scrCourtTurn
  | a16 e a gis a e cis a e'^[ cis a e] cis'a e cis
  %80
  | r16 d' b'a b gis d b gis'd b gis d'_[ b gis e] \stemUp
  | cis'32 b a8.~ a16 cis b cis \appoggiatura b8 a16 e a8~ a16 cis b cis
  | \stemNeutral a16 b cis d e g fis e \alignBeamTwo fis64( e d16.) a8 d, r
  | gis4^\scrCourtMordent ~ gis16 b a b \appoggiatura a8 gis4 ~ gis16 b a b
  | gis16 a b cis d fis e d e32( d cis8.) r8 e
  %85
  | a,16 b a gis a fis( eis fis) \appoggiatura e'8 d16 cis d8~ d16 cis b a
  | gis16 a gis fis gis e(dis e) \appoggiatura d'8 cis16 b cis8 r16 a gis a
  | d8 d,16 cis d8 d'16 cis d8 d,16 cis d8 d'16 cis
  | d16 gis a b a gis fis e d cis b a b8 \tag #'printed { gis\turn } \tag #'played { a32 gis fis gis }
  | a16 e' a gis a e cis a e' cis a e cis' a e cis
  %90
  | \stemDown r16 d'b'a b gis d b gis'd b gis d'b gis e
  | cis'8 a fis'4^\scrCourtMordent ~ fis8 gis16( a b a gis a)
  | b8 b, e4^\scrCourtMordent ~ e8 fis16( gis a gis fis gis)
  | a8 a,16 gis a8 a'16 gis a8 a,16 gis a8 a'16 gis
  | a8 gis16^\scrCourtPrall fis gis8 e cis dis4( e16 fis)
  %95
  | b,8 dis~ dis16 e( dis e) \stemNeutral a,8 dis!4( e16 fis)
  | gis,8 a16 b cis8 fis b,b'a16 gis fis gis
  | e16 b e dis e_[ b gis e] b'gis e b gis'e b gis
  | r16 b'gis'fis gis e b gis e'b gis e b'gis e b
  | r16 e'a gis a e cis a e' cis a e cis'a e cis
  %100
  | r16 e'g fis g e cis a e' cis a e cis'a e cis
  | fis'8 b,4( cis16^\scrCourtMordent d) e8 a,4( b16^\scrCourtMordent cis)
  | d16 cis d e d fis e d cis b cis d cis e d cis
  | b16 a b cis b cis a b cis b cis d cis d b cis
  | d16 cis d e d cis b a e'8 a, << { e gis^\scrCourtTurn } \\ { e d } >>
  %105
  | \tag #'printed { << { a'4 } \\ { cis, } \\ { e } >> r } \tag #'played { <a'e cis>4. r8 } r2
  | \bar "|."
}

lowerKeyb = \relative c {
  | a8 a' r4 r2
  | gis,8_[ gis'] r4 r2
  | r8 a16[ gis] a8 fis dis fis dis b
  | gis8_[ gis'16 fis] gis8 e cis e cis a
  % 5
  | fis8 fis' e e, dis dis' cis cis'
  | b8 b, e gis a,_[ a'16 gis] a8 fis
  | gis,8_[ gis'16 fis] gis8 e fis,_[ fis'16 e] fis8 b,
  | e,8 fis16 gis a4~ a8 gis a b
  | e,8 e' r4 r2
  %10
  | d,8 d' r4 r2
  | cis8 cis' r4 r2
  | a,8 a' r4 r2
  | d,8 d' gis, b cis,cis'fis,a
  | b,8 b'e,gis a,a'fis cis
  %15
  | dis8 dis,dis dis'e e,e e'
  | fis8 fis,fis fis' cis16 b cis d e8[ e,]
  | a8 a a, r8 r8 a' a, r8
  | r8 a'16 b cis8[ a] gis8 e'e, r8
  | r8 e'e, r8 r8 e'16 fis gis8[ e]
  %20
  | a8 a'a, r r a'a, r
  | r8 a cis,a'd,fis b d,
  | cis8 e a cis, b gis'a a,
  | e'8 e' r4 r2
  | d,8 d' r4 r2
  %25
  | r8 cis,16 b a8[ gis] fis fis'e d
  | cis8 d e e, a a'16 gis a8[ fis]
  | \stemDown gis,8 gis'16 fis gis8[ e] fis,fis'16 e fis8[ b,]
  | \stemNeutral e,8 e'16 dis e8[ e,] fis8 fis'16 e fis8[ fis,]
  | gis8 gis'16 fis gis8[ gis,] a b cis a
  %30
  | b8 b, r16 b'' a gis fis8 dis b dis
  | e8 e, r16 e'' d! cis b8 gis e gis
  | a8[ fis] gis16 b a cis b8 ais b b,
  | e,8 e' r4 r2
  | gis,8 gis' r4 r2
  %35
  | r8 a16[ gis] a8 fis dis fis dis b
  | gis8_[ gis'16 fis] gis8 e cis e cis a
  | fis8 fis'e e, dis dis'cis cis'
  | b8 b,e gis a,a'16 gis a8[ fis]
  | gis,8_[ gis'16 fis] gis8 cis, fis,_[ fis'16 e] fis8 b,
  %40
  | e,8 fis16 gis a4~ a8 gis a b
  | \doKneedBeam \flatBeam e,8 e''-! gis,-! b-! e,-! gis-! b,-! e-!
  | gis,8 b e,e' a,a' r4
  | r8 a-! cis,-! e-! a,cis e,a
  | cis,8 e a,a' \doKneedBeam \lessBeamSlant d,fis'16 e d8[ d']
  %45
  | g,8 fis e d cis e16 d cis8[ e]
  | fis8 e d cis gis b16 a b8[ d]
  | cis8 cis' b b, ais ais'b cis
    \setBeatStructureQuarter
  | fis,16 g fis e d cis b ais b cis d e fis8 fis,
  | b8 b' r4 r2
  %50
  | a,8 a' r4 r2
  | gis,8 gis'16 a gis8 fis e[ fis gis e]
  | a,8 a' r a, d,d'16 cis b8 d
  | gis,gis' r8 gis,cis,cis'16 b a8 cis
  | fis,16 a( cis b a gis a fis) gis b( d cis b a b gis)
  %55
  | ais16 cis e g fis e d cis b8 fis' b16 ais b8 ~
  | b8 a!16 gis a8 fis d'[ b cis cis,]
  | fis,8 fis' r4 r2
  | e,8 e' r4 r2
  | dis,8 dis'16 e dis8 cis b8 b'16 cis dis8 b
  %60
  | e,8 e' r e, a, a'16 gis fis8 a
  | dis,8 dis' r dis, gis,_[ fis'16 fis] e8 gis
  | cis,16-! gis'( fis gis a gis fis gis) dis-! gis( fis gis a gis fis gis)
  | e16-! gis( fis gis a gis fis e) fis8[ gis a dis,]
  | << { \temporary\smallNotehead \noteLeft gis16[ bis \hideAccidental \noteLeft ais cis] \undo\smallNotehead } \\ 
       { gis8[ ais] } >> bis!16 dis gis,fis e gis fis a \stemDown gis8 gis,
  %65
  | cis8 cis' r4 r2
  | gis,8 gis' r4 r r8 gis
  | cis16 gis e gis cis,dis e cis fis8 fis, r fis'
  | b16 fis d! fis b,cis d b e8 e, r e'
  | a,8 a'16 gis a8 a, b b'16 a b8 b,
  %70
  | cis8 cis'16 b cis8 cis, d8[ e fis d]
  | e8^[ e,] r16 e' gis e fis8^[ fis,] r16 fis^[ a fis]
  | \stemNeutral gis8 e' r16 e fis gis a8 a, r16 fis gis a
  | b16 cis d cis b8 a gis16 a b a gis8 fis
  | e8 e' r16 e,fis gis a b cis b a8 gis
  % 75
  | fis16 gis a gis fis8 e \doKneedBeam dis fis'16 e dis e fis e
  | \stemDown dis16 e fis gis a8 fis dis!16 cis b cis dis8 fis
  | a16 gis fis e dis b cis dis e fis gis a b cis b a
  | gis16 a gis fis \stemNeutral e d cis b cis8[ d e e,]
    \setBeatStructureHalf 
  | a8^[ a'] r4 r2
  %80
  | e8 e' r4 r2
  | r8 a,-! cis,-! e-! a,-! cis-! e,-! a-!
  | \stemUp cis,8 e a,a' d,d' r16 e^[ d cis]
    \setBeatStructureQuarter
  | b16 a gis a b8 cis d16 e d cis d8-! fis-!
  | b,8-![ d-! gis,-! b-!] \setBeatStructureQuarter cis16 d e d cis b a gis
  %85
  | fis8 fis'16 e d8 cis \stemNeutral b b'b, cis16 d
  | e,8 e'16 d cis8 b a a' a, b16 cis
    \setBeatStructureHalf
  | b8 b'a a, gis_[ gis'] r16 gis a b
  | e,8 e,fis gis a fis d e
  | a8 a' r4 r2
  %90
  | gis,8_[ gis'] r4 r2
  | r8 a16 gis a8[ fis] dis fis dis b
  | gis8_[ gis'16 fis] gis8 e cis e cis a
  | fis8 fis' e e, dis dis' cis cis'
  | b8 b,e gis a,a'16 gis a8 [fis]
  %95
  | \stemDown gis,8 gis'16 fis gis8[ e] fis,fis'16 e fis8[ b,] \stemNeutral
  | e,8 fis16 gis a4~ a8 gis a b
  | e,8 e' r4 r2
  | d,8 d' r4 r2
  | cis8 cis' r4 r2
  %100
  | a,8 a' r4 r2
  | d,8 d'gis,b cis,cis'fis,a
  | b,8 b' e,gis a,a'fis cis
  | dis8 dis,dis dis' e e,e e'
  | fis fis,fis fis'cis16 b cis d e8[ e,]
  %105
  | \tag #'printed { <a a,>4 r } \tag #'played { <a a,>4. r8 } r2
  | \bar "|."
}

%-------Typeset music
\score {
  \keepWithTag #'printed
  \new StaffGroup
    <<
        \new GrandStaff = "GrandStaff_violins"
        <<
          \new Staff = "Staff_violinI"  { \set Staff.instrumentName = #"Violin I"
                                          \clef treble \global \violinI }
          \new Staff = "Staff_violinII" { \set Staff.instrumentName = #"Violin II"
                                          \clef treble \global \violinII }
        >>
        \new Staff = "Staff_viola" { \set Staff.instrumentName = #"Viola"
                                     \clef alto \global \viola }
        \new Staff = "Staff_continuo"
                                    { \set Staff.instrumentName = #"Continuo"
                                     \clef bass \global \continuo }
        \new FiguredBass {
                  %arbitrary value to render extender lines that start without a figure
                  \set FiguredBass.implicitBassFigures = #'(11)
                  \figuredContinuo }
        \new PianoStaff = "StaffGroup_keyb"
        <<
          \set PianoStaff.instrumentName = #"Cembalo"
          \new Staff = "upper" { \clef treble \global \upperKeyb }
          \new Staff = "lower" { \clef bass \global \lowerKeyb }
        >>
    >>
    \layout { 
        \context { \FiguredBass    
            \override BassFigure #'font-size = # -1 }
        #(layout-set-staff-size 17)
    }
}

%-------Generate midi
\score {
     \keepWithTag #'played
      <<
      \new Staff = "Staff_violinI"  {
              \set Staff.midiInstrument = "violin"
              \set Staff.midiMinimumVolume = #0.30
              \set Staff.midiMaximumVolume = #0.70
              \clef treble \global \violinI
      }
      \new Staff = "Staff_violinII" {
              \set Staff.midiInstrument = "violin"
              \set Staff.midiMinimumVolume = #0.25
              \set Staff.midiMaximumVolume = #0.50
              \clef treble \global \violinII
      }
      \new Staff = "Staff_viola" {
              \set Staff.midiInstrument = "viola"
              \set Staff.midiMinimumVolume = #0.25
              \set Staff.midiMaximumVolume = #0.50
              \clef alto \global \viola
      }
      \new Staff = "Staff_continuo" { 
              \set Staff.midiInstrument = "cello"
              \clef bass \global \continuo
              \set Staff.midiMinimumVolume = #0.3
              \set Staff.midiMaximumVolume = #0.6
      }
      \new Staff = "upper" {
              \set Staff.midiInstrument = "acoustic grand"
              \set Staff.midiMinimumVolume = #0.5
              \set Staff.midiMaximumVolume = #0.95
              \clef treble \global \upperKeyb
      }
      \new Staff = "lower" {
              \set Staff.midiInstrument = "acoustic grand"
              \clef bass \global \lowerKeyb
              \set Staff.midiMinimumVolume = #0.5
              \set Staff.midiMaximumVolume = #0.95
      }
    >>
    \midi { \tempo 4 = 106 }
}