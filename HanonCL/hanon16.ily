% LilyPond draft include file, auto-generated in R by Steve Taylor.
% Tuesday, 13 May 2014, 13:17 NZST 
% Check: octave of each hand, jumps bigger than a fourth, etc.
% Add: staffs, time signature, dynamics, 
%      note durations (16 on first), specific fingerings, annotations, 
%      staff positionings, stem directions, repeat sign, final bar.

lblExNum = \markup \bold \huge "16."

LH = \relative e, {
  \repeat volta 2 {
  \stemDown \subdivideBeams
  c16 e d e a g f g 
  d f e f b a g a 
  e g f g c b a b 
  f a g a d c b c 
  g b a b e d c d 
  a c b c f e d e 
  b d c d g f e f 
  c e d e a g f g 
  d f e f b a g a 
  e g f g c b a b 
  f a g a d c b c 
  g b a b e d c d 
  a c b c f e d e 
  b d c d g f e f 
  \bar "||"
  g d e d b c d c 
  f c d c a b c b 
  e b c b g a b a 
  d a b a f g a g 
  c g a g e f g f 
  b f g f d e f e 
  a e f e c d e d 
  g d e d b c d c 
  f c d c a b c b 
  e b c b g a b a 
  d a b a f g a g 
  c g a g e f g f 
  b f g f d e f e 
  a e f e c d e d 
  }
  c2
  \bar "|."
}

RH = \relative e {
  \repeat volta 2 {
  \staffDown \stemUp \subdivideBeams
  c16 e d e a g f g 
  d f e f b a g a 
  e g f g c b a b 
  f a g a d c b c 
  g b a b e d c d 
  \beamLessSlant a c b c \staffUp f e d e 
  b d c d g f e f 
  c e d e a g f g 
  d f e f b a g a 
  e g f g c b a b 
  f a g a d c b c 
  \stemDown g b a b e d c d 
  a c b c f e d e 
  b d c d g f e f 
  \bar "||"
  g d e d b c d c 
  f c d c a b c b 
  e b c b g a b a 
  \stemUp d a b a f g a g 
  c g a g e f g f 
  b f g f d e f e 
  a e f e c d e d 
  g d e d b c d c 
  \beamLessSlant f c d c \staffDown a b c b 
  e b c b g a b a 
  d a b a f g a g 
  c g a g e f g f 
  b f g f d e f e 
  a e f e c d e d 
  }
  c2
  \bar "|."
}

