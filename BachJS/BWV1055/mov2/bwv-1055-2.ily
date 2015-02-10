\version "2.18.2"

% #(set-default-paper-size "letter")

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
    piece = \markup \bold \larger \concat { \hspace #12 "Larghetto." }
    date = "1738"
    style = "Baroque"
    source = "Bach-Gesellschaft Edition 1869 Band 17"

    maintainer = "Javier Ruiz-Alma"
    maintainerEmail = "Javier (at) ruiz-alma.com"
    license = "Creative Commons Attribution-ShareAlike 4.0"

    mutopiatitle = "Keyboard Concerto No. 4 in A Major"
    mutopiaopus = "BWV 1055.2"
    mutopiacomposer = "BachJS"
    mutopiainstrument = "Piano,Clavichord,Harpsichord,Violin,Viola,Cello"

    footer = "Mutopia-2001/01/01-2"
    copyright = \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9 "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans { " " \with-url #"http://creativecommons.org/licenses/by-sa/3.0/" "Creative Commons Attribution ShareAlike 3.0 (Unported) License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
    tagline = ##f
}

%--------Definitions
\include "../common/bwv-1055-definitions.ily"

global = {
  \key a \major
  \time 12/8
}

violinI = \relative c'' {
  | fis4-\hideF cis8 fis,4 a'8 gis4 cis,8 e,4 gis'8
  | fis4 b,8 d,4 fis'8 eis4 fis8 fis4 eis8
  | fis4_\scrPiano-\hideP cis8 fis,4 a'8 gis4 cis,8 eis,4 b''8
  | a4 cis,8 fis,4 cis'8 d4 fis,8 gis4 b8
  %5
  | cis4 eis,8 fis4 a8 b4 dis,8eis4 gis8
  | a4 fis8 cis'4. ~ cis4 fis,8 fis'4 b,8
  | cis4 gis8_\scrForte-\hideF cis4 eis8 fis4 cis8 dis,4 a''8
  | gis4 d!8 eis,4 b''8 b8. gis16 a8 d8. cis16 b8
  | a4 cis,8_\scrPiano-\hideP fis,4 a'8 gis4 cis,8 e,4 gis'8
  %10
  | fis4 b,8 d,4 fis'8 eis4 fis8 fis4 eis8
  | fis4 fis,8 b,4 a'8 b4 gis8 cis,4 b'8
  | cis4 fis8 fis,4 d'8 gis,4 b8 cis,4 gis''8
  | a4 cis,8 fis,4 a'8 bis,4 dis,8 gis,4 gis''8
  | cis,4.~ cis8. fis16 dis8 cis4.~ cis4 r8
  %15
  | a4 e'8 cis'4 a,8 gis4 e'8 b'4 gis,8
  | fis4 dis'8 a'4 fis,8 e4 b'8 gis'4 e,8
  | fis4 d'!8 b'4 fis,8 e4 d'8 b'4 d,8
  | e,4 cis'8 a'4.~ a4 g,8 fis4 a8
  | b,4 g'8 e'4 b,8 a4 a'8 e'4 cis,8
  %20
  | d4 b'8 fis'4 b,8 cis,4 ais'8 e'4 ais,8
  | b4 fis8 b,4 d'8 cis4 fis,8 a,4 cis'8
  | b4 e,8 g,4 b'8 ais4 b8 g'8. fis16 e8
  | d4_\scrForte-\hideF fis,8 b,4 d'8 dis4 b8 b,4 dis'8_\scrPiano-\hideP
  | e4 gis,8 b,4 e'8 eis4 gis,8  cis,4 eis'8
  %25
  | fis4_\scrForte-\hideF cis8 fis,4 a'8_\scrPiano-\hideP gis4 cis,8 e,4 gis'8
  | fis4 b,8 d,4 fis'8 eis4 r8 r r eis8
  | fis4 cis8 fis,4 ais8 b,4 r8 r r dis'
  | e4 b8 e,4 gis8 a,4 r8 r r a
  | d4 a'8 fis'4 d,8 cis4 a'8 e'4 cis,8
  %30
  | b4 gis'8 d'4 b,8 a4 e'8 cis'4 e,8
  | dis4 a'8 fis'4 a,8 b,4 a'8 fis'4 a,8
  | b,4 g'8 e'4.~ e4 d,8 cis4 e'8
  | fis,4 d'8 b'4 fis,8 e4 e'8 b'4 gis,8
  | a4 e'8 cis'4 fis,8 gis,4 d'8 b'4 eis,8
  %35
  | fis4 cis8 fis,4 a'8 gis4 cis,8 e,4 gis'8
  | fis4 b,8 fis4 fis'8 eis4 fis8 d8. cis16 b8
  | a4 cis8_\scrForte-\hideF fis,4 a'8 gis4 cis,8 e,4 gis'8
  | fis4 b,8 d,4 fis'8 eis4 fis8 fis4 eis8-\hideMP
  | \tag #'played { fis2.-\hideP r } \tag #'printed { fis4. r r2. } |
}

violinII = \relative c'' {
  | cis4.-\hideMF r8 r d8 d( cis) r r r cis
  | cis8( b) r r r b b8. cis16 a8 \appoggiatura a16 gis8. a16 b8
  | a4_\scrPiano-\hideP r8 r r fis'8 eis4 r8 r r eis
  | fis4 r8 r r cis8 b4 r8 r r gis8
  %5
  | a4 r8 r r a,8 d( b) r r r gis'
  | fis4 r8 r r gis8 fis4 a8 a4 b8
  | eis,4 r8 r r cis'8_\scrForte-\hideF cis4 r8 r r b8
  | b4 r8 r r gis'8 gis8. eis16 fis8 fis4 eis8
  | fis4 r8 r r a,8_\scrPiano-\hideP b4 r8 r r cis8
  %10
  | fis,4 r8 r r fis8 gis4 d'8 d4 gis,8
  | a4 r8 r r fis8 e4 r8 r r gis8
  | fis4 cis'8 b4 gis8 cis4 eis8 gis4 cis,8
  | cis4 r8 r r cis8 dis4 r8 r r gis,8
  | gis4 a8 a4 gis8 gis4.~ gis4 r8
  %15
  | a4 r8 r r a8 gis4 r8 r r gis8
  | fis4 r8 r r fis8 e4 r8 r r ais8
  | b4 r8 r r b8 b4 r8 r r b
  | a4 r8 r r fis e4 r8 r r b'
  | b4 r8 r r b e4 r8 r r e
  %20
  | d4 r8 r r d e4 r8 r r cis
  | d4 r8 r r d, e4 r8 r r fis
  | b,4 r8 r r b cis4 b8 e4 cis8
  | b4 r8 r r b'8_\scrForte-\hideF b4 r8 r r b_\scrPianoPar-\hideP
  | b4 r8 r r b gis4 r8 r r cis
  %25
  | cis4-\hideF r8 r r fis,_\scrPiano-\hideP eis4 r8 r r e
  | dis4 r8 r r d cis4 r8 r r cis'
  | cis4 r8 r r cis b4 r8 r r b
  | b4 r8 r r b a4 r8 r r cis
  | d4 r8 r r fis e4 r8 r r a
  %30
  | d,4 r8 r r gis a4 r8 r r c,8
  | c4 r8 r r e8 fis4 r8 r r dis8
  | e4 r8 r r b8 b4 r8 r r fis8
  | b4 r8 r r b b4 r8 r r b
  | a4 r8 r r fis' fis( eis) r r r cis
  %35
  | cis4 r8 r r a b4 r8 r r cis
  | fis,4 r8 r r b cis4 b8 fis4 cis'8
  | cis4 r8 r r d_\scrForte-\hideF d( cis) r r r cis
  | cis8( b) r r r b b8. cis16 a8 gis8. a16 b8-\hideMP
  | \tag #'played { a2.-\hideP r } \tag #'printed { a4. r r2. } |
}

viola = \relative c'' {
  | a4.-\hideMF r8 r fis8 gis4 r8 r r gis
  | a8( fis) r r r b8 gis4 fis8 d4 cis8
  | cis4_\scrPiano-\hideP r8 r r cis'8 cis4 r8 r r cis
  | cis4 r8 r r fis,8 fis4 r8 r r e8
  %5
  | e4 r8 r r fis fis( eis) r r r cis
  | cis4 r8 r r eis8 cis4 cis8 d4 d8
  | gis,4 r8 r r gis'8_\scrForte-\hideF fis4 r8 r r fis8
  | e4 r8 r r cis8 cis4 fis8 gis4 gis8
  | fis4 r8 r r fis8_\scrPiano-\hideP gis4 r8 r r gis8
  %10
  | a4 r8 r r b8 cis4 a8 gis4 cis8
  | cis4 r8 r r a8 gis4 r8 r r d8
  | cis4 a8 d4 d8 cis4 cis8 eis4 gis8
  | fis4 r8 r r fis8 dis4 r8 r r dis8
  | e4 fis8 fis4 fis8 e4.~ e4 r8
  %15
  | a4 r8 r r a8 gis4 r8 r r gis8
  | fis4 r8 r r fis8 e4 r8 r r e8
  | d4 r8 r r d8 e4 r8 r r e8
  | e4 r8 r r d cis4 r8 r r b
  | e4 r8 r r g a4 r8 r r a
  %20
  | a4 r8 r r b b4 r8 r r ais
  | fis4 r8 r r b,8 cis4 r8 r r cis
  | d4 r8 r r e fis4 e8 b4 fis'8
  | fis4 r8 r r fis_\scrForte-\hideF fis4 r8 r r fis_\scrPiano-\hideP
  | gis4 r8 r r b, cis4 r8 r r gis'
  %25
  | fis4-\hideF r8 r r fis_\scrPianoPar-\hideP eis4 r8 r r e
  | dis4 r8 r r d cis4_\scrSolo r8 r r gis'
  | fis4 r8 r r fis fis4 r8 r r fis
  | e4 r8 r r e e4 r8 r r e
  | d4 r8 r r a' a4 r8 r r a
  %30
  | b4 r8 r r b8 cis4 r8 r r a8
  | a4 r8 r r c8 b4 r8 r r b
  | b4 r8 r r fis e4 r8 r r fis
  | fis4 r8 r r fis e4 r8 r r e
  | e4 r8 r r fis gis4 r8 r r gis
  %35
  | fis4 r8 r r fis8 gis4 r8 r r gis
  | a4 r8 r r fis gis4 fis8 b4 gis8
  | a4 r8 r r fis_\scrForte-\hideF gis4 r8 r r gis
  | a8( fis) r r r b gis4 fis8 d4 cis8-\hideMP
  | \tag #'played { cis2.-\hideP r } \tag #'printed { cis4. r r2. } |
}

continuo = \relative c, {
  | fis4.^\scrTutti-\hideMF r8 r fis' eis4. r8 r e8
  | dis4. r8 r d8 cis4 d8 b4 cis8
  | fis,4. r4. r2.
  | R1*12/8
  %5
  \repeat unfold 2 { | R1*12/8 }
  | cis'4.^\scrForte^\scrTutti-\hideF r8 r cis8 d4. r8 r dis8
  | e4. r8 r eis8 fis4 d!8 b4 cis8
  | fis,4. r4. r2.
  %10
  \repeat unfold 4 { | R1*12/8 }
  | r4. r8 r gis'8^\scrPianoPar^\scrTutti-\hideP cis,4 gis8 cis,4 r8
  %15
  \repeat unfold 5 { | R1*12/8 }
  %20
  \repeat unfold 3 { | R1*12/8 }
  | b'4.^\scrTutti_\scrForte-\hideF r8 r b a4. r8 r a^\scrPianoPar-\hideP
  | gis4. r8 r gis cis4. r8 r cis
  %25
  | fis,4 r8 r4. r2.
  | r2. \scrNoPad cis''4_\scrPiano-\hideP gis8 cis,4 b'8
  | ais4 r8 r4. b4 fis8 b,4 a'8
  | gis4 r8 r4. a4 e8 a,4 g'8
  | fis4 r8 r r d a'4. r8 r fis
  %30
  | b4 r8 r r e,8 a4 r8 r r g8
  | fis4 r8 r r e dis4 r8 r r b
  | e4 r8 r r fis gis!4 r8 r r ais
  | b4 r8 r r a! gis4 r8 r r e
  | a4 r8 r r d8 gis,4 r8 r r cis
  %35
  | fis,4 r8 r r fis eis4. r8 r e
  | dis4. r8 r d cis4 d8 b4 cis8
  | fis,4.^\scrTutti_\scrFortePar-\hideF r8 r fis'8 eis4 r8 r r e
  | dis4 r8 r r d cis4 d8 b4 cis8-\hideMP
  | \tag #'played { fis2.-\hideP r } \tag #'printed { fis,4. r r2. } |
}

figuredContinuo = \figuremode {
  \bassFigureStaffAlignmentDown
  \set figuredBassAlterationDirection = #RIGHT
  | s2 s8 <6>8 <7->8 <6>2 <6>8
  | <7>8 <6>2 <6>8 <7 _+>4 <5 3>8 <6 5>4 \bigAccidental <_+>8
  \repeat unfold 2 { | s1. }
  %5
  \repeat unfold 2 { | s1. }
  | \bigAccidental <_+>2 s8 \bigAccidental <_+> <7>2 s8 <6 5>
  | \bigAccidental <_+>2 s8 <6 5> <9 4>4 <5 3>8 <6 5>4 \bigAccidental <_+>8
  | s1.
  %10
  \repeat unfold 4 { | s1. }
  | s2 s8 \bigAccidental <_+>8 s4 <6 4>2
  %15
  \repeat unfold 5 { | s1. }
  %20
  \repeat unfold 3 { | s1. }
  | s2 s8 s8 <4\+ 2>4 s2
  | \bassFigureExtendersOn <6 5->2 s8 <11 11>16 <11 11>  <7 _+>4 s4 s16 <11 11>16 <11 11>8
  %25
  | <5 3>1.
  | s2. \bigAccidental <_+>2 <_+>8. <_+>16
  | <6 3>2. <4>8 \bigAccidental <_+>2 <_+>8
  | <6 5->2. <4>8 <3>2 <3>8
  | <6>1 s4. <7>8
  %30
  | \bassFigureExtendersOff <7>8 <[6]>2 <7>2. <[4! 2]>8
  | <6\\>2 s8 <6! 4> <6 5->s2 <7 _+>8
  | \bassFigureExtendersOn \bigAccidental <_!>2 s16 <11>8 <11>16 <6>2 s8 <6 5>
  | s2 s8 <4 2> <6 5>2 s8 <7>
  | \bassFigureExtendersOff s2 s8 <7> <7> <[6\\]> s4. <7 _+>8
  %35
  | s2 s8 <6> <7-> <6> s4. <6>8
  | <7>8 <6> s4. <6>8 <7 _+>2 s8 <7>8
  | s2 s8 <6> <7-> <6> s4. <6>8
  | <7>8 <6> s4. <6>8 <7 _+>4 <5 3>8 <6 5>4 \bigAccidental <_+>8
  | s1.
}

upperKeyb =   \relative c'' {
  | R1*12/8-\hideF
  | R1*12/8
  | cis16( a gis fis) cis'8\staccatissimo \tag #'printed { cis4.^\scrCourtMordent ~ } \tag #'played { \tuplet 3/2 { cis32 b cis~ } cis16~ cis4 ~ }  cis16 gis fis eis cis'8\staccatissimo \tag #'printed { cis4.^\scrCourtRevTurn ~ } \tag #'played { \tuplet 3/2 { cis32 d cis b cis16~ } cis4 ~ }
  | cis16 b( a gis a fis) a( cis fis gis) a8 ~ a16 gis16( a b a gis  fis e d cis d b')
  % 5
  | \tag #'played { d,8 cis16_[ } \tag #'printed { \appoggiatura d8 cis8._[ }  b16( a gis]  a) cis( fis a d, cis ) \tag #'played { cis8 b16 } \tag #'printed { \appoggiatura cis8 b8. } a16( gis fis) gis( b eis gis) cis, b
  | a32(_[ fis eis fis gis a b cis d cis b16)] a( cis eis fis gis) b, a fis eis fis cis'8 ~ cis b16 a gis fis
  | \tag #'played { fis8 eis4 } \tag #'printed { \appoggiatura fis16 eis4. } r4. r2.
  | R1*12/8
  | cis'16( a gis fis eis fis) \tag #'played { fis8 d'4~ } \tag #'printed { \appoggiatura fis,8 d'4.~ } d16 a'( gis fis gis e!) \tag #'played { d8 cis4~ } \tag #'printed { \appoggiatura d8 cis4.~ }
  %10
  | cis16 g'( fis eis fis d!) \tag #'played { cis8 b4~ } \tag #'printed { \appoggiatura cis8 b4.~ } b16_[ cis( b a gis fis)] gis( a b d cis b)
  | a16_[ eis( fis a d cis)] d a'32 fis
           \tag #'played { e64 dis e dis e dis e dis e dis e dis }
           \tag #'printed { \appoggiatura e8 dis8.\trill } 
           cis32 dis e!16 fis,( gis b e dis!) e16 b'32 gis
           \tag #'played { fis64 eis fis eis fis eis fis eis fis eis fis eis }
           \tag #'printed { \appoggiatura fis8 eis8.\trill }
           dis!32 eis
  | fis16 cis( fis gis a) gis b( a gis fis eis fis) \tag #'played { fis8 eis4 ~ } \tag #'printed { \appoggiatura fis8 eis4.~ } eis8. cis16 \appoggiatura d8 cis32 bis cis16
  | a'16( gis fis eis fis a dis, e fis bis, cis dis) a(_[ gis a fis gis) cis] bis( e dis! fis e dis)
  | gis16 cis,( bis cis fis dis) e( cis e dis cis bis!) \tag #'played { bis16 cis16~cis4~ } \tag #'printed { \appoggiatura bis8 cis4.~ } cis16 gis( a b cis d!)
  %15
  | e4. ~ e16 gis( a fis e dis) \tag #'played { dis8 e4~ } \tag #'printed { \appoggiatura dis8 e4.~ } e16 a( b gis fis e)
  | \tag #'played { e8 dis4~ } \tag #'printed { \appoggiatura e8 dis4.~ } dis16( e fis cis b a gis a) b fis e dis( e fis gis ais b cis)
  | \appoggiatura cis8 \stemDown d!16( ais b eis, fis b) d( e! d cis d fis) \appoggiatura e8 d16( a! b fis gis b) d( e d cis d b')
  | cis,16( d cis b cis a) e( gis a b cis d) e( fis e d e cis a b cis dis e fis)
  | g16( dis e ais, b e g a! g fis g b) \appoggiatura a8 g!16( d e b cis e g a g fis g a,) \stemNeutral
  %20
  | fis'16( g fis e fis d  b ais b g fis g) e'( fis e d e cis ais! gis ais fis eis fis)
  | d'16 e! d cis d b \tag #'played { a8 g4~ } \tag #'printed { \appoggiatura a8 g4.~ } g16^[ d' cis b cis a!] \tag #'played { g8 fis4~ } \tag #'printed { \appoggiatura g!8 fis4.~ }
  | fis16 c' b ais b g \tag #'played { fis8 e4~ } \tag #'printed { \appoggiatura fis8 e4.~ } e16 b'( ais! b e cis) \stemUp d( b d cis b ais!)
  | \tag #'played { \tuplet 3/2 { b32 ais b~ } b16~b4 } \tag #'printed { b4.^\scrCourtMordent } r r \tag #'played { \tuplet 3/2 { b32 ais b~ } b16~b4~ } \tag #'printed { b4.^\scrCourtMordent~ }
  | b16 gis( e dis e b) e fis gis a b8~ b32 cis( b a b16 gis eis fis gis a b d! cis b)
  %25
  | a16 cis,( dis eis fis gis) a32( gis fis eis fis16 a) \tag #'played { \tuplet 3/2 { d32 cis d~ } d16~ } \tag #'printed { d!8^\scrCourtMordent~ } d16 b,( cis d e fis) gis32( fis e! dis e16 gis) cis8 ~
  | cis16 a,( b cis dis e) fis32( e d! cis e16 fis) b8~ \stemNeutral b16 d( cis b eis fis) gis( eis fis dis) cis8
  | r4. \tag #'played { \tuplet 3/2 { e32 dis e~ } e16~e4~ } \tag #'printed { e!4.^\mordent~ } e16 c( b a dis e) fis32( e) dis16 e32( dis) cis16 b8
  | r4. \tag #'played { \tuplet 3/2 { d32 cis d~ } d16~d4~ } \tag #'printed { d!4.^\scrCourtMordent~ } d16 bes a g cis d e32( fis e cis) d( e d b) a8\staccatissimo
  | a4. ~ a16 cis( d b a gis!) \tag #'played { gis8 a4~ } \tag #'printed { \appoggiatura gis8 a4.~ } a16 d( e cis b a)
  %30
  | \tag #'played { a8 gis4~ } \tag #'printed { \appoggiatura a8 gis4.~ } gis16 a( b fis e d) cis d e32 d cis16 d32 cis b16 \staffDown \stemUp \mergeDifferentlyDottedOn a4.^~
  | a16 \staffUp g'( fis e dis fis a b a gis a c) \appoggiatura b8 a16 e( fis a c! b) c( a dis e fis) a,
  | g16( a g fis g e) b dis e fis g a b( cis b ais b gis e fis gis ais! b cis)
  | \stemDown d16( ais b eis,! fis b) d e! d cis d fis \appoggiatura e8 d16( a b fis gis b d e d cis d) b'
  | \stemUp cis,16( d cis b cis a fis eis fis d cis d) b'( cis b a b gis eis! dis eis cis bis cis)
  %35
  | a'16( b a gis a fis) \tag #'played { e8 d4~ } \tag #'printed { \appoggiatura e8 d!4.~ } d16 a'( gis fis gis e!) \tag #'played { d8 cis4~ } \tag #'printed { \appoggiatura d8 cis4.~ }
  | cis16 g'( fis eis fis d!) \tag #'played { cis8 b4~ } \tag #'printed { \appoggiatura cis8 b4.~ } b16 fis'( eis! fis b gis!) a( fis a gis fis eis)
  | fis4. r r2.
  | R1*12/8
  | R1*12/8
}

lowerKeyb = \relative c, {
  | fis4.-\hideMP r8 r fis' eis4. r8 r e
  | dis4. r8 r d cis4 d8 b4 cis8
  | fis,4. r8 r fis cis'4. r8 r cis
  | fis 4. r8 r fis b,4. r8 r e
  %5
  | a,4. r8 r fis'8 gis4. r8 r eis
  | fis4. r8 r cis fis,4 e!8 d4 d'8
  | cis4. r8 r cis8 d4. r8 r dis8
  | e4. r8 r eis8 fis4 d!8 b4 cis8
  | fis,4. r8 r fis'8 eis4. r8 r e8
  %10
  | dis4. r8 r d8 cis4 d8 b4 cis8
  | fis,4. r8 r fis' gis4. r8 r gis,
  | a4 fis8 d'4 b8 cis4 gis'8 cis4 eis,8
  | fis4. r8 r fis,8 fis'4. r8 r bis,8
  | e4 a,8 fis4 gis8 cis4 gis8 cis,4 r8
  %15
  | \clef treble a'''8 e cis a4 a'8 gis e b gis4 gis'8
  | fis8 dis b \clef bass fis4 dis'8 e b gis e d! cis
  | b4. r8 r a8 gis4. r8 r e8
  | a4. r8 r b8 cis4. r8 r dis
  | e4. r8 r d! cis4. r8 r a
  %20
  | d4. r8 r g cis,4. r8 r fis
  | b,4. r8 r b'ais4. r8 r a
  | gis4. r8 r g8 fis4 g8 e4 fis8
  | b,4. r8 r b a4. r8 r a
  | gis4. r8 r gis cis4. r8 r cis
  %25
  | fis,4. r8 r fis'' eis r r r r e
  | dis8 r r r r d cis4 gis8 cis,4 b'8
  | ais4 r8 r r fis b4 fis8 b,4 a'8
  | gis4 r8 r r e a4 e8 a,4 g'8
  | fis8 a fis d4 d,8 a' a' e cis4 fis8
  %30
  | b,8 d b e4 e,8 a cis e a a, g'
  | fis4 r8 r r e dis4 r8 r r b
  | e4 r8 r r fis gis!4 r8 r r ais
  | b4 r8 r r a! gis4 r8 r r e
  | a,4 r8 r r b gis4 r8 r r cis
  %35
  | fis,4 r8 r r fis' eis4. r8 r e
  | dis4. r8 r d cis4 d8 b4 cis8
  | fis,4. r8 r fis' eis4 r8 r r e
  | dis4 r8 r r d cis4 d8 b4  cis8
  | \tag #'played { fis2. r } \tag #'printed { fis,4. r r2. }
  | \bar "|."
}

figuredKeyb = \figuremode {
  \bassFigureStaffAlignmentDown
  \set figuredBassAlterationDirection = #RIGHT
  | s2 s8 <6>8 <7->8 <6>2 <6>8
  | <7>8 <6>2 <6>8 <7 _+>4 <[5 3]>8 <6 5>4 \bigAccidental <_+>8
  \repeat unfold 2 { | s1. }
  %5
  \repeat unfold 2 { | s1. }
  | s2 s8 \bigAccidental <_+> <7>2 s4
  | <8>8 <7>4. s8 <6 5> <9 4>4 <5 3>8 <6 5>4 s8
  | s1.
  %10
  \repeat unfold 5 { | s1. }
  %15
  \repeat unfold 5 { | s1. }
  %20
  \repeat unfold 3 { | s1. }
  | s2 s8 s8 <4\+ 2>4 s2
  | s1.
  %25
  \repeat unfold 5 { | s1. }
  %30
  \repeat unfold 5 { | s1. }
  %35
  \repeat unfold 2 { | s1. }
  | s2 s8 <6> <7-> <6> s4. <6>8
  | <7>8 <6> s4. <6>8 <7 _+>4 <5 3>8 <6 5>4 \bigAccidental <_+>8
  | s1.
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
        \new FiguredBass {
                  %arbitrary value to render extender lines that start without a figure
                  \set FiguredBass.implicitBassFigures = #'(11)
                  \figuredKeyb }
    >>
    \layout{ 
        \context { \FiguredBass    
        \override BassFigure #'font-size = # -1 }
    }
}

%-------Generate midi
\score {
     \keepWithTag #'played
      <<
      \new Staff = "Staff_violinI"  {
              \set Staff.midiInstrument = "violin"
              \set Staff.midiMinimumVolume = #0.3
              \set Staff.midiMaximumVolume = #0.6
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
              \set Staff.midiMaximumVolume = #0.5
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
    \midi { \tempo 4 = 40 }
}