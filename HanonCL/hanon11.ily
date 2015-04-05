% LilyPond draft include file, auto-generated in R by Steve Taylor.
% Tuesday, 13 May 2014, 13:17 NZST 
% Check: octave of each hand, jumps bigger than a fourth, etc.
% Add: staffs, time signature, dynamics, 
%      note durations (16 on first), specific fingerings, annotations, 
%      staff positionings, stem directions, repeat sign, final bar.

lblExNum = \markup \bold \huge "11."

LH = \relative e, {
  \repeat volta 2 {
  \stemDown \subdivideBeams
  c16 e a g a g f g 
  d f b a b a g a 
  e g c b c b a b 
  f a d c d c b c 
  g b e d e d c d 
  a c f e f e d e 
  b d g f g f e f 
  c e a g a g f g 
  d f b a b a g a 
  e g c b c b a b 
  f a d c d c b c 
  g b e d e d c d 
  a c f e f e d e 
  b d g f g f e f 
  \bar "||"
  g d b c b c d c 
  f c a b a b c b 
  e b g a g a b a 
  d a f g f g a g 
  c g e f e f g f 
  b f d e d e f e 
  a e c d c d e d 
  g d b c b c d c 
  f c a b a b c b 
  e b g a g a b a 
  d a f g f g a g 
  c g e f e f g f 
  b f d e d e f e 
  a e c d c d e d 
  g d b c b c d c 
  }
  c2
  \bar "|."
}

RH = \relative e {
  \repeat volta 2 {
  \staffDown \stemUp \subdivideBeams
  c16 e a g a g f g 
  d f b a b a g a 
  e g c b c b a b 
  f a d c d c b c 
  \beamLessSlant g b \staffUp e d e d c d 
  \beamLessSlant \staffDown a c \staffUp f e f e d e 
  \beamLessSlant \staffDown b \staffUp d g f g f e f 
  c e a g a g f g 
  d f b a b a g a 
  e g c b c b a b 
  f a d c d c b c 
  \stemDown g b e d e d c d 
  a c f e f e d e 
  b d g f g f e f 
  \bar "||"
  g d b c b c d c 
  f c a b a b c b 
  e b g a g a b a 
  \stemUp d a f g f g a g 
  c g e f e f g f 
  b f d e d e f e 
  a e c d c d e d 
  g d b c b c d c 
  \beamLessSlant f c \staffDown a b a b c b 
  \beamLessSlant \staffUp e \staffDown b g a g a b a 
  d a f g f g a g 
  c g e f e f g f 
  b f d e d e f e 
  a e c d c d e d 
  g d b c b c d c 
  }
  c2
  \bar "|."
}

