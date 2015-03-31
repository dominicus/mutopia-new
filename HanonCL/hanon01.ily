\version "2.18.0"

\include "hanon-definitions.ily"

lblExNum = \markup \bold \huge "1."

RH = \relative c {
  \tempo \metMark
  \repeat volta 2 {
  \staffDown \stemUp \subdivideBeams
  c16\mf^"ascending" e f g a g f e 
  d f g a b a g f 
  e g a b c b a g 
  f a b c d c b a 
  g b c d e d c b 
  \beamLessSlant a c \staffUp d e f e d c 
  b d e f g f e d 
  c e f g a g f e 
  d f g a b a g f 
  e g a b c b a g 
  f a b c d c b a
  \stemNeutral
  g b c d e d c b 
  a c d e f e d c 
  b d e f g f e d 
  \bar "||"
  g^"descending" e d c b c d e 
  f d c b a b c d 
  e c b a g a b c 
  d b a g f g a b 
  c a g f e f g a 
  b g f e d e f g 
  a f e d c d e f 
  g e d c b c d e 
  \beamLessSlant f d c \staffDown \stemUp b a b c d 
  e c b a g a b c 
  d b a g f g a b 
  c a g f e f g a 
  b g f e d e f g 
  a f e d c d e f 
  g e d c b c d e 
  }
  c2
  \bar "|."
}

LH = \relative c, {
  \stemDown \subdivideBeams
  \repeat volta 2 {
  c16 e f g a g f e 
  d f g a b a g f 
  e g a b c b a g 
  f a b c d c b a 
  g b c d e d c b 
  a c d e f e d c 
  b d e f g f e d 
  c e f g a g f e 
  d f g a b a g f 
  e g a b c b a g 
  f a b c d c b a 
  g b c d e d c b 
  a c d e f e d c 
  b d e f g f e d 
  \bar "||"
  g e d c b c d e 
  f d c b a b c d 
  e c b a g a b c 
  d b a g f g a b 
  c a g f e f g a 
  b g f e d e f g 
  a f e d c d e f 
  g e d c b c d e 
  f d c b a b c d 
  e c b a g a b c 
  d b a g f g a b 
  c a g f e f g a 
  b g f e d e f g 
  a f e d c d e f 
  g e d c b c d e 
  }
  c2
  \bar "|."
}
