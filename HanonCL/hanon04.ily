% LilyPond draft include file, auto-generated in R by Steve Taylor.
% Tuesday, 13 May 2014, 13:17 NZST 
% Check: octave of each hand, jumps bigger than a fourth, etc.
% Add: staffs, time signature, dynamics, 
%      note durations (16 on first), specific fingerings, annotations, 
%      staff positionings, stem directions, repeat sign, final bar.

lblExNum = \markup \bold \huge "4."

LH = \relative e, {
\repeat volta 2 {
  \stemDown \subdivideBeams
  c16 d c e a g f e 
  d e d f b a g f 
  e f e g c b a g 
  f g f a d c b a 
  g a g b e d c b 
  a b a c f e d c 
  b c b d g f e d 
  c d c e a g f e 
  d e d f b a g f 
  e f e g c b a g 
  f g f a d c b a 
  g a g b e d c b 
  a b a c f e d c 
  b c b d g f e d 
  \bar "||"
  g f g d b c d e 
  f e f c a b c d 
  e d e b g a b c 
  d c d a f g a b 
  c b c g e f g a 
  b a b f d e f g 
  a g a e c d e f 
  g f g d b c d e 
  f e f c a b c d 
  e d e b g a b c 
  d c d a f g a b 
  c b c g e f g a 
  b a b f d e f g 
  a g a e c d e f 
  g f g d b c d e 
  }
  c2
  \bar "|."
}

RH = \relative e {
\repeat volta 2 {
  \staffDown \stemUp \subdivideBeams
  c16 d c e a g f e 
  d e d f b a g f 
  e f e g c b a g 
  f g f a d c b a 
  g a g b e d c b 
  \beamLessSlant a b a c \staffUp f e d c 
  b c b d g f e d 
  c d c e a g f e 
  d e d f b a g f 
  e f e g c b a g 
  f g f a d c b a 
  \stemDown g a g b e d c b 
  a b a c f e d c 
  b c b d g f e d 
  \bar "||"
  g f g d b c d e 
  f e f c a b c d 
  e d e b g a b c 
  d c d a f g a b 
  c b c g e f g a 
  \stemUp b a b f d e f g 
  a g a e c d e f 
  g f g d b c d e 
  \beamLessSlant f e f c \staffDown a b c d 
  e d e b g a b c 
  d c d a f g a b 
  c b c g e f g a 
  b a b f d e f g 
  a g a e c d e f 
  g f g d b c d e 
  }
  c2
  \bar "|."
}

