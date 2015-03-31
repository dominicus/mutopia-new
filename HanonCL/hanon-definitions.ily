\version "2.18.0"
% LilyPond include file with useful definitions.

\language "english"

% define a variable to hold the formatted today's date:
date = #(strftime "%d-%b-%Y" (localtime (current-time)))

% A function to display tempo markings:
tempoMark = #(define-music-function (parser location markp) (string?)
#{
  \once \override Score.RehearsalMark #'self-alignment-X = #left
  \once \override Score.RehearsalMark #'extra-spacing-width = #'(+inf.0 . -inf.0)
  \mark \markup { \smaller \bold $markp }
#})

% define a \paragraph command for use within \markuplist{}
#(define-markup-list-command (paragraph layout props args) (markup-list?)
   #:properties ((par-indent 2))
   (interpret-markup-list layout props
     #{\markuplist \justified-lines { \hspace #par-indent #args } #}))

%     #{\markuplist \large \justified-lines { \hspace #par-indent #args } #}))

% Various shortcut macros (delete those not needed when project is done).
mCresc = \markup{\italic cresc.}
mSemprePianissimoStaccato = \markup{\dynamic pp \italic {sempre pianissimo e staccato}}
mSempreStaccato = \markup{\italic {sempre staccato}}
mSempreLegato = \markup{\italic {sempre legato}}
mSempreCresc = \markup{\italic {sempre cresc.}}
mSemprePiuF = \markup{\italic {sempre più} \dynamic f}
semprePiuF = #(make-dynamic-script (markup #:normal-text #:italic "sempre più" #:dynamic "f"))
mSemprePP = \markup{\italic sempre \dynamic pp}
mSempreF = \markup{\italic sempre \dynamic f}
mDecresc = \markup{\italic decresc.}
mPCresc = \markup{\dynamic p \italic cresc.}
mPPCresc = \markup{\dynamic pp \italic cresc.}
mSFCresc = \markup{\dynamic sf \italic cresc.}
mSFDecresc = \markup{\dynamic sf \italic decresc.}
mEspr = \markup{\italic espress.}
mDolce = \markup{\italic dolce}
mDolceCresc = \markup{\italic {dolce cresc.}}
mPDolce = \markup{\dynamic p \italic dolce}
mPiuF = \markup{\italic più \dynamic f}
pizz = \markup{\italic pizz.}
arco = \markup{\italic arco}
moltoMarcato = \markup{\italic {molto marcato}}
staccatoFour = \markup{\musicglyph #"scripts.staccato" \musicglyph #"scripts.staccato" \musicglyph #"scripts.staccato" \musicglyph #"scripts.staccato"}
staccatoSix = \markup{\musicglyph #"scripts.staccato" \musicglyph #"scripts.staccato" \musicglyph #"scripts.staccato" \musicglyph #"scripts.staccato" \musicglyph #"scripts.staccato" \musicglyph #"scripts.staccato"}
mLegato = \markup{\italic legato}
mSimile = \markup{\italic simile}
mMolto = \markup{\italic molto}
mPocoAllargando = \markup{\italic {poco allargando}}
mPocoAPocoDim = \markup{\italic {poco a poco dim.}}
mPocoAPocoCresc = \markup{\italic {poco a poco cresc.}}
mPerdendosi= \markup{\italic perdendosi}
mRit = \markup{\italic rit.}

metMark = \markup { \normal-text \concat { "(" \hspace #0.2 "M." \hspace #.5 "M. " \smaller \general-align #Y #DOWN \note #"4" #1 \hspace #0.5 " = 60 to 108.)" } }

staffUp = \change Staff = "upper"
staffDown = \change Staff = "lower"

beamLessSlant = \once \override Beam.damping = #10

subdivideBeams = {
  \set subdivideBeams = ##t
  \set baseMoment = #(ly:make-moment 1/4)
  \set beatStructure = #'(4 4)
}

globalT = {
  \key c \major
  \time 2/4
  \clef treble
}
globalB = {
  \key c \major
  \time 2/4
  \clef bass
}


