% LilyPond draft include file, auto-generated in R by Steve Taylor.
% Tuesday, 13 May 2014, 13:17 NZST 
% Check: octave of each hand, jumps bigger than a fourth, etc.
% Add: staffs, time signature, dynamics, 
%      note durations (16 on first), specific fingerings, annotations, 
%      staff positionings, stem directions, repeat sign, final bar.

lblExNum = \markup \bold \huge "2."

RH = \relative e {
\repeat volta 2 {
  \staffDown \stemUp \subdivideBeams
  c16 e a g f g f e 
  d f b a g a g f 
  e g c b a b a g 
  f a d c b c b a 
  g b e d c d c b 
  \beamLessSlant a c \staffUp f e d e d c 
  b d g f e f e d 
  c e a g f g f e 
  d f b a g a g f 
  e g c b a b a g 
  f a d c b c b a 
  \stemNeutral g b e d c d c b 
  a c f e d e d c 
  b d g f e f e d 
  \bar "||"
  g d b c d c d e 
  f c a b c b c d 
  e b g a b a b c 
  d a f g a g a b 
  c g e f g f g a 
  b f d e f e f g 
  a e c d e d e f 
  g d b c d c d e 
  \stemUp \beamLessSlant f c \staffDown a b c b c d 
  e b g a b a b c 
  d a f g a g a b 
  c g e f g f g a 
  b f d e f e f g 
  a e c d e d e f 
  g d b c d c d e 
  }
  c2
  \bar "|."
}

LH = \relative e, {
\repeat volta 2 {
  \subdivideBeams
  \stemDown c16 e a g f g f e 
  d f b a g a g f 
  e g c b a b a g 
  f a d c b c b a 
  g b e d c d c b 
  a c f e d e d c 
  b d g f e f e d 
  c e a g f g f e 
  d f b a g a g f 
  e g c b a b a g 
  f a d c b c b a 
  g b e d c d c b 
  a c f e d e d c 
  b d g f e f e d 
  \bar "||"
  g d b c d c d e 
  f c a b c b c d 
  e b g a b a b c 
  d a f g a g a b 
  c g e f g f g a 
  b f d e f e f g 
  a e c d e d e f 
  g d b c d c d e 
  f c a b c b c d 
  e b g a b a b c 
  d a f g a g a b 
  c g e f g f g a 
  b f d e f e f g 
  a e c d e d e f 
  g d b c d c d e 
  }
  c2
  \bar "|."
}