\include "common/version.ily"


global = {
  \key a \major
  \time 3/8
}

violinI = \relative c'' {
    \partial 8 e8
  | a8. gis32 fis e d cis b
  | cis8~ cis32 b cis d cis b a gis
  | a8. gis32 fis e d cis b
  | a4\trill a'8
  %5
  | e16( b' cis) a b d
  | e,16( cis'd) b cis e
  | a,16( d e) cis d fis
  | \tag #'printed { \appoggiatura cis8 b4 } \tag #'played { cis8 b } e8
  | a8.gis32 fis e d cis b
  %10
  | cis8~ cis32 b cis d cis b a gis
  | a8. gis32 fis e d cis b
  | \tag #'printed { a4\trill } \tag #'played { \tuplet 5/4 { b32 a b a b } a8 } e''8
  | fis16( cis d) fis b,d
  | gis16( cis,d) fis b,d
  %15
  | a'16( cis,d) fis b,d
  | b'8~ b32 a gis fis e d cis b
  | cis16( e gis) b a fis
  | dis16( e32 fis) e8. d16
  | cis16( a gis) b a fis
  %20
  | dis16( e32 fis) e8. fis32 gis
  | a16( b32 cis) d8. cis32 b
  | cis16( d32 e) fis8. e32 d
  | e16( fis32 gis) a8-! b,^\scrCourtTrill
  | a4 cis8-\scrPianoWhite-\hideP
  %25
  | e8( e e)
  | gis8( gis gis)
  | a8( a a)
  | a,8( a a)
  | a8^[( b cis])
  %30
  | d8( gis,gis)
  | a4. ~
  | a4 a8
  | e'8( a,gis)
  | a8( cis fis,)
  %35
  | e8( gis b)
  | cis8( a a)
  | a8( dis, dis)
  | e8( cis'b)
  | gis4. ~
  %40
  | gis4 \once \stemUp b8-!-\scrForteLeft-\hideF
  | \alignBeamQtr cis16( gis a) cis fis,a
  | dis16( gis,a) cis fis,a
  | e'16_[( gis,a) cis fis,a]
  | fis'8~ fis32 e dis cis b a gis fis
  %45
  | gis8(-\scrPiano-\hideP b b)
  | dis8( dis dis)
  | e8( e e)
  | e,8( e e)
  | e8( fis gis)
  %50
  | a8( dis,dis)
  | e4. ~
  | e4 r8
  | R1*3/8*2
  %55
  | R1*3/8
  | r8 r b'-\scrPiano-\hideP
  | e8.^[ dis32 cis b a gis fis]
  | gis8~ gis32 fis gis a gis fis e dis
  | e8. fis32 gis a b cis dis
  %60
   \setBeatStructureHalf
  | e8-! b-! r
  | cis8-! fis-! r
  | dis8-! gis-! r
  | e8-! gis-! r
  | e8-! cis-! r
  %65
  | d!8-! fis-! r
  | d8-! b-! r
  | cis8-! a'-! r
  | b,-! gis'-! r
  | a,8-! fis'-! r
  %70
  | gis,8-! e'-! r
  | R1*3/8
  | r8 r a,-\scrForteLeft-\hideF
  | gis16( b dis) fis e cis
  | ais16( b32 cis) b8-! r
  %75
  | R1*3/8*3
  | r8 r \stemUp b-\scrForte-\hideF
  | e8. dis32 cis b a gis fis \stemNeutral
  %80
  | gis8~ gis32 fis gis a gis fis e dis
  | e8. fis32 gis a b cis dis
  | e4 r8
  | R1*3/8
  | e,16(-\scrPiano-\hideP gis b) fis gis b
  %85
  | e8-! a,-! gis-!
  | a8-! r r
  | R1*3/8
  | \alignBeamQtr fis16( ais cis) gis ais cis
  | fis8-! b,-! ais-!
  %90
  | b8-! r r
  | r8 d16( cis32 b) gis'8-!
  | r8 a,16( gis32 fis) fis'8-!
  | R1*3/8
  | r8 r cis8-\scrPiano-\hideP
  %95
  | fis8. e32 d cis b a gis
  | a8~ a32 gis a b a gis fis eis
  | fis8.^[ gis32 a b cis dis eis]
  | fis8 r r
  | d8 r r
  %100
  | cis8 r r
  | b8 r r
  | b8 r r
  | r8 cis( cis)
  | r8 cis( cis)
  %105
  | r8 b( b)
  | r8 d( d)
  | eis,8 r r
  | R1*3/8*2
  %110
  | r8 r gis8-\scrForteLeft-\hideF
  | \alignBeamQtr a16( eis fis) a d,fis
  | \alignBeamQtr b16( fis gis) b e,! gis \stemUp
  | \alignBeamQtr cis16( gis ais) cis fis,ais
  | \tag #'printed { \nachschlag\appoggiatura cis8 d8 ~ } \tag #'played { cis16 d16 ~ } d32 e d cis b a! gis fis
  %115
  | \alignBeamSix gis16( dis e) gis cis,e
  | \alignBeamSix a16( e fis) a d,fis
  | b16( fis gis) b e, gis
  | cis8~ cis32 d cis b a gis fis e
  | fis8-!-\scrPiano-\hideP dis'16( e) fis8-!
  %120
  | \stemNeutral r8 dis16( e \scriptAboveSlur fis8)-!
  | r8 e16( fis \scriptAboveSlur gis8)-!
  | r8 e16( fis \scriptAboveSlur gis8)-!
  | r8 fis16( gis \scriptAboveSlur a8)-!
  | r8 fis16( gis \scriptAboveSlur a8)-!
  %125
  | R1*3/8
  | r8 r dis,-\scrPianoLeft-\hideP
  | e16( bis cis) e gis,cis
  | fis16( bis,cis) e gis,cis
  | gis'16( bis,cis) e gis,cis
  %130
  | \shapeSlurB a'4.~
  | \shapeSlurB a4. ~
  | \shapeSlurB a4. ~
  | \shapeSlurB a4. ~
  | a8 r gis,
  %135
  | cis,16( dis32 e) \flatBeam fis8.[ e32 dis]
  | e16( fis32 gis) a8.[ gis32 fis]
  | gis16 cis e8-! \tag #'printed { dis8\trill } \tag #'played { e32 dis e dis }
  | cis4 e8-\scrForteLeft-\hideF
  | a8. gis32 fis e d cis b
  %140
  | cis8~ cis32 b cis d cis b a gis
  | a8. gis32 fis e d cis b
  | a4^\scrCourtTrill a'8
  | e16( b'cis) a b d
  | e,16( cis'd) b cis e
  %145
  | a,16( d e) cis d fis
  | \tag #'printed { \nachschlag\appoggiatura cis8 b4 } \tag #'played { \tuplet 3/2 { cis8 b4 } } b8-\scrPianoLeft-\hideP
  | cis8( e e)
  | gis8( gis gis)
  | a8( a a)
  %150
  | a,8( a a)
  | \shapeSlurF a8^[( b cis])
  | d8( gis,gis)
  | \shapeSlurC a4.~
  | a8 e-! r
  %155
  | fis8-! b-! r
  | gis8-! cis-! r
  | a8-!^[ cis-!] r
  | a8-! fis-! r
  | g8-! b-! r
  %160
  | g8-! e-! r
  | fis8-! d'-! r
  | e,8-! cis'-! r
  | d,8-! b'-! r
  | cis,8-! a'-! r
  %165
  | R1*3/8
  | r8 r d-\scrForteParLeft-\hideF
  | cis16( e gis) b a fis
  | dis16[( e32 fis]) e8-! r
  | r8 gis-!-\scrPiano-\hideP a-!
  %170
  | r8 b-! d,-!
  | r8 cis-! a'-!
  | r8 b,-! a'-!
  | r8 gis-! b-!
  | a8-! r r
  %175
  | a,,16(-\scrForte-\hideF cis e) b cis e
  | a16( cis e) b cis e
  | a8. gis32 fis e d cis b
  | cis8~ cis32 b cis d cis b a gis
  | a8. gis32 fis e d cis b
  %180
  | \tag #'printed { a4\trill } \tag #'played { \tuplet 5/4 { b32 cis b cis b } cis8 } a'8
  | e16( b'cis) a b d
  | e,16( cis'd) b cis e
  | a,16( d e) cis d fis
  | \tag #'printed { \appoggiatura cis8 b4 } \tag #'played { cis8 b } e
  %185
  | a8. gis32 fis e d cis b
  | cis8~ cis32 b cis d cis b a gis
  | a8. gis32 fis e d cis b
  | \tag #'printed { a4\trill } \tag #'played { \tuplet 5/4 { gis32 a gis a gis } a8 } e''8
  | fis16( cis d) fis b, d
  %190
  | gis16( cis,d) fis b,d
  | a'16( cis,d) fis b, d
  | b'8~ b32 a gis fis e d cis b
  | cis16( e gis) b a fis
  | dis16( e32 fis) e8. d16
  %200
  | cis16( a gis) b a fis
  | dis16( e32 fis) e8. fis32 gis
  | a16( b32 cis) d8. cis32 b
  | cis16( d32 e) fis8. e32 d
  | e16( fis32 gis) a8-! \tag #'printed { b,8\trill } \tag #'played { \tuplet 3/2 { cis32 b cis } b16 }
  %210
  | a4*3/2\fermata-\hideFF |
}

violinII = \relative c'' {
    \partial 8 cis8
  | cis8( cis b)
  | a8( a gis)
  | fis8( fis gis)
  | a4 fis8
  %5
  | e4. ~
  | e4.
  | fis8( cis a')
  | gis4 a8
  | cis8( cis b)
  %10
  | a8( a gis)
  | fis8( fis gis)
  | a8 e a
  | a8-! b-! r
  | e8-! b-! r
  %15
  | fis8-! a-! r
  | e'8-! b-! b-!
  | a8^[( b cis])
  | b8 b16 a b gis
  | a8( d,) cis
  %20
  | b8( b b)
  | e8-! fis-! e-!
  | e8-! d-! a'-!
  | a8-! a-! gis-!
  | e4 a8-\scrPianoWhite-\hideP
  %25
  | cis8( cis cis)
  | gis8( gis gis)
  | cis8( cis cis)
  | e8( e e)
  | d8( e e,)
  %30
  | fis8( e e)
  | e4. ~
  | e4 e8
  | gis8( a b)
  | a8( a b)
  %35
  | b8( cis gis)
  | a8^[( cis cis])
  | b8( fis fis)
  | gis8( fis fis)
  | e4. ~
  %40
  | e4 e8-!-\scrForteLeft-\hideF
  | e8-! fis-! r
  | b8-! fis-! r
  | cis8-! e r
  | b'8-! fis-! fis-!
  %45
  | e8(-\scrPiano-\hideP e gis)
  | gis8( gis b)
  | gis8( gis gis)
  | b8^[( b b)]
  | a8( b) b,
  %50
  | cis8( b b)
  | b4.~
  | b4 r8
  | R1*3/8*2
  %55
  | R1*3/8
  | r8 r fis'-\scrPiano-\hideP
  | b8( gis fis)
  | e8( e dis)
  | b8( e dis)
  %60
   \setBeatStructureHalf
  | gis8-! gis-! r
  | e8-! a-! r
  | fis8-! b-! r
  | gis8-! e'-! r
  | cis8-! fis,-! r
  %65
  | b8-! d-! r
  | b8-! e,-! r
  | a8-!^[ cis-!] r
  | gis8-! b-! r
  | fis8-! a-! r
  %70
  | e8-! b'-! r
  | R1*3/8
  | r8 r dis,-\scrForteLeft-\hideF
  | e8( fis gis)
  | fis8-! b,-! r
  %75
  | R1*3/8*3
  | r8 r gis'-\scrForte-\hideF
  | gis8( gis fis)
  %80
  | e8( e dis)
  | b'8( e,dis)
  | gis4 r8
  | e16(-\scrPiano-\hideP gis b) fis gis b
  | e8 gis,e
  %85
  | e8 e e
  | e8 r r
  | \alignBeamQtr fis16( a cis) gis a cis
  | fis8^[ ais,fis]
  | fis8 fis fis
  %90
  | fis8 r r
  | r8 b16( a32 gis) eis'8-!
  | r8 \alignBeamCin cis,16( b32 a) a'8-!
  | R1*3/8
  | r8 r gis-\scrPianoPar-\hideP
  %95
  | cis8( a gis)
  | fis8( fis eis)
  | cis'8( fis,eis)
  | a8 r r
  | gis8 r r
  %100
  | gis8 r r
  | fis8 r r
  | gis8 r r
  | r8 fis( cis)
  | r8 ais'( ais)
  %105
  | r8 fis( fis)
  | r8 b^[( b])
  | \once\stemUp b8 r r
  | R1*3/8*2
  %110
  | r8 r eis,8-\scrForteLeft-\hideF
  | fis8 r a
  | gis8 r cis
  | ais8 r ais
  | \once\stemUp b8 r fis
  %115
  | e8 r gis
  | fis8 r \once\stemUp b
  | gis8 r gis
  | a8 e \shapeSlurD cis'-\scrPiano-\hideP ~
  | cis8 bis16( cis \scriptAboveSlur dis8)-!
  %120
  | r8 bis16( cis \scriptAboveSlur dis8)-!
  | r8 cis16( dis \scriptAboveSlur e8)-!
  | r8 cis16( dis \scriptAboveSlur e8)-!
  | r8 dis16( e \scriptAboveSlur fis8)-!
  | r8 dis16( e \scriptAboveSlur fis8)-!
  %125
  | R1*3/8
  | r8 r \once\stemUp bis,-\scrPianoLeft-\hideP
  | \shapeSlurF cis8( gis cis)
  | bis8( fis bis)
  | \shapeSlurF cis8( gis cis)
  %130
  | \shapeSlurB cis4.~
  | cis8 \shapeSlurB d!4 ~
  | \shapeSlurB d4.~
  | \shapeSlurB d4.~
  | d8 r r
  %135
  | R1*3/8*2
  | r16 cis cis8 bis^\scrCourtTrill
  | gis4 a8-\scrForteLeft-\hideF
  | cis8( cis b)
  %140
  | a8( a gis)
  | fis8( fis gis)
  | a4 e8
  | \shapeSlurC e4.~
  | e4.
  %145
  | d8( cis a')
  | gis4 gis8-\scrPianoLeft-\hideP
  | a8( a a)
  | gis8( gis gis)
  | cis8( cis cis)
  %150
  | e8( e e)
  | d8_[( e) e,]
  | fis8( e e)
  | \shapeSlurC e4.~
  | e8 a,-! r
  %155
  | a8-! d-! r
  | b8-! e-! r
  | cis8-! a'-! r
  | fis8-! b,-! r
  | e8-! g-! r
  %160
  | e8-! a,-! r
  | d8-! fis-! r
  | cis8-! e-! r
  | b8-! d-! r
  | a8-! e'-! r
  %165
  | R1*3/8
  | r8 r \once\stemUp b'-\scrForteLeft-\hideF
  | a8^[( b cis])
  | b8-! e,-! r
  | r8 d'-!-\scrPiano-\hideP cis-!
  %170
  | r8 d-! b-!
  | r8 a-! cis-!
  | r8 fis,-! b-!
  | r8 b-! e,-!
  | a8-! r r
  %175
  | R1*3/8
  | \alignBeamQtr e16(-\scrForte-\hideF a cis) gis a cis
  | e8( cis b)
  | a8 a( gis)
  | fis8-! fis-! gis-!
  %180
  | a4 e8
  | \shapeSlurC e4.~
  | e4.
  | d8( cis a')
  | gis4 a8
  %185
  | cis8( cis b)
  | a8( a gis)
  | fis8( fis gis)
  | a8 e a
  | a8-! b-! r
  %190
  | e8-! b-! r
  | fis8-! a-! r
  | e'8-! b-! b-!
  | \stemUp \shapeSlurF a8( b cis)
  | b8 b16 a b gis
  %200
  | a8( d,) cis
  | b8( b b)
  | e8-! fis-! e-!
  | e8-! d-! a'-!
  | a8-! a-! gis-!
  %210
  | e4*3/2\fermata-\hideFF |
}

viola = \relative c'' {
    \partial 8 a8
  | e8( e e)
  | e8( e e)
  | cis8( b b)
  | \stemUp cis4 cis8 \stemNeutral
  %5
  | b8( a) e'
  | cis8( b a)
  | a'8( a fis)
  | e4 e8
  | e8( e e)
  %10
  | e8( e e)
  | cis8( b b)
  | cis16 b cis d e cis
  | d8-! fis-! r
  | b,8-! gis'-! r
  %15
  | cis8-! fis,-! r
  | b,8-! e-! e-!
  | e8( d e)
  | fis8 b,e
  | e8( e e)
  %20
  | fis8_[ b,gis]
  | e8-! a-! b-!
  | a8-! a-! d-!
  | cis8-! e-! e-!
  | cis4 a8-\scrPianoWhite-\hideP
  %25
  | a'8( a a)
  | e8( e e)
  | fis8( fis fis)
  | cis8( cis cis)
  | d8( d cis)
  %30
  | b8 e b
  | a4. ^~
  | a8 e'a
  | gis8( fis e)
  | fis8( e dis)
  %35
  | e8( cis b)
  | a8( fis a)
  | b8( b a)
  | gis8( a b)
  | b4. ~
  %40
  | b4 b8-!-\scrForteLeft-\hideF
  | a8-! cis-! r
  | fis,8-! dis'-! r
  | gis8-! cis,-! r
  | fis,8 b b
  %45
  | \posTextScriptC e8(-\scrPiano-\hideP e e)
  | b8( b b)
  | cis8^[( cis cis])
  | gis8( gis gis)
  | a8( a gis)
  %50
  | fis8( b fis)
  | e4. ~
  | e4 r8
  | R1*3/8*2
  %55
  | R1*3/8
  | r8 r dis'-\scrPiano-\hideP
  | e8^[( b b])
  | b8( gis a)
  | gis8( gis fis)
  %60
    \setBeatStructureHalf
  | e8-! e'-! r
  | a,8-! cis-! r
  | b8^[-! dis]-! r
  | cis8-! gis-! r
  | gis'8 cis-! r
  %65
  | fis,8-! b,-! r
  | fis'8-! b-! r
  | e,8-! a-! r
  | dis,8-! gis-! r
  | cis,8-! fis-! r
  %70
  | b,8-! gis'-! r
  | R1*3/8
  | r8 r b,-\scrForteParCtr
  | b8( a b)
  | cis8-! fis-! r
  %75
  | R1*3/8*3
  | r8 r e-\scrForte-\hideF
  | b8( b b)
  %80
  | b8( b b)
  | b8( cis b)
  | b4 e8-\scrPiano-\hideP
  | e8( e e)
  | d8( d d)
  %85
  | cis8_[( cis b])
  | a8 cis eis
  | fis8( fis fis)
  | e!8( e e)
  | d8( d cis)
  %90
  | b8 r r
  | R1*3/8*3
  | r8 r eis-\scrPiano-\hideP
  %95
  | fis8( cis cis)
  | cis8( a b)
  | a8( a gis)
  | fis8 r r
  | r8 b16( cis b8)-!
  %100
  | r8 cis16( d \scriptAboveSlur cis8)-!
  | r8 d16( e \scriptAboveSlur d8)-!
  | r8 eis16( fis \scriptAboveSlur eis8)-!
  | r8 ais,( ais)
  | r8 fis( fis)
  %105
  | r8 b( b)
  | r8 gis( gis)
  | cis8 r r
  | R1*3/8*2
  %110
  | r8 r cis-\scrForteLeft-\hideF
  | cis8 r fis
  | d8 r gis
  | fis8 r fis
  | fis8 r b,
  %115
  | b8 r e
  | cis8 r fis
  | e8 r e
  | e8 cis e-\scrPiano-\hideP
  | a8 r fis
  %120
  | dis8 r bis'
  | gis8 r gis
  | e8 r a
  | a8 r fis
  | fis r r
  %125
  | R1*3/8
  | r8 r gis8-\scrPianoLeft-\hideP
  | gis8( cis, cis)
  | dis8( dis dis)
  | e8( e e)
  %130
  | \shapeSlurB fis4.~
  | \shapeSlurB fis4.~
  | \shapeSlurB fis4.~
  | \shapeSlurB fis4.~
  | \shapeSlurB fis8 r r
  %135
  | R1*3/8*2
  | r16 a gis8 fis
  | e4 e8-\scrForteLeft-\hideF
  | e8( e e)
  %140
  | e8( e e)
  | cis8( b b)
  | \stemUp cis4 cis8 \stemNeutral
  | b8( a) e'
  | cis8( b a)
  %145
  | a'8( a fis)
  | e4 e8-\scrPianoLeft-\hideP
  | e8( a a)
  | e8( e e)
  | fis8( fis fis)
  %150
  | cis8( cis cis)
  | d8( d cis)
  | \shapeSlurG b8( e b)
  | \shapeSlurC a4.~
  | a8 cis-! r
  %155
  | d,8-! fis-! r
  | e8-! gis-! r
  | fis8-! cis-! r
  | cis'8-! fis-! r
  | b,8-! e,-! r
  %160
  | a8-! e'-! r
  | a,8-! d-! r
  | gis,8-! cis-! r
  | fis,8-! b-! r
  | e,8-! cis'-! r
  %165
  | R1*3/8
  | r8 r e-\scrForteLeft-\hideF
  | e8( d e)
  | fis8-! b-! r
  | r8 b,-!-\scrPiano-\hideP a-!
  %170
  | r8 a-! gis-!
  | r8 fis'-! e-!
  | r8 d-! cis-!
  | r8 d-! gis,-!
  | \once\stemUp cis8-! r r
  %175
  | R1*3/8
  | cis16(-\scrForte-\hideF e a) d, e a
  | cis8( e, e)
  | e8( e e)
  | cis8-! b-! b-!
  %180
  | \stemUp cis4 cis8 \stemNeutral
  | b8( a) e'
  | cis8( b a)
  | a'8( a fis)
  | e4 e8
  %185
  | e8( e e)
  | e8( e e)
  | cis8( b b)
  | cis16 b cis d e cis
  | d8-! fis-! r
  %190
  | b,8-! gis'-! r
  | cis8-! fis,-! r
  | b,8-! e-! e-!
  | e8( d e)
  | fis8( b,e)
  %200
  | e8( e e)
  | fis8_[( b,gis])
  | e8-! a-! b-!
  | a8-! a-! d-!
  | cis8-! e-! e-!
  %210
  | cis4*3/2\fermata-\hideFF |
}

continuo = \relative c {
    \partial 8 a8^\scrTutti
  | a'8( a gis)
  | a8( a e)
  | fis8-! d-! e-!
  | a,16 b cis d e fis
  %5
  | gis8( fis gis)
  | a8( gis a)
  | fis8( a d,)
  | e16 fis e d cis b
  | a8( a gis)
  %10
  | a8( a e)
  | fis8^! d^! e^!
  | a16 gis a b cis a
  | d8 d,d'
  | e8 e,e'
  %15
  | fis8 fis,fis'
  | gis8 gis,gis'
  | a8( a a)
  | a8 gis16 fis gis e
  | a8^[ a,~ a]
  %20
  | a8 gis16( fis e d)
  | cis8 fis gis
  | a8 d,d'
  | a'8 cis,e
  | a,4 r8
  %25
  | R1*3/8*5
  %30
  | r8 r \posTextScriptD e^\scrTuttiCtr
  | \alignBeamQtr a16( cis e) b cis e
  | fis8 r r
  | R1*3/8*2
  %35
  | R1*3/8*3
  | r8 r b,^\scrTuttiCtr
  | e,16( gis b) fis gis b
  %40
  | e16 dis e fis gis e
  | a8 a,a'
  | b8 b,b'
  | cis8 cis,cis'
  | dis8 dis,dis'
  %45
  | e8 e, r
  | R1*3/8*4
  %50
  | r8 r b^\scrTuttiCtr
  | e,16( gis b) fis gis b
  | e4 r8
  | R1*3/8*2
  %55
  | R1*3/8
  | r16^\scrPianoSpc-\hideP b^\scrSolo b'a gis fis
  | gis8( e dis)
  | e8( e,fis)
  | gis-! a-! b-!
  %60
  | e,8 r gis
  | a8 r fis
  | b8 r gis
  | cis8 r bis'
  | cis8 r fis,
  %65
  | b,8 r ais'
  | b8 r e,
  | a,8 r fis'
  | gis,8 r e'
  | fis,8 r \once\stemUp dis'
  %70
  | e,8 r r
  | R1*3/8
  | r8 r b'^\scrTuttiCtrPar-\scrForteParCtr-\hideF
    \setBeatStructureHalf
  | e8( e e)
  | e8( dis) r
  %75
  | R1*3/8*3
  | r16 b^\scrTutti-\scrForte-\hideF e dis e fis
  | gis8( e dis)
  %80
  | e8( e,fis)
  | gis8-! a-! b-!
  | e,16( gis b) fis gis b
  | e8 r r
  | R1*3/8
  %85
  | r8 \posTextScriptE cis^\scrSoloPianoLeftAlg-\hideP e
  | a,8 a'gis
  | fis8 r r
  | R1*3/8
  | r8 d fis
  %90
  | b,8 r r
  | R1*3/8*3
  | r16^\scrPianoSpc-\hideP cis16^\scrSolo cis'b a gis
  %95
  | a8 fis eis
  | fis8 fis,gis
  | a8 b cis
  | fis,8 a fis
  | b8 r r
  %100
  | cis8 r r
  | \once\stemUp d8 r r
  | cis8 r b
  | ais8 r r
  | fis8 r r
  %105
  | b8 r r
  | gis8 r r
  | cis8 r r
  | R1*3/8*2
  %110
  | r8 \posTextScriptF r^\scrForte cis8^\scrTutti-\hideF
  | fis,8_[ fis'16 eis \shapeSlurD fis8] ~
  | fis8 e!16 dis \shapeSlurD e8 ~
  | e8 cis fis
  | b,8 cis d
  %115
  | e,8 e'16 dis \shapeSlurE e8 _~
  | e8^[ d!16 cis \shapeSlurE d8] _~
  | d8 b e
  | a,8 a'gis^\scrSolo-\scrPiano-\hideP
  | fis8 r dis
  %120
  | bis8 r gis
  | cis8 r cis
  | cis,8 <<{ d'\rest }\\{ \hideNotes d,,\rest \unHideNotes }>> cis''
  | dis8 r dis
  | dis,8 r dis'
  %125
  | e8 a fis
  | gis16 a gis fis e dis
  | cis8 r r
  | R1*3/8*2
  %130
  | r8 fis,(^\scrTastoSolo fis)
  | r8 fis( fis)
  | r8 fis( fis)
  | r8 fis( fis)
  | r8 fis'bis,
  %135
  | cis8 r bis
  | cis8 r dis
  | e16_[ fis gis8 gis,]
  | cis16^\scrTutti-\scrForte-\hideF gis'cis d cis b
  | a8( a gis)
  %140
  | a8( a e)
  | fis8-! d-! e-!
  | a,16_[ b cis d e fis]
  | gis8( fis gis)
  | a8( gis a)
  %145
  | fis8( a d,)
  | e16^[ fis e d cis b]
  | a8 r r
  | R1*3/8*2
  %150
  | R1*3/8*2
  | r8 r e8^\scrSolo-\scrPianoLeft-\hideP
  | a16_[( cis e) b cis e]
  | a8 r cis,
  %155
  | d8 r b
  | e8 r cis
  | fis,8 r eis'
  | fis8 r b,
  | e,8 r dis'
  %160
  | e8 r a,
  | d8 r b
  | cis8 r a
  | b8 r gis
  | a8 r r
  %165
  | R1*3/8
  | r8 r e'^\scrTuttiCtr-\scrForteLeft-\hideF
  | a8( a a)
  | a8 gis16 fis e d
  | cis8 r r
  %170
  | b8^\scrSolo-\scrPianoPar r r
  | a8 r r
  | d8 r r
  | d8 r r
  | cis8 d e
  %175
  | a,8^\scrTutti-\scrForte-\hideF a'e
  | cis8 a r
  | a8( a'gis)
  | a8( a e)
  | fis8-! d-! e-!
  %180
  | a,16_[ b cis d e fis]
  | gis8( fis gis)
  | a8( gis a)
  | fis8( a d,)
  | e16 fis e d cis b
  %185
  | a8( a gis)
  | a8( a e)
  | fis8^! d^! e^!
  | \alignBeamSix a16 gis a b cis a
  | d8 d,d'
  %190
  | e8 e,e'
  | fis8 fis,fis'
  | gis8 gis,gis'
  | a8( a a)
  | a8 gis16 fis gis e
  %200
  | a8^[ a,( a])
  | a8 gis16( fis e d)
  | cis8 fis gis
  | a8 d,d'
  | a'8 cis,e
  %210
  | a,4*3/2\fermata-\hideFF |
}

figuredContinuo = \figuremode {
    \bassFigureStaffAlignmentDown
    \set figuredBassAlterationDirection = #RIGHT
    \partial 8 s8
  | s4 <6>8
  | s4 <6>8
  | <5>8 <6 5>4
  | s8 <6>4
  %5
  | <6>4 \bassFigureExtendersOn <6>8 \bassFigureExtendersOff
  | s4.
  | <6>4.
  | s4 <6>8
  | s4 <6>8
  %10
  | s4 <6>8
  | s8 <6 5>4
  | s4.
  | s4 <6>8
  | <5>4 <7 5>8
  %15
  | <6>4.
  | <6 5>4.
  | s8 <7\\ 4 2> <8 5 3>
  | <4\+ 2>8 <6>4
  | s8 <7\\ 4 2> <8 5 3>
  %20
  | <4\+ 2>8 <6>4
  | <6>8 <6> <6 5>
  | s4.
  | s8 <6>4
  | s4.
  %25
  | s4.*5
  %30
  | s4.
  | s8 <6 4>4
  | s4.*3
  %35
  | s4.*4
  | s8 <6 4> <6>
  %40
  | s4 <6>8
  | s4 <6>8
  | \bigAccidental <_+>4.
  | <6>4.
  | <6 5>4.
  %45
  | s4.*5
  %50
  | s4.*5
  %55
  | s4.
  | s16 \bassFigureExtendersOn \bigAccidental <_+>4 <_+>16 \bassFigureExtendersOff
  | <6>4 <6>8
  | s4 <6\\>8
  | <6>8 <6 5> \bigAccidental <_+>
  %60
  | s4 <6>8
  | s4 <7>8
  | \bigAccidental <_+>4 <7 _+>8
  | s4 <6 5>8
  | s4 <7 _+>8
  %65
  | s4 <6 5>8
  | s4 <7>8
  | s4 <6\\>8
  | <7 5\+>4 <6>8
  | <7>4 <6 5>8
  %70
  | s4.
  | s4.
  | s4 \bigAccidental <_+>8
  | s4.
  | <4\+ 2>8 <6> s
  %75
  | s4.*4
  | <6>4 <6>8
  %80
  | s4 <6\\>8
  | <6>8 <6 5> \bigAccidental <_+>
  | s4.*3
  %85
  | s8 <6> <7>
  | s4 <[6\\ 4]>8
  | <5 3>4.
  | s4.
  | s8 <6> <7 _+>
  %90
  | s4.*4
  | s16 \bigAccidental <_+>16 s4
  %95
  | <6>4 <6>8
  | s4 <6\\>8
  | <6>4 \bigAccidental <_+>8
  | s8 <6> s
  | s4.
  %100
  | <7 _+>4.
  | <6>4.
  | \bigAccidental <_+>4 <4\+ 2>8
  | <6>4.
  | <7 _+>4.
  %105
  | s4.
  | <6\\ 5->4.
  | <7 _+>4.
  | s4.*2
  %110
  | s4 \bigAccidental <_+>8
  | s4.
  | <4 2>8 <5>4
  | <4\+ 2>8 <6\\> <7 _+>
  | s4 <6>8
  %115
  | s4.
  | <4 2>8 <5>4
  | <4 2>8 <6>4
  | s4.
  | <6\\>4 <5->8
  %120
  | <6 5>4 <7 _+>8
  | s4 <7>8
  | <6 5>4.
  | <7 5>8  s16... \bassFigureExtendersOn <11 11>128 <11 11>16... s128 \bassFigureExtendersOff
  | <6\\ 5->4 <6\\ 5->8
  %125
  | <6>8 <6\\> <7 5>
  | \bigAccidental <_+>4.
  | s4.*3
  %130
  | s4.*4
  | s8 <6> <6 5>
  %135
  | <5>4 <6 5>8
  | s4 <6\\>8
  | <6>8 <6 4> <5\+ _+>
  | s4.
  | <5>4 <6>8
  %140
  | s4 <[6]>8
  | <5>8 <6 5>4
  | s4.
  | <6>4.
  | s4.
  %145
  | <6>4.
  | s4 <7 5>8
  | s4.*3
  %150
  | s4.*4
  | s4 <6 5->8
  %155
  | s4 <7>8
  | s4 <7>8
  | s4 <6 5>8
  | s4 <7 _+>8
  | \bigAccidental <_!>4 <6 5>8
  %160
  | \bigAccidental <_!>4 <7!>8
  | s4 <6\\ 5>8
  | s4 <6 5>8
  | s4 <6 5>8
  | s4.
  %165
  | s4.*3
  | <4\+ 2>8 <6>4
  | <6>4.
  %170
  | <6>4.
  | s4.
  | <6 5>4.
  | <4\+ 2>4.
  | <6>8 <6 5>4
  %175
  | s4.
  | s4.
  | s4 <6 5>8
  | s4 <7 5>8
  | <5>8 <6 5>4
  %180
  | s4.
  | <6>4.
  | s4.
  | <6>4.
  | s4.
  %185
  | s4 <6 5>8
  | s4 <7 5>8
  | <5>8 <6 5>4
  | s4.
  | s4 <6>8
  %190
  | <7>4.
  | <6>4.
  | <6 5>4.
  | s8 <7\\ 4 2> <8 5 3>
  | <4\+ 2>8 %{ <-----obscured in reference ----- %} <6>4
  %200
  | s8 <7\\ 4 2> <8 5 3>
  | <6 4\+ 2>8 <6>4
  | <6>8 %{ <-----obscured in reference ----- %} <6> <6 5>
  | s4.
  | s8 <6>4
  %210
  | s4. |
}

upperKeyb =   \relative c'' {
    \partial 8 e8
  | a8.^\scrCourtMordentRight gis32 fis e d cis b
  | \nachschlag\appoggiatura b8 cis8~ cis32 b cis d cis b a gis
  | \nachschlag\appoggiatura gis8 a8. gis32 fis e d cis b
  | \tag #'printed { a4\trill } \tag #'played { \tuplet 5/4 { b32 a b a b } a8 } a'8
  %5
  | e16( b'cis) a b d
  | e,16( cis'd) b cis e
  | a,16( d e) cis d fis
  | \tag #'printed { \appoggiatura cis8 b4 } \tag #'played { cis8 b } e8
  | a8.^\scrCourtMordentRight gis32 fis e d cis b
  %10
  | \nachschlag\appoggiatura b8 cis8~ cis32 b cis d cis b a gis
  | \nachschlag\appoggiatura gis8 a8. gis32 fis e d cis b
  | \tag #'printed { a4\trill } \tag #'played { \tuplet 5/4 { b32 a b a b } a8 } e''8
  | fis16( cis d) fis b,d
  | gis16( cis,d) fis b,d
  %15
  | a'16( cis,d) fis b,d
  | b'8~ b32 a gis fis e d cis b
  | cis16( e gis) b a fis
  | dis16( e32 fis) e8. d16
  | cis16( a gis) b a fis
  %20
  | dis16( e32 fis) e8. fis32 gis
  | a16( b32 cis) d8. cis32 b
  | cis16( d32 e) fis8. e32 d
  | e16( fis32 gis) a8-! \tag #'printed { b,8\trill } \tag #'played { \tuplet 6/4 { cis32 b cis b cis b } }
  | a4 e'8
  %25
  | \tag #'printed { \appoggiatura d8 cis4. ~ } \tag #'played { d16 cis4~ cis16 ~ }
  | cis8. d32 e d cis b16
  | \tag #'printed { \appoggiatura b8 \once \tieUp a4. ~ } \tag #'played { b16 a4~ a16 ~ }
  | a8. a32( b cis d e16)
  | fis16 gis \tag #'printed { gis16\trill } \tag #'played { a64 gis a gis } fis32 gis a8 ~
  %30
  | a16 gis32 a b a gis fis e16. d32
  | \tag #'printed { \appoggiatura d8 cis4. ~ } \tag #'played { d16 cis16 ~ cis4 ~ }
    \hideTupletBracket \tupletUp
  | cis8. \tuplet 3/2 { cis32 d e} d16 cis
  | \tag #'printed { cis16(^\prall } \tag #'played { \tuplet 3/2 { d64 cis d } cis32( } b16) b( dis) dis( e)
  | a,8._[ \tuplet 3/2 { a32 b cis } b16 a]
  %35
  | \tag #'printed { a16(^\prall } \tag #'played { \tuplet 3/2 { b64 a b } a32( } gis16) \shapeSlurA gis( dis') dis( e)
  | fis,8. \tuplet 3/2 { fis32 gis a } gis16 fis
  | e16 dis32 e fis gis a b cis8 ~
  | cis16[ b] \tag #'printed { \appoggiatura e8 dis8.^\scrCourtPrall } \tag #'played { e16 dis8 } e16
  | e,4.\hideFF ~
  %40
  | e4 \tag #'printed { \once \stemUp b'8\turn } \tag #'played { cis32-\hideMF b a b }
  | \alignBeamQtr cis16( gis a) cis fis,a
  | dis16( gis,a) cis fis,a
  | e'16(_[ gis, a) cis fis,a]
  | \tag #'printed { \appoggiatura a16 fis'8 ~ } \tag #'played { fis8-\hideFF ~ } fis32 e-\hideMF dis cis b a gis fis
  %45
  | \tag #'printed { \appoggiatura fis8 gis4. ~ } \tag #'played { fis16 gis16 ~ gis4 ~ }
  | gis8. a32 b a gis fis16
  | \tag #'printed { \appoggiatura fis8 e4. ~ } \tag #'played { fis16 e16 ~ e4 ~ }
  | e8. e32 fis gis a b16
  | cis16 dis \tag #'printed { dis\prall } \tag #'played { e64 dis e dis } cis32 dis e8 ~
  %50
  | \lessBeamSlant e16 dis32 e fis e dis cis b16 a
  | \tag #'printed { \appoggiatura a8 gis4. ~ } \tag #'played { a16 gis16~ gis4 ~ }
  | gis8. e16 \tag #'printed { e32\prall } \tag #'played { fis64 e } dis32 e16
  | b16 fis'( gis e fis a)
  | \lessBeamSlant b,16 gis'( a fis gis b)
  %55
  | \lessBeamSlant e,16 a( b gis a cis)
  | \tag #'printed { \appoggiatura gis8 fis4 } \tag #'played { gis8 fis8 } \once\stemUp b8
  | \tag #'printed { b4.\prallprall ~ } \tag #'played { \scaleDurations 1/3 \repeat unfold 9 { cis16-\hidePPP b }  }
  | \tag #'printed { b4. ~ } \tag #'played { \scaleDurations 1/3 \repeat unfold 9 { cis16 b } }
  | \tag #'printed { b4.^~ } \tag #'played { \scaleDurations 1/3 { \repeat unfold 8 { cis16 b } cis b ~ } }
  %60
    \setBeatStructureEigth 
  | \tuplet 3/2 8 { b16 e,-\hideMP fis gis a b b cis d }
  | \tuplet 3/2 8 { cis16 fis,gis a b cis cis dis e }
  | \tuplet 3/2 8 { dis16_[ gis,a] b cis dis dis e fis }
    \setBeatStructureHalf
  | \tag #'printed { \nachschlag\appoggiatura fis8 e8. } \tag #'played { fis16 e8 } dis32( e fis e dis16)
  | \tag #'printed { \appoggiatura dis8 e8. } \tag #'played { dis16 e8 } e32( fis g fis e16)
  %65
  | \tag #'printed { \appoggiatura e8 d!8. } \tag #'played { e16 d8 } cis32( d e d cis16)
  | \tag #'printed { \appoggiatura cis8 d8. } \tag #'played { cis16 d8 } d32( e fis e d16)
    \setBeatStructureEigth
  | \tuplet 3/2 8 { cis16 a'gis fis e dis dis cis b }
  | \tuplet 3/2 8 { b16 gis'fis e dis cis cis b a }
  | \tuplet 3/2 8 { a16 fis'e dis cis b b a gis }
    \setBeatStructureHalf
  %70
  | gis8. ais32 b cis b ais16
  | g'16 fis8 e32 dis e16 cis
  | ais16 b32 cis b4 ~
  | b4 r8
  | r \tag #'printed { b,8.\mordent } \tag #'played { \tuplet 3/2 { b32 a b~ } b8 } cis32 dis
  %75
  | e16 fis32 gis a8. gis32 fis
  | \stemDown gis16 a32 b cis8. b32 a
  | b16 cis32 dis e8-! \tag #'printed { fis,8\turn } \tag #'played { gis32 fis e fis }
  | \stemUp e4 b'8
  | e8. dis32 cis b a gis fis \stemNeutral
  %80
  | gis8~ gis32 fis gis a gis fis e dis
  | \tag #'printed { \nachschlag\appoggiatura dis8 \lessBeamSlant e8. } \tag #'played { dis16 e8 } dis!32 cis b \staffDown a gis fis
  | \once\stemUp \longerStem e8 \staffUp r b''
  | \tag #'printed { b4.\prallprall ~ } \tag #'played { \scaleDurations 1/3 \repeat unfold 9 { cis16-\hidePPPP b }  }
  | \tag #'printed { b4. ~ } \tag #'played { \scaleDurations 1/3 { \repeat unfold 8 { cis16 b } cis b ~ } }
  %85
  | b16 cis32-\hideMF d e( d) cis16 d32( cis) b16
  | cis16_[ a gis a cis8-!]
  | \tag #'printed { \shapeSlurB cis4.\prallprall ~ } \tag #'played { \scaleDurations 1/3 \repeat unfold 9 { d16-\hidePPPP cis }  }
  | \tag #'printed { \shapeSlurB cis4. ~ } \tag #'played { \scaleDurations 1/3 { \repeat unfold 8 { d16 cis } d cis ~ } }
  | cis16 d32-\hideMF e fis( e) d16 e32( d) cis16
  %90
  | d16_[ b( ais b) fis b32 cis]
  | d16[( cis32 b]) \tag #'printed { \nachschlag\appoggiatura b8 gis'8. } \tag #'played { b,16 gis'8 } b,16
  | a16( gis32 fis) fis'8.[^\scrCourtMordent e16]
    \setBeatStructureEigth
  | \tuplet 3/2 8 { d16-! cis-! b-! a-! gis-! fis-! eis fis gis }
  | \tag #'printed { \setUpPrallSpanner \shapeSlurC cis,4.\startTrillSpan ~ } \tag #'played { \scaleDurations 1/3 { b16-\hidePPPP cis \repeat unfold 8 { d cis } } }
  %95
  | \tag #'printed { \shapeSlurC cis4.\stopTrillSpan ~ } \tag #'played { \scaleDurations 1/3  \repeat unfold 9 { d16 cis } }
  | \tag #'printed { \shapeSlurC cis4. ~ } \tag #'played { \scaleDurations 1/3  \repeat unfold 9 { d16 cis } }
  | \tag #'printed { \shapeSlurC cis4. ~ } \tag #'played { \scaleDurations 1/3 { \repeat unfold 8 { d16 cis } d cis ~ } }
  | \tuplet 3/2 8 { cis16 fis-\hideMF eis fis gis a a gis fis }
  | \tuplet 3/2 8 { d'16 fis,eis fis gis a a gis fis }
  %100
  | \tuplet 3/2 8 { eis'fis,eis fis gis a a gis fis }
  | \tuplet 3/2 8 { fis'16 eis fis b a gis }
        <<{ \hideNotes b'8\rest \unHideNotes }  %{ between-staff spacer %}  
        \\{ \tuplet 3/2 8 { a,16 gis fis] } }>>
  | \tuplet 3/2 8 { eis16 dis cis d cis b cis b a }
  | \tag #'printed { \appoggiatura gis8 fis ~ } \tag #'played { gis16 fis16 ~ } \tuplet 3/2 8 { fis16 eis fis g fis eis! }
  | \tag #'printed { \nachschlag\appoggiatura eis8 fis8 ^~ } \tag #'played { eis16 fis16 ~ } \tuplet 3/2 8 { fis16_[ cis'd] e! d cis }
  %105
  | \tag #'printed { \nachschlag\appoggiatura cis8 d8 ~ } \tag #'played { cis16 d16 ~ } \tuplet 3/2 8 { d16 fis,gis a gis fis }
  | \tag #'printed { \nachschlag\appoggiatura fis8 eis8 ~ } \tag #'played { fis16 eis16 ~ } \tuplet 3/2 8 { eis b'cis d cis b }
  | \tag #'printed { \nachschlag\appoggiatura b8 gis'8 ~ } \tag #'played { b,16 gis'16 ~ } \tuplet 3/2 8 { gis16 cis,dis eis fis gis }
  | \tuplet 3/2 8 { a16 gis fis } \tag #'printed { \appoggiatura fis8 g8.[ } \tag #'played { fis16 g8 } fis32 eis]
  | \tuplet 3/2 8 { fis16 e! d } \tag #'printed { \appoggiatura d8 cis8.[ } \tag #'played { d16 cis8 } fis32 e]
  %110
  | \tuplet 3/2 8 { d16 cis b a gis fis b a gis }
    \setBeatStructureHalf
  | \alignBeamSix fis16 eis fis a d,fis
  | b fis gis b e,! gis
  | \alignBeamQtr cis16 gis ais cis fis,ais
  | d8^[ ~ d32 e d cis b a! gis fis]
  %115
  | \alignBeamSix gis16 dis e gis cis,e
  | \alignBeamSix a16 e fis a d,fis
  | b16 fis gis b e,gis
  | cis8 r cis
  | \tuplet 3/2 { dis16[ e fis] } a,8. gis32 fis
  %120
  | \tuplet 3/2 { gis16[ bis dis] } fis8. e32 dis
  | \tuplet 3/2 { e16[ fis gis] } b,!8. a32 gis
  | \tuplet 3/2 { a16[ cis e] } gis8. fis32 e
  | \tuplet 3/2 { fis16[ gis a] } cis,8. bis32 ais
  | \tuplet 3/2 { bis16[ dis fis] } a!8. gis32 fis
  %125
    \setBeatStructureEigth
  | \tuplet 3/2 8 { gis16 fis e dis e fis e dis cis }
    \setTrillSpanner
  | \tag #'printed { \shapeSlurC gis4.\startTrillSpan ~ } \tag #'played { \scaleDurations 1/3 { \repeat unfold 9 { a16-\hidePPPP gis } } }
  | \tag #'printed { \shapeSlurC gis4.\stopTrillSpan ~ } \tag #'played { \scaleDurations 1/3 { \repeat unfold 9 { a16 gis } } }
  | \tag #'printed { \shapeSlurC gis4.~ } \tag #'played { \scaleDurations 1/3 { \repeat unfold 9 { a16 gis } } }
  | \tag #'printed { \shapeSlurC gis4.~ } \tag #'played { \scaleDurations 1/3 { \repeat unfold 8 { a16 gis } a gis ~ } }
  %130
  | \tuplet 3/2 8 { gis16-\hideMF fis eis fis gis a b cis d }
  | \tuplet 3/2 8 { e16 cis d } a8.[ cis32 d]
  | \tuplet 3/2 8 { fis16 cis d a cis d fis,_[ cis'd] }
  | \tuplet 3/2 8 { e16 cis d } a8.[ cis32 d]
  | \tuplet 3/2 8 { fis16 cis d a cis d fis,_[ cis'dis] }
  %135
  | \tuplet 3/2 8 { e16 fis gis } 
    << { \hideNotes e''8\rest \unHideNotes } \\  %{ <-------- Spacer between staves  %}
       { \tuplet 3/2 8 { \tupletUp a,,16[ gis fis] } } >>
       \tag #'printed { \appoggiatura fis8 gis ~ } \tag #'played { fis16 gis ~ }
  | \tuplet 3/2 8 { gis16 fis e dis e fis bis,cis dis }
    \setBeatStructureHalf
  | << { \hideNotes e'4.\rest \unHideNotes } \\  %{ <-------- Spacer between staves  %}
       { gis,,16 cis e8^! \tag #'printed { dis^\turn } \tag #'played { e32 dis cis dis } } >>
  | cis4 e8
  | a8.^\scrCourtMordentRight gis32( fis e d cis b)
  %140
  | \tag #'printed { \nachschlag\appoggiatura b8 cis ~ } \tag #'played { b16 cis ~ } cis32 b( cis d cis b a gis)
  | \tag #'printed { \nachschlag\appoggiatura gis8 a8. } \tag #'played { gis16 a8 } gis32 fis e d cis b
  | a4^\scrCourtPrall a'8
  | \stemDown e16( b' cis) a b d
  | e,16( cis'd) b cis e
  %145
  | a,16( d e) cis d fis
  | \tag #'printed { \nachschlag\appoggiatura cis8 b4 } \tag #'played { cis8 b8 } e8
  | \tag #'printed { \appoggiatura d8 \shapeSlurB cis4.~ } \tag #'played { d16 cis4~ cis16 ~ }
  | cis8. d32 e d cis b16
  | \tag #'printed { \nachschlag\appoggiatura b8 \shapeSlurB \once\stemUp a4.^~ } \tag #'played { b16 a4~ a16~ }
  %150
  | a8. a32 b cis d e16
  | fis16 gis \tag #'printed { gis\prall } \tag #'played { \tuplet 3/2 { gis32 fis gis } } fis32 gis a8~
  | a16 gis32 a b a gis fis e16. d32
  | \tag #'printed { \appoggiatura d8 \shapeSlurB cis4.~ } \tag #'played { d8 cis4 ~ }
    \setBeatStructureEigth \stemNeutral
  | \tuplet 3/2 8 { \lessBeamSlant cis16 a, b cis d e e fis g
  %155
  | fis b,cis d e fis fis gis! a
  | gis cis,d e fis gis gis a b } %end tuplets
    \setBeatStructureHalf
  | \tag #'printed { \nachschlag\appoggiatura b8 a8. } \tag #'played { b16 a8 } gis32 a b a gis16
  | \tag #'printed { \nachschlag\appoggiatura gis8 a8. } \tag #'played  { gis16 a8 } a32 b c b a16
  | \tag #'printed { \nachschlag\appoggiatura a8 g8. }  \tag #'played  { a16 g8 } fis32 g a g fis16
  %160
  | \tag #'printed { \nachschlag\appoggiatura fis8 g8. }  \tag #'played  { fis16 g8 } g32 a b a g16
    \setBeatStructureEigth
  | \tuplet 3/2 8 { fis16 d'cis b a gis! gis fis e
  | e16 cis'b a gis fis fis e d
  | d16 b'a gis fis e e d cis } % end tuplets
    \setBeatStructureHalf
  | cis8.^\scrCourtMordentRight dis32 e fis e dis16
  %165
  | c'16 b8 a32 gis! a16 fis
  | dis16 e32 fis e4~
  | e4 r8
  | r8 r \shapeSlurH e'^\scrCourtMordentRight ~
    \setBeatStructureEigth
  | \tuplet 3/2 8 { e16 cis d e fis gis a gis a }
  %170
  | \tag #'printed { \nachschlag\appoggiatura e8 d8.[ } \tag #'played { e16 d8 } d32 e fis e d16]
  | \tuplet 3/2 8 { d16 cis b \alignBeamSep cis e gis a gis a }
    \setBeatStructureHalf
  | \tag #'printed { \nachschlag\appoggiatura cis,8 b8. } \tag #'played { cis16 b8 } b32 cis d cis b16
  | a16 gis32 a b cis d e fis8~
  | fis16[ e] \tag #'printed { \nachschlag\appoggiatura a,8 gis8. } \tag #'played { a16 gis8 } a16
  %175
  | \shapeSlurH a4.^~
  | a16 cis e b cis e
  | a8. gis32 fis e d cis b
  | \tag #'printed { \nachschlag\appoggiatura b8 cis8_[ ~ }  \tag #'played { b16 cis16 ~ } cis32 b cis d cis b a gis]
  | \tag #'printed { \nachschlag\appoggiatura gis8 a8. } \tag #'played { gis16 a8 } gis32 fis e d cis b
  %180
  | \tag #'printed { a4\trill } \tag #'played { \tuplet 5/4 { gis32 a gis a gis } a8 } a'8
  | \stemDown e16( b' cis) a b d
  | e,16( cis' d) b cis e
  | a,16( d e) cis d fis
  | \tag #'printed { \appoggiatura cis8 b4\trill } \tag #'played { cis16 \tuplet 5/4 { b32 cis b cis b } cis16 } e8
  %185
  | a8.^\scrCourtMordentRight gis32 fis e d cis b
  | \tag #'printed { \nachschlag\appoggiatura b8 cis8~ } \tag #'played { b16 cis~ } cis32 b cis d cis b a gis
  | \stemNeutral a8. gis32 fis e d cis b
  | \tag #'printed { a4\trill } \tag #'played { \tuplet 5/4 { b32 cis b cis b } cis8 } e'8
  | fis16( cis d) fis b,d
  %190
  | gis16( cis,d) fis b,d
  | a'16( cis,d) fis b,d
  | \tag #'printed { \nachschlag\appoggiatura d8 b'8~ } \tag #'played { d,16 b'16 ~ } b32 a gis fis e d cis b
  | cis16( e gis) b a fis
  | dis16( e32 fis) e8. d16
  %200
  | cis16 a gis b a fis
  | dis16 e32 fis e8. fis32 gis
  | a16( b32 cis) d8. cis32 b
  | cis16( d32 e) fis8. e32 d
  | e16( fis32 gis) a8-! \tag #'printed { b,8\turn } \tag #'played { cis32 b a b }
  %210
  | a4*3/2\fermata-\hideFF |
}

lowerKeyb = \relative c {
    \partial 8 a8
  | a'8( a gis)
  | a8( a e)
  | fis8-! d-! e-!
  | a,16 b cis d e fis
  %5
  | gis8( fis gis)
  | a8( gis a)
  | fis8( a d,)
  | e16 fis e d cis b
  | a8( a gis)
  %10
  | a8( a e)
  | fis8 d e
  | a16 gis a b cis a
  | d8 d,d'
  | e8 e,e'
  %15
  | fis8 fis,fis'
  | gis8 gis,gis'
  | a8( a a)
  | a8 gis16 fis gis e
  | \lessBeamSlant a8 a,a
  %20
  | a8 gis16 fis e d!
  | cis8 fis gis
  | a d,d'
  | a'cis,e
  | a,4 a'8
  %25
    \clef treble
  | a'8( a a)
  | e8( e e)
  | fis8( fis fis)
  | cis8( cis cis)
  | d8( d cis)
  %30
  | b8[ e] \clef bass e,
  | \alignBeamQtr a,16( cis e) b cis e
  | a8 e'a
  | gis8( fis e)
  | fis8( e dis)
  %35
  | e8( cis b)
  | a8( fis a)
  | b8( b a)
  | gis8( a) b,
  | e,16( gis b) fis gis b
  %40
  | e16 dis e fis gis e
  | a8 a,a'
  | b8 b,b'
  | cis8 cis,cis'
  | dis8 dis,dis'
  %45
  | e8( e e)
  | b8( b b)
  | cis8( cis cis)
  | gis8( gis gis)
  | a8( a gis)
  %50
  | \lessBeamSlant fis8 b b,
  | e,16( gis b) fis gis b
  | e8^[( dis cis])
  | dis8 cis dis
  | e8 dis e
  %55
  | cis8_[ e a,]
  | b16 fis'b a gis fis
  | gis8 e dis
  | e8 e,fis
  | gis8 a b
  | e,8 r gis
  %60
  | a8 r fis
  | b8 r gis
    \setBeatStructureHalf
  | cis8 cis'bis
  | cis8 ais fis
  | b,8 b'ais
  %65
  | b8 gis e
  | a,8 r fis'
  | gis,8 r e'
  | fis,8 r \once\stemUp dis'
  %70
  | e,8 r e''
  | ais,8 b g
  | cis,8 dis b
  | e8( e e)
  | e8 dis16 cis b a
  %75
  | gis8 fis b
  | e,8 a fis
  | gis8 r16 gis'a b
  | e,16 b e dis e fis
  | gis8 e dis
  %80
  | e8 e,fis
  | gis8 a b
  | \shiftOn \alignBeamTre e,16( gis b) fis gis b
  | e8 e'e
  | d8 d d
  %85
  | cis8 cis,e
  | a,8 a'gis
  | fis8 fis'fis
  | e8 e e
  | d8 d, fis
  %90
  | b,8 b'd
  | eis,8 r cis
  | fis8 r fis,
  | b8 cis d
  | eis,16 gis( cis b a gis)
  %95
  | a8 fis eis
  | fis8 fis gis
  | a8 b cis
  | fis,8 a fis
  | b8 r r
  %100
  | cis8 r r
  | d8 r r
  | cis8 r b
  | ais8 ais' r
  | fis,8 fis' r
  %105
  | b,8 b'r
  | gis,8_[ gis'] r
  | \stemDown cis,8 eis cis
  | fis8 b cis
  | d8 a fis
  %110
  | b8 cis cis,
  | fis,8 fis'16 eis \shapeSlurD fis8 ~
  | fis8 e!16 dis \shapeSlurD e8 ~ \stemNeutral
  | e8 cis fis
  | b,8 cis d
  %115
  | cis,8 e'16 dis \shapeSlurE e8 ~
  | e8^[ d!16 cis \shapeSlurE d8] ~
  | d8 b e
  | a,8 a'gis
  | fis8 r dis
  %120
  | bis8 r gis
  | cis8 r cis
  | cis,8 r cis'
  | dis8 r dis
  | dis,8 r dis'
  %125
  | e8 a fis
  | gis16 a gis fis e dis
  | cis8 r r
  | dis8 r r
  | e8 r r
  %130
  | fis8 fis,( fis)
  | r8 fis( fis)
  | r8 fis( fis)
  | r8 fis( fis)
  | r8 fis'^[ bis,]
  %135
  | cis8 r bis
  | cis8 r dis
  | e16_[ fis gis8 gis,]
  | cis16 gis'cis d cis b
  | a8( a gis)
  %140
  | a8( a e)
  | fis8 d e
  | a,16_[ b cis d e fis]
  | gis8( fis gis)
  | a8( gis a)
  %145
  | fis8( a d,)
  | e16 fis e d cis b
  | a8 a'( a)
  | e8 e' e
  | fis,8 fis'fis
  %150
  | cis,8 cis'cis
  | d,8 d'cis
  | b8_[ e,e,]
  | \alignBeamQtr a16( cis e) b cis e
  | a8 r cis,
  %155
  | d8 r b
  | e8 r cis
  | fis,8 fis'eis
  | fis^[ dis b]
  | e,8 e'dis
  %160
  | e8 cis a
  | \once\stemUp d8 r b
  | cis8 r a
  | b8 r gis
  | a8 r a'
  %165
  | dis,8 e c'
  | fis,8 gis e
  | a8( a a)
  | a8 gis16 fis e d
  | cis8 r r
  %170
  | b8 r r
  | a8 r r
  | d8 r r
  | d8 r r
  | cis8 d e
  %175
  | a,8 a'e
  | cis8 a r
  | a8 a'( gis)
  | a8( a e)
  | fis8-! d-! e-!
  %180
  | a,16_[ b cis d e fis]
  | gis8( fis gis)
  | a8( gis a)
  | fis8( a d,)
  | e16 fis e d cis b
  %185
  | a8( a gis)
  | a8( a e)
  | fis8 d e
  | \alignBeamSix a16 gis a b cis a
  | d8 d,d'
  %190
  | e8 e,e'
  | fis8 fis,fis'
  | gis8 gis,gis'
  | a8( a a)
  | a8 gis16 fis gis e
  %200
  | \lessBeamSlant a8 a,( a)
  | a8 gis16 fis e d!
  | cis8 fis gis
  | a8 d,d'
  | a'8 cis,e
  %210
  | a,4*3/2\fermata-\hideFF
  | \bar "|."
}

figuredKeyb = { }
