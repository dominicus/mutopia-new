% LilyPond draft include file, auto-generated in R by Steve Taylor.
% Tuesday, 13 May 2014, 13:17 NZST 
% Check: octave of each hand, jumps bigger than a fourth, etc.
% Add: staffs, time signature, dynamics, 
%      note durations (16 on first), specific fingerings, annotations, 
%      staff positionings, stem directions, repeat sign, final bar.

lblExNum = \markup \bold \huge "13."

LH = \relative e, {
  \repeat volta 2 {
  \stemDown \subdivideBeams
  e16 c f d g e f g 
  f d g e a f g a 
  g e a f b g a b 
  a f b g c a b c 
  b g c a d b c d 
  c a d b e c d e 
  d b e c f d e f 
  e c f d g e f g 
  f d g e a f g a 
  g e a f b g a b 
  a f b g c a b c 
  b g c a d b c d 
  c a d b e c d e 
  d b e c f d e f 
  \bar "||"
  e g d f e c d e 
  d f c e d b c d 
  c e b d c a b c 
  b d a c b g a b 
  a c g b a f g a 
  g b f a g e f g 
  f a e g f d e f 
  e g d f e c d e 
  d f c e d b c d 
  c e b d c a b c 
  b d a c b g a b 
  a c g b a f g a 
  g b f a g e f g 
  f a e g f d e f 
  e g d f e c d e 
  }
  c2
  \bar "|."
}

RH = \relative e {
\repeat volta 2 {
  \staffDown \stemUp \subdivideBeams
  e16 c f d g e f g 
  f d g e a f g a 
  g e a f b g a b 
  a f b g c a b c 
  b g c a d b c d 
  \beamLessSlant c a d b \staffUp e c d e 
  d b e c f d e f 
  e c f d g e f g 
  f d g e a f g a 
  g e a f b g a b 
  a f b g c a b c 
  \stemDown b g c a d b c d 
  c a d b e c d e 
  d b e c f d e f 
  \bar "||"
  e g d f e c d e 
  d f c e d b c d 
  c e b d c a b c 
  \stemUp b d a c b g a b 
  a c g b a f g a 
  g b f a g e f g 
  f a e g f d e f 
  e g d f e c d e 
  d f c e d b c d 
  \beamLessSlant c e b d c \staffDown a b c 
  b d a c b g a b 
  a c g b a f g a 
  g b f a g e f g 
  f a e g f d e f 
  e g d f e c d e 
  }
  c2
  \bar "|."
}

