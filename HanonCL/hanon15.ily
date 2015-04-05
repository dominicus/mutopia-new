% LilyPond draft include file, auto-generated in R by Steve Taylor.
% Tuesday, 13 May 2014, 13:17 NZST 
% Check: octave of each hand, jumps bigger than a fourth, etc.
% Add: staffs, time signature, dynamics, 
%      note durations (16 on first), specific fingerings, annotations, 
%      staff positionings, stem directions, repeat sign, final bar.

lblExNum = \markup \bold \huge "15."

LH = \relative e, {
  \repeat volta 2 {
  \stemDown \subdivideBeams
  c16 e d f e g f a 
  d,f e g f a g b 
  e, g f a g b a c 
  f, a g b a c b d 
  g, b a c b d c e 
  a, c b d c e d f 
  b, d c e d f e g 
  c, e d f e g f a 
  d, f e g f a g b 
  e, g f a g b a c 
  f, a g b a c b d 
  g, b a c b d c e 
  a, c b d c e d f 
  b, d c e d f e g 
  \bar "||"
  g e f d e c d b 
  f' d e c d b c a 
  e' c d b c a b g 
  d' b c a b g a f 
  c' a b g a f g e 
  b' g a f g e f d 
  a' f g e f d e c 
  g' e f d e c d b 
  f' d e c d b c a 
  e' c d b c a b g 
  d' b c a b g a f 
  c' a b g a f g e 
  b' g a f g e f d 
  a' f g e f d e d
  }
  c2
  \bar "|."
}

RH = \relative e {
  \repeat volta 2 {
  \staffDown \stemUp \subdivideBeams
  c16 e d f e g f a 
  d, f e g f a g b 
  e, g f a g b a c 
  f, a g b a c b d 
  g, b a c b d c e 
  \beamLessSlant a, c b d c \staffUp e d f 
  b, d c e d f e g 
  c, e d f e g f a 
  d, f e g f a g b 
  e, g f a g b a c 
  f, a g b a c b d 
  \stemDown g, b a c b d c e 
  a, c b d c e d f 
  b, d c e d f e g 
  \bar "||"
  g e f d e c d b 
  f' d e c d b c a 
  e' c d b c a b g 
  \stemUp d' b c a b g a f 
  c' a b g a f g e 
  b' g a f g e f d 
  a' f g e f d e c 
  g' e f d e c d b 
  f' d e c d b c a 
  \beamLessSlant e' c d b c \staffDown a b g 
  d' b c a b g a f 
  c' a b g a f g e 
  b' g a f g e f d
  a' f g e f d e d
  }
  c2
  \bar "|."
}

