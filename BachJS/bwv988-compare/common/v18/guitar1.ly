\version "2.18.0"

 guitarone = \relative c''' {
 \set Staff.instrumentName = "Gtr1 "
 \repeat volta 1 {
    r2 \TIne g2 ~
    g2 fis ~
    fis4 g8 fis \TIne e2 ~
    e4 d8 cis d2
    r2 \TIne e2 ~
    e4 d8 e \TInb fis2 ~
    fis4 a8 g a2 ~
    a8 g a fis g2
    r2 \TIne e2 ~ %9
    e2 d ~
    d4 e8 fis \TIne g2 ~
    g8 fis g e \TInb fis2 ~
    fis4 fis \TIne e2 ~
    e4 e d2 ~
    d4 g cis,8 d \TInh e4 ~
    e2 d
 }        

 \repeat volta 1 {
    r2 \TIne a2 ~
    a2 g ~
    g4 a8 b \TIne c2 ~
    c8 b c4 b2
    r2 \TIne e2 ~
    e2 dis4 e
    fis2. e8 fis
    \TInb g2 ~ g8 fis e d
    c4 r \TIne a2 ~
    a2 g ~
    g4 a8 b \TIne c2 ~
    c8 b c a b2 ~
    b4 b \TInb a2 ~
    a4 a g2 ~
    g4 c fis,8 g \TInb a4 ~
    a2 g
 }
}
