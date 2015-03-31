% LilyPond draft include file, auto-generated in R by Steve Taylor.
% Tuesday, 13 May 2014, 13:17 NZST 
% Check: octave of each hand, jumps bigger than a fourth, etc.
% Add: staffs, time signature, dynamics, 
%      note durations (16 on first), specific fingerings, annotations, 
%      staff positionings, stem directions, repeat sign, final bar.

lblExNum = \markup \bold \huge "3."

LH = \relative e, {
  \repeat volta 2 {
  \stemDown \subdivideBeams
  c16 e a g f e f g 
  d f b a g f g a 
  e g c b a g a b 
  f a d c b a b c 
  g b e d c b c d 
  a c f e d c d e 
  b d g f e d e f 
  c e a g f e f g 
  d f b a g f g a 
  e g c b a g a b 
  f a d c b a b c 
  g b e d c b c d 
  a c f e d c d e 
  b d g f e d e f 
  \bar "||"
  g d b c d e d c 
  f c a b c d c b 
  e b g a b c b a 
  d a f g a b a g 
  c g e f g a g f 
  b f d e f g f e 
  a e c d e f e d 
  g d b c d e d c 
  f c a b c d c b 
  e b g a b c b a 
  d a f g a b a g 
  c g e f g a g f 
  b f d e f g f e 
  a e c d e f e d 
  g d b c d e d c 
  }
  c2
  \bar "|."
}

RH = \relative e {
\repeat volta 2 {
  \staffDown \stemUp \subdivideBeams
  c16 e a g f e f g 
  d f b a g f g a 
  e g c b a g a b 
  f a d c b a b c 
  g b e d c b c d 
  \beamLessSlant a c \staffUp f e d c d e 
  b d g f e d e f 
  c e a g f e f g 
  d f b a g f g a 
  e g c b a g a b 
  f a d c b a b c 
  \stemDown g b e d c b c d 
  a c f e d c d e 
  b d g f e d e f 
  \bar "||"
  g d b c d e d c 
  f c a b c d c b 
  e b g a b c b a 
  \stemUp d a f g a b a g 
  c g e f g a g f 
  b f d e f g f e 
  a e c d e f e d 
  g d b c d e d c 
  f c \staffDown a b c d c b 
  e b g a b c b a 
  d a f g a b a g 
  c g e f g a g f 
  b f d e f g f e 
  a e c d e f e d 
  g d b c d e d c 
  }
  c2
  \bar "|."
}

