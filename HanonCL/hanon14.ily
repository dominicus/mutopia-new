% LilyPond draft include file, auto-generated in R by Steve Taylor.
% Tuesday, 13 May 2014, 13:17 NZST 
% Check: octave of each hand, jumps bigger than a fourth, etc.
% Add: staffs, time signature, dynamics, 
%      note durations (16 on first), specific fingerings, annotations, 
%      staff positionings, stem directions, repeat sign, final bar.

lblExNum = \markup \bold \huge "14."

LH = \relative e, {
  \repeat volta 2 {
  \stemDown \subdivideBeams
  c16 d f e f e g f 
  d e g f g f a g 
  e f a g a g b a 
  f g b a b a c b 
  g a c b c b d c 
  a b d c d c e d 
  b c e d e d f e 
  c d f e f e g f 
  d e g f g f a g 
  e f a g a g b a 
  f g b a b a c b 
  g a c b c b d c 
  a b d c d c e d 
  b c e d e d f e 
  \bar "||"
  g f d e d e c d 
  f e c d c d b c 
  e d b c b c a b 
  d c a b a b g a 
  c b g a g a f g 
  b a f g f g e f 
  a g e f e f d e 
  g f d e d e c d 
  f e c d c d b c 
  e d b c b c a b 
  d c a b a b g a 
  c b g a g a f g 
  b a f g f g e f 
  a g e f e f d e 
  g f d e d e c d 
  }
  c2
  \bar "|."
}

RH = \relative e {
\repeat volta 2 {
  \staffDown \stemUp \subdivideBeams
  c16 d f e f e g f 
  d e g f g f a g 
  e f a g a g b a 
  f g b a b a c b 
  g a c b c b d c 
  a b d c d c e d 
  \beamLessSlant b c \staffUp e d e d f e 
  c d f e f e g f 
  d e g f g f a g 
  e f a g a g b a 
  f g b a b a c b 
  \stemDown g a c b c b d c 
  a b d c d c e d 
  b c e d e d f e 
  \bar "||"
  g f d e d e c d 
  f e c d c d b c 
  e d b c b c a b 
  \stemUp d c a b a b g a 
  c b g a g a f g 
  b a f g f g e f 
  a g e f e f d e 
  g f d e d e c d 
  f e c d c d b c 
  \beamLessSlant e d b c b c \staffDown a b 
  d c a b a b g a 
  c b g a g a f g 
  b a f g f g e f 
  a g e f e f d e 
  g f d e d e c d 
  }
  c2
  \bar "|."
}

