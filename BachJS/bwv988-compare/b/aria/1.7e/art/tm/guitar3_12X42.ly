\version "2.12.3"

 guitarthree = {
 \set Staff.instrumentName = ""
 \clef  "G_8"
% \clef  "bass"
 \key d \minor
 \time 4/4 
 \repeat volta 2 {
    %1-4
    \stemDown d4\p d8. d16 d4. d8 |
    cis4 cis8. cis16 cis4. cis8 |
    d4 d8. d16 d4. d8 |
    <cis a,>4 <cis a,>8. <cis a,>16 <cis a,>4 e4\rest 
    %5-8
    <d a d' f'>4\mf\arpeggio d8.\p\< d16 d8 d8 d4 |
    <d a c' fis'>4\f\arpeggio d8.\p\< d16 d8 d8 d8 d8\! |
    <d bes d' g'>4\ff\arpeggio d8. d16 <d bes d' g'>8\arpeggio d16 d16 d8 d8 |
    <d bes cis' g'>4\ff\arpeggio d8. d16 <d bes cis' g'>8\>\arpeggio d16 d16 <d bes cis' g'>8.\arpeggio d16 |
    %9-12
    <d a d' f'>8\mf\arpeggio a,8 <d a d' f'>8\arpeggio a,8-. d4-.\p e8\rest d16(\sf f16) |
    a8\p[ a8 a8] d16(\sf f16) a8\p[ a8 a8] d16(\sf f16) |
    a8\p\< a8 a8 a8 f2\! |
    e8\sf d8\rest e,8\p d8\rest a,4 e4\rest |
    }
%    \alternative {{e8\sf r8 e,8\p r8 a,4 r4}
%                  {e8\sf r8 e,8\p r8 a,4 r4}
%                 }
    %13-16
    f4\p f8. f16 f4. f8 |
    e4 e8. e16 e4. e8 |
    f4 f8. f16 f4. f8 |
    <des f>4\ff <des f>8. <des f>16 <des f>4. <des f>8 |
    %17-20
    c4\ff c8. c16 c4. c8 |
    des4\ff des8. des16 des4. des8 |
    d4\ff d8. d16 d4. d8 |
    c4\ff c8. c16 c4. c8 |
    %21-24
    c4\ff c8. c16 c4. c8 |
    b,4\ff b,8. b,16 b,4. b,8 |
    b,4\ff b,8. b,16 b,8\noBeam d8\rest d4\rest |
    e,4\ff e,8. e,16 e,8-.\p e,8-. e,8-. e,8-. |
    %25-28
    a,4\sf a,8.\p a,16 a,4. a,8 |
    bes,4\sf bes,8.\p bes,16 bes,4. bes,8 |
    a,4\sf a,8.\p a,16 a,4. a,8 |
    d4\sf d8.\p d16 d4. d8 |
    %29-32
%    g,2 gis,2 |
    g,2 _\markup{ \hspace #3 \dir-column{ \italic \small { cresc. }}} gis,2 |
    a,4\f a,8.\p a,16 a,8. a,16\f a,8. a,16 |
    a,4\f a,8.\p a,16 a,8. a,16\f a,8. a,16 |
    a,4 a,8. a,16 a,4 e4\rest |
    %33-36
    \stemDown d4\p d8. d16 d4. d8 |
    cis4 cis8. cis16 cis4. cis8 |
    d4 d8. d16 d4. d8 |
    <cis a,>4 <cis a,>8. <cis a,>16 <cis a,>4 e4\rest 
    %37-40
    <d a d' f'>4\mf\arpeggio d8.\p\< d16 d8 d8 d4 |
    <d a c' fis'>4\f\arpeggio d8.\p\< d16 d8 d8 d8 d8\! |
    <d bes d' g'>4\ff\arpeggio d8. d16 <d bes d' g'>8\arpeggio d16 d16 d8 d8 |
    <d bes cis' g'>4\ff\arpeggio d8. d16 <d bes cis' g'>8\>\arpeggio d16 d16 <d bes cis' g'>8.\arpeggio d16 |
    %41-44
    <d a d' f'>8\mf\arpeggio a,8 <d a d' f'>8\arpeggio a,8-. d4-.\p e8\rest d16(\sf f16) |
    a8\p[ a8 a8] d16(\sf f16) a8\p[ a8 a8] d16(\sf f16) |
    a8\p\< g8 g8 g8 gis2\! |
    <a a,>8\sf e8\rest a,8\p e8\rest d8\< d16 d16 d8 d8\sf |
    %45-48
    %45-48
    d8\p\< d16 d16 d8 d8\sf d8\p\< d16 d16 d8_\markup \column
                     {
                     \null
                     \null
                     \null
                     \translate #'(11 . 0) \epsfile #Y #37 #'"logo_12X42.eps"
                    }
    d8\sf |
    d8 f8\rest f8\rest f16.\rest d32 d8 f8\rest f8\rest f16.\rest d32 |
    d8 f8\rest f8\rest f16.\rest d32\pp d8 f8\rest f8\rest f16.\rest d32 |
    d4 r4 r2\fermata
}
