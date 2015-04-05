% LilyPond draft include file, auto-generated in R by Steve Taylor.
% Tuesday, 13 May 2014, 13:17 NZST 
% Check: octave of each hand, jumps bigger than a fourth, etc.
% Add: staffs, time signature, dynamics, 
%      note durations (16 on first), specific fingerings, annotations, 
%      staff positionings, stem directions, repeat sign, final bar.

lblExNum = \markup \bold \huge "9."

LH = \relative e, {
  \stemDown \subdivideBeams
  \repeat volta 2 {
  c16 e f e g f a g
  d f g f a g b a 
  e g a g b a c b 
  f a b a c b d c 
  g b c b d c e d 
  a c d c e d f e 
  b d e d f e g f 
  c e f e g f a g 
  d f g f a g b a 
  e g a g b a c b 
  f a b a c b d c 
  g b c b d c e d 
  a c d c e d f e 
  b d e d f e g f 
  \bar "||"
  g e d e c d b c 
  f d c d b c a b 
  e c b c a b g a 
  d b a b g a f g 
  c a g a f g e f 
  b g f g e f d e 
  a f e f d e c d 
  g e d e c d b c 
  f^[ d c d b c a b ]
  e c b c a b g a 
  d b a b g a f g 
  c a g a f g e f 
  b g f g e f d e 
  a f e f d e c d 
  g e d e c d b c 
  }
  c2
  \bar "|."
}

RH = \relative e {
  \repeat volta 2 {
  \staffDown \stemUp \subdivideBeams
  c16 e f e g f a g 
  d f g f a g b a 
  e g a g b a c b 
  f a b a c b d c 
  g b c b d c e d 
  \beamLessSlant a c d c \staffUp e d f e 
  b d e d f e g f 
  c e f e g f a g 
  d f g f a g b a 
  e g a g b a c b 
  f a b a c b d c 
  \stemDown g b c b d c e d 
  a c d c e d f e 
  b d e d f e g f 
  \bar "||"
  g e d e c d b c 
  f d c d b c a b 
  e c b c a b g a 
  \stemUp d b a b g a f g 
  c a g a f g e f 
  b g f g e f d e 
  a f e f d e c d 
  g e d e c d b c 
  f d c d b c a b 
  \beamLessSlant e c b c \staffDown a b g a 
  d b a b g a f g 
  c a g a f g e f 
  b g f g e f d e 
  a f e f d e c d 
  g e d e c d b c 
  }
  c2
  \bar "|."
}

