\version "2.12.3"

 guitartwo = {
 \set Staff.instrumentName = \markup {\fontsize #3.0 "Guitar "}
 \override Script #'padding = #1.0
 \clef "G_8"
 \key d \minor
 \time 4/4
% \set fontSize = #-3 \once \override Stem #'length = #4 
% \set fontSize = #-2 \once \override Stem #'length = #5 
% \normalsize a4
  \repeat volta 2 {
    %1-4
    f4\p f8. f16 f4. f8 |
    g4 g8. g16 g4. g8 |
    f4 f8. f16 f4. f8 |
    e4 e8. e16 e4 r4
    %5-8
    <<{d'4 d'8. d'16 d'8 d'8 d'8 d'8} \\ {a4\mf a8.\p\< a16 a2}|>>
    <<{c'4 c'8.\p\< c'16 c'8 d'16 d'16 d'8 d'8\!} \\ {a4\f a8. a16 a2}|>>
    <<{d'4 d'8. d'16 d'8 d'16 d'16 d'8. d'16} \\ {bes4\ff bes8. bes16 bes2}|>>
    <<{cis'4\ff cis'8. cis'16 <cis' g'>2} \\ {bes4 bes8. bes16 <bes d>2}|>>
    %9-12
    <<{d'8 s8 s4 s4 s8 d'8} \\ {a8\mf b8\rest b4\rest b4\rest b8\rest d'8\sf}|>> \noPageBreak
    cis'8\p[ cis'8 cis'8] d'8\sf cis'8[\p cis'8 cis'8] d'8\sf |
    cis'8\p\< c'8 c'8 c'8 a2\!|
    <<{c'8 s8 b8 s8 a4} \\ {a8\sf b8\rest gis8\p b8\rest a4}>> r4 |
    }
%    \alternative {{<<{c'8 r8 b8 r8 a4 r4} \\ {a8\sf s8 gis8\p s8 a4 s4}|>>}
%                  {<<{c'8 r8 b8 r8 a4 r4} \\ {a8\sf s8 gis8\p s8 a4 s4}|>>}
%                 }
    %13-16
    a4\p a8. a16 a4. a8 |
    bes4 bes8. bes16 bes4. bes8 |
    aes4 aes8. aes16 aes4. aes8 |
    aes4\ff aes8. aes16 aes8\noBeam beses8^\accent\sf([ aes8)] aes8 |
    %17-20
    aes4\ff aes8. aes16 aes8\noBeam beses8^\accent\sf([ aes8)] aes8 |
    aes4\ff aes8. aes16 aes8\noBeam beses8^\accent\sf([ aes8)] aes8 |
    <<{b4\ff b8. b16 b4. b8} \\ {gis4 gis8. gis16 gis4. gis8}|>>
    a4\ff a8. a16 a4. a8 |
    %21-24
    bes4\ff bes8. bes16 bes4. bes8 |
    <<{b4 b8. b16 b8\noBeam c'^\accent\sf([ b)] b8} \\ {g4\ff g8. g16 g4.\noBeam g8}|>>
    <<{a4 a8. a16 a8\noBeam} \\ {fis4\ff fis8. fis16 fis8}>> c'8^\accent\sf([ b8) dis'8] |
    <<{b4 b8. b16 b8} \\ {g4\ff g8. g16 b8\p}>> r8 r4 |
    %25-28 
    <<{c'4 c'8. c'16 c'4. c'8} \\ {a4\sf a8.\p a16 a4. a8}|>>
    <<{cis'4 cis'8. cis'16 cis'4. cis'8} \\ {g4\sf g8.\p g16 g4. g8}|>>
    <<{cis'4 cis'8. cis'16 cis'4. cis'8} \\ {g4\sf g8.\p g16 g4. a8}|>>
    <<{d'4 d'8. d'16 d'4. d'8} \\ {a4\sf a8.\p a16 a8\noBeam bes8_\accent([\sf a8) a8]\p}|>>
    %29-32
    bes2_\markup{\hspace #3 \dir-column{ \italic \small {\null cresc. }}} b2 |
    <<{cis'4} \\ {a4\f}>> a8.\p a16 a8. gis16\f gis8. gis16 |
    <<{cis'4} \\ {a4\f}>> a8.\p a16 a8. gis16\f gis8. gis16 |
    <<{cis'4} \\ {a4}>> a8. a16 a4 r4 |
    %33-36
    f4\p f8. f16 f4. f8 |
    g4 g8. g16 g4. g8 |
    f4 f8. f16 f4. f8 |
    e4 e8. e16 e4 r4
    %37-40
    <<{d'4 d'8. d'16 d'8 d'8 d'8 d'8} \\ {a4\mf a8.\p\< a16 a2}|>>
    <<{c'4 c'8.\p\< c'16 c'8 d'16 d'16 d'8 d'8\!} \\ {a4\f a8. a16 a2}|>>
    <<{d'4 d'8. d'16 d'8 d'16 d'16 d'8. d'16} \\ {bes4\ff bes8. bes16 bes2}|>>
    <<{cis'4\ff cis'8. cis'16 <cis' g'>2} \\ {bes4 bes8. bes16 <bes d>2}|>>
    %41-44
    <<{d'8 s8 s4 s4 s8 d'8} \\ {a8\mf b8\rest b4\rest b4\rest b8\rest d'8\sf}|>>
    cis'8[\p cis'8 cis'8] d'8\sf cis'8[\p cis'8 cis'8] d'8\sf |
    cis'8\p\< cis'8 cis'8 cis'8 b2\! |
    a8\sf r8 <<{cis'8} \\ {a8\p}>> r8 d'8 r8 r8 <<{cis'8} \\ {bes8\sf}|>>
    %45-48
    <<{d'8} \\ {a8\p}>> r8 r8 <<{cis'8} \\ {bes8\sf}>> <<{d'8} \\ {a8\p}>> r8 r8 <<{cis'8} \\ {bes8\sf}|>>
    <<{d'8} \\ {a8}>> bes8^\accent([\sf a8)] r16. d'32 d8 bes8^\accent([\sf a8)] r16. d32 | 
    d'8 bes8^\accent([\sf a8)] r16. d32\pp d8 g16.\rest d32 d8 g16.\rest <<{<d>32~ | d4} \\ {s32 | <d\harmonic>4}>>  r4 r2\fermata |
}
