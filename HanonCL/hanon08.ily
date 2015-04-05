% LilyPond draft include file, auto-generated in R by Steve Taylor.
% Tuesday, 13 May 2014, 13:17 NZST 
% Check: octave of each hand, jumps bigger than a fourth, etc.
% Add: staffs, time signature, dynamics, 
%      note durations (16 on first), specific fingerings, annotations, 
%      staff positionings, stem directions, repeat sign, final bar.

lblExNum = \markup \bold \huge "8."

LH = \relative e, {
  \stemDown \subdivideBeams
  \repeat volta 2 {
  c16 e g a f g e f 
  d f a b g a f g 
  e g b c a b g a 
  f a c d b c a b 
  g b d e c d b c 
  a c e f d e c d 
  b d f g e f d e 
  c e g a f g e f 
  d f a b g a f g 
  e g b c a b g a 
  f a c d b c a b 
  g b d e c d b c 
  a c e f d e c d 
  b d f g e f d e 
  \bar "||"
  g e c b d c e d 
  f d b a c b d c 
  e c a g b a c b 
  d b g f a g b a 
  c a f e g f a g 
  b g e d f e g f 
  a f d c e d f e 
  g e c b d c e d 
  f d b a c b d c 
  e c a g b a c b 
  d b g f a g b a 
  c a f e g f a g 
  b g e d f e g f 
  a f d c e d f e 
  g e c b d c e d 
  }
  c2
  \bar "|."
}

RH = \relative e {
\repeat volta 2 {
  \staffDown \stemUp \subdivideBeams
  c16 e g a f g e f 
  d f a b g a f g 
  e g b c a b g a 
  f a c d b c a b 
  g b d e c d b c 
  \beamLessSlant a c \staffUp e f d e c d 
  b d f g e f d e 
  c e g a f g e f 
  d f a b g a f g 
  e g b c a b g a 
  f a c d b c a b 
  \stemDown g b d e c d b c 
  a c e f d e c d 
  b d f g e f d e 
  \bar "||"
  g e c b d c e d 
  f d b a c b d c 
  e c a g b a c b 
  d b g f a g b a 
  c a f e g f a g 
  \stemUp b g e d f e g f 
  a f d c e d f e 
  g e c b d c e d 
  \beamLessSlant f d \staffDown b a c b d c 
  e c a g b a c b 
  d b g f a g b a 
  c a f e g f a g 
  b g e d f e g f 
  a f d c e d f e 
  g e c b d c e d 
  }
  c2
  \bar "|."
}

