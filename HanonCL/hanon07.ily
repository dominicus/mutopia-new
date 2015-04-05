% LilyPond draft include file, auto-generated in R by Steve Taylor.
% Tuesday, 13 May 2014, 13:17 NZST 
% Check: octave of each hand, jumps bigger than a fourth, etc.
% Add: staffs, time signature, dynamics, 
%      note durations (16 on first), specific fingerings, annotations, 
%      staff positionings, stem directions, repeat sign, final bar.

lblExNum = \markup \bold \huge "7."

LH = \relative e, {
\repeat volta 2 {
  \stemDown \subdivideBeams
  c16 e d f e g f e 
  d f e g f a g f 
  e g f a g b a g 
  f a g b a c b a 
  g b a c b d c b 
  a c b d c e d c 
  b d c e d f e d 
  c e d f e g f e 
  d f e g f a g f 
  e g f a g b a g 
  f a g b a c b a 
  g b a c b d c b 
  a c b d c e d c 
  b d c e d f e d 
  \bar "||"
  g e f d e c d e 
  f d e c d b c d 
  e c d b c a b c 
  d b c a b g a b 
  c a b g a f g a 
  b g a f g e f g 
  a f g e f d e f 
  g e f d e c d e 
  f d e c d b c d 
  e c d b c a b c 
  d b c a b g a b 
  c a b g a f g a 
  b g a f g e f g 
  a f g e f d e f 
  g e f d e c d e 
  }
  c2
  \bar "|."
}

RH = \relative e {
\repeat volta 2 {
  \staffDown \stemUp \subdivideBeams
  c16 e d f e g f e 
  d f e g f a g f 
  e g f a g b a g 
  f a g b a c b a 
  g b a c b d c b 
  a c b d c e d c 
  \beamLessSlant b \staffUp d c e d f e d 
  c e d f e g f e 
  d f e g f a g f 
  e g f a g b a g 
  f a g b a c b a 
  \stemDown g b a c b d c b 
  a c b d c e d c 
  b d c e d f e d 
  \bar "||"
  g e f d e c d e 
  f d e c d b c d 
  e c d b c a b c 
  \stemUp d b c a b g a b 
  c a b g a f g a 
  b g a f g e f g 
  a f g e f d e f 
  g e f d e c d e 
  f d e c d b c d 
  \beamLessSlant e c d b c \staffDown a b c 
  d b c a b g a b 
  c a b g a f g a 
  b g a f g e f g 
  a f g e f d e f 
  g e f d e c d e 
  }
  c2
  \bar "|."
}

