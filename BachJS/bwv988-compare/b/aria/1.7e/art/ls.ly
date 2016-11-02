\version "2.2.2"

\paper {
	\context { \GrandStaffContext \consists "Instrument_name_engraver" }
	linewidth = 280 \mm
	orientation = landscape
	pagenumber = no
}

\header {
  title = "Linux Suite"
  composer = "Steve Shorter"
 copyright = "Creative Commons \\texttt{http://creativecommons.org/licences/by-sa/2.0/}"
 enteredby = "Steve Shorter"
}

HalfSpace = \once \override Score.SeparationItem #'padding = #0.5
FullSpace = \once \override Score.SeparationItem #'padding = #1.0
DoubleSpace = \once \override Score.SeparationItem #'padding = #2.0

one =	\context Voice=one \notes \relative c'' {
	\voiceOne
	\clef treble
	\override Staff.TimeSignature #'style = #'numbered
	\time 3/4
	\stemUp
	\phrasingSlurUp
% LILO
	\partial 8
	cis8\rest^\markup {"" \raise #4.0 {\huge {\bold LILO}}} |
	<g b e>8[\(_\markup {"" \raise #-3.0 \bold \italic pont}
	<fis b d>] <e g b>2\) |
	<d fis b>8[\(_\markup {"" \raise #-2.0 \bold \italic dolce}
	<cis fis a>] <b d fis>2\) |
	\relative c''
% process zero
	<g b e>8[^\markup {"" \raise #1.0 {\huge {\bold {process zero}}}}
	<fis' b d>] <e g b>[ <g, b e>] \times 2/3 {<b e g>8 <cis fis a>4} |
	\relative c''
	<g b e>8] <fis b d>] <e g b>[ <fis a cis>] \times 2/3 {<cis fis a>8 <b e g>4} |
	\time 2/4
	\relative c''
	<g b e>8[ <fis' b d>] <e g b>[ <g, b e>] |
	<cis fis a>16 <cis fis a>~ <cis fis a>4. |
	<b e g>16 <b e g>~ <b e g>4. |
	\bar "|:" g'2\rest \bar ":|" |
	\break
% init()
	\time 8/8
	s1^\markup {\huge {\bold {init()}}}
	s1 |
	s1 |
	s1 |
	\bar "|:" s1 \bar ":|:" |
	s1 \bar ":|" |
	s1 |
	s1 |
	\break
% sbin/init
	\time 4/4
	\relative c''
	e8^\markup {\huge {\bold /sbin/init}}
	fis' e fis e fis e fis |
	\bar "|:" e8 fis e fis e fis e fis \bar ":|" |
	e8 fis e fis e fis e fis |
	e8 fis e fis e fis e fis |
	e8 fis e fis e fis e fis |
	e8 fis e fis e fis
	\override NoteHead #'style = #'harmonic
	e fis |
	e8 fis e8 fis16 d e2~ |
	e1 |
	\break
% /sbin/getty
	\time 12/8
	\relative c''
	fis8\rest^\markup {"" \raise #2.0 {\huge {\bold {/sbin/getty}}}}
	e4. fis4. d4. d,4 |
	\time 7/8
	a'8 a4 a8 a4 a8 |
	\time 12/8
	a4 a8 a4 a8 a4 a8 a4 a8 |
	e'4. fis4. d4. d,4. |
	\time 7/8
	a'4 a8[ a8]~ a8[ a a]~ |
	\time 12/8
	a8 a a~ a a a~ a a a~ a a a~ |
	a8 <e' b>4. <fis d>4. <b, g>4. <d a>4~ |
	<d a>8 <g, d>4. <d' a>4. <g, d>4. <d' a>4~ |
	<d a>8 d b16 d~ d8 d b16 d~ d8 d b16 d~ d8 d d~ |
	d8 d4~ d4.~ d4. fis4.\rest |
	\break
%login:
	#(set-time-signature 7 8 '(8 2 4))
	a,8^\markup {\huge {\bold {login: }}}
	d4\rest e8[ fis d d,] |
	\time 2/4
	\override Script #'padding = #1
	b'4\rest^\fermata a~ |
	a2 |
	\break
% bash#
	\clef "G_8"
	\time 4/4
	\relative c
	\override NoteHead #'style = #'default

	e8^\markup {\huge {\bold {bash\char #35 }}}
	e e e e e e e |
	e8 e e e e e e e |
	e8 e e e e e e e |
	e8 e e e e e e e |
	\break
	e8 e e e e e e e |
	e8 e e e e e e e |
	e8 e e e e e e e |
	e8 e e e e e e e |
	\break
	e8 e e e e e e e |
	e8 e e e e e e e |
	e8 e e e e e e e |
	e8 e e e e e e e |
	\break
	e8 e e e e e e e |
	e8 e e e e e e e |
	e8 e e e e e e e |
	e8 e e e e e e e |
	\break
	e8 e e e e e e e |
	e8 e e e e e e e |
	e8 e e e e e e e |
	e8 e e e e e e e |
	\break
	e8 e e e e e e e |
	e8 e e e e e e e |
	d8 b d b d b
	\override NoteHead #'style = #'harmonic
	d4^\fermata |
	\override NoteHead #'style = #'default
	<d a>1\arpeggio |
}

two =	\context Voice=two \notes \relative c' {
	\voiceTwo
	\clef treble
	\override Staff.TimeSignature #'style = #'numbered
	\time 3/4
	\stemDown
% LILO
	\partial 8 s8 |
	s2. |
	s2. |
% process zero
	s2. |
	s2. |
	\time 2/4
	s2 |
	s2 |
	s2 |
	\override NoteHead #'transparent = ##t
	\override Stem #'transparent = ##t
	\override Beam #'transparent = ##t
	\override Hairpin #'extra-offset = #'(0 . -1.0)
	cis16_\markup {"" \raise #-1.8 \bold for}
	\override Hairpin #'extra-offset = #'(0 . -1.0)
	fis fis\> fis fis8 fis16\!
	fis_\markup {"" \raise #-3.6 \tiny \dynamic p} |
	\override NoteHead #'transparent = ##f
	\override Stem #'transparent = ##f
	\override Beam #'transparent = ##f
% init()
	\time 8/8
	\stemUp
	\override DynamicText #'extra-offset = #'(0 . -1.0)
	<fis cis a>4.\pp <fis cis a>8 r4 <fis cis a>8 r8 |
	<fis cis a>4. <fis cis a>8 r4 <fis cis a>8 r8 |
	<fis cis a>4. <fis cis a>8 r4 <fis cis a>8 r8 |
	<fis cis a>4. <fis cis a>8 r4 <fis cis a>8 r8 |
	<fis cis a>4. <fis cis a>8 r4 <fis cis a>8 r8 |
	<fis cis a>4. <fis cis a>8 r4 <fis cis a>8 r8 |
	<g e b>4. <a fis cis>4. <b g e>4 |
	<a fis cis>4. <b g e>4. <cis a fis>4 |
% sbin/init
	\stemDown
	\time 4/4
	\relative c'
	\override Hairpin #'extra-offset = #'(0 . -2.0)
	g8\rest a4 a a a8~
	a8 a4 a a a8~ | 
	a8\> a4 a a a8~ |
	a8 a4 a_\markup {\bold \italic rit}
	a a8~ |
	a8 a4 a a\!\< a8~ |
	a8 a4\!\> a_\markup {\bold \italic {molto rit}}
	a
	\override NoteHead #'style = #'harmonic
	a8~ |
	a8 a4 a4. a4~ |
	\override DynamicText #'extra-offset = #'(1.6 . -2.3)
	a4\! a\ppp a2 |  
% /sbin/getty
	\override Hairpin #'extra-offset = #'(0 . 0)
	\time 12/8
	a4. a4. a4. a4. |
	\time 7/8
	a8 a4 a8 a4 a8 |
	\time 12/8
	a4 a8 a4 a8 a4 a8 a4 a8~
	a4 a4. a4. a4. a8 |
	\time 7/8
	a4 a8[ a8]~ a8[ a a]~ |
	\time 12/8
	a8 a a~ a a a~ a a a~ a a a ~ |
	a4 a4. a4. a4. a8~ |
	a4 a4. a4. a4. a8~ |
	a8 a4. a4. a4. a4~ |
	a8_\markup {\bold \italic rit}
	a a~ a a a~ \times 3/2 {a8 a8~} a4. |
% login:
	\time 7/8
	s4 s4 s4 s8
	\time 2/4
	s4 s4
	s4 s4
% bash#
	\clef "G_8"
	\time 4/4
	\relative c,
	\override NoteHead #'style = #'default
	\override Hairpin #'extra-offset = #'(0 . -0.5)
	\override DynamicText #'extra-offset = #'(0 . -1.0)
	d,8\mp b\> d b d b d\! b |
	d8 b\< d b d b d\! b |
	d8 b\> d b d b d b |
	d8 b d b d b d\! b |
	d8 b\< d b d b d b |
	d8 b d b d b d\! b |
	d8 b\> d b d b d b |
	d8 b d b d b d\! b |
	d8 b\< d b d b d\! b |
	d8 b\> d b d b d\! b |
	d8 b\< d b d b d\! b |
	d8 b\> d b d b d\! b |
	d8 b\< d b d b d\! b |
	d8 b d b d b d b |
	d8 c d c d c d c |
	d8 c d c d c d c |
	d8 c\> d c d c d\! c |
	d8 b\< d b d b d\! b |
	d8 b\> d b d b d\! b |
	d8 b\< d b d b d\! b |
	d8 b d b d b d b |
	d8 b d b d b_\markup {\bold \italic rit}
	d b |
	a8 g a g a g 
	\override NoteHead #'style = #'harmonic
	\override Script #'padding = #1
	d'4_\fermata |
	\override NoteHead #'style = #'default
	s1 |
}

three =	\context Voice=three \notes \relative c {
	\voiceThree
	\clef bass
	\override Staff.TimeSignature #'style = #'numbered
	\time 3/4
	\stemUp
	\dynamicUp
% LILO
	\partial 8 d8\f~
	d2~ d8 \noBeam d8~ |
	d2~ d8 \noBeam d8~ |
% process zero
	d2~ \times 2/3 {d4 d8~} \HalfSpace |
	d2~ \times 2/3 {d4 d8~} \HalfSpace |
	\time 2/4
	d2~ |
	d2~ |
	d4. d8 |
	d2~ |
% init()
	\time 8/8
	d1~ |
	d2. d4~ |
	d4.~ d4 d8 \noBeam d8 e8\rest |
	d4.~ d4 d8 d8[ d8] |
	d8^\markup {"" \raise #2.3 \bold for}
	\override Hairpin #'extra-offset = #'(1.0 . 2.0)
	e4\rest\< d4 d8 d8[\!
	d8]^\markup {"" \raise #2.0 \tiny \dynamic f} |
	d8^\markup {"" \raise #2.3 \bold for}
	e4\rest\> d4 d8 d8[\!
	d8]^\markup {"" \raise #2.2 \tiny \dynamic p} |
	\override DynamicText #'extra-offset = #'(1.5 . 2.0)
	d4\pp d8\< d4 d8 d8[ d8] |
	d4 d8 d4 d8 d8[ d8]\! |
% /sbin/init
	\time 4/4
	\override DynamicText #'extra-offset = #'(0 . 1.5)
	d8[\f d~] d2. |
	d8[^\markup {"" \raise #2.3 \bold while()} d~]
	d2. | 
	d8[ d~] d2. | 
	d8[ d~] d2. |
	d1~ |
	d1~ |
	d1 |
	\override NoteHead #'style = #'harmonic
	a'1~ |
% /sbin/getty
	\override Hairpin #'extra-offset = #'(0 . 1.0)
	a4\< a4. a4. a4. a8~ |
	\time 7/8
	\override DynamicText #'extra-offset = #'(-2.0 . 0.5)
	a4\! a4.\mf a4~ |
	\time 12/8
	a8\> a4. a4. a4. a4~\! |
	a8\< a4. a4. a4. a4~ |
	\time 7/8
	\override DynamicText #'extra-offset = #'(1.5 . 0.65)
	a8\! a4.\mf a4. |
	\time 12/8
	a4.\> a4. a4. a4. |
	\override DynamicText #'extra-offset = #'(2.50 . 0.60)
	a4.\ppp a4.\< a4. a4. |
	a4. a4.\! a4. a4.\> |
	a4. a4. a4. a4. |
	a4. a4. a4.~ a4.\! |
%login:
	\phrasingSlurUp
	#(set-time-signature 7 8 '(2 8 4))
	s8 d8~ d2\( a8\)~
	\time 2/4
	\override Script #'padding = #1
	a2~^\fermata |
	a2 |
% bash#
	\time 4/4
	\relative c''
	\override NoteHead #'style = #'default
	g8 g g g g g g g |
	g8 g g g g g g g |
	g8 g g g g g g g |
	g8 g g g g g g g |
	g8 g g g g g g g |
	g8 g g g g g g g |
	g8 g g g g g g g |
	g8 g g g g g g g |
	g8 g g g g g g g |
	a8 a a a g g g g |
	g8 g g g a a g g |
	g8 g a
	a g^\markup {"" \raise #-1.0 \bold \italic {tempo rubato}}
	g g g |
	g8 g g g g g g g |
	g8 g g g g g g g |
	g8 g g g g g g g |
	g8 g g g g g g g |
	g8 g g g g g g g |
	g8 g g g g g g g |
	g8 g g g g g g g |
	g8 g g g g g g g |
	g8 g g g g g g g |
	g8 g g g g g g g |
	fis8 d fis d fis d
	\override NoteHead #'style = #'harmonic
	d4^\fermata |
	\override NoteHead #'style = #'default
	s1 |
}

four =	\context Voice=four \notes \relative c, {
	\voiceFour
	\clef bass
	\override Staff.TimeSignature #'style = #'numbered
	\time 3/4
	\stemDown
	\partial 8 d8->~ |
% LILO
	d2~ d8 \noBeam d8->~ |
	d2~ d8 \noBeam d8->~ |
% process zero
	\override Script #'padding = #2
	d2 \times 2/3 {d4 d8->~} |
	d2 \times 2/3 {d4 d8->~} |
	\time 2/4
	d2 |
	d4. d8 |
	d2~ |
	d2~ |
% init()
	\time 8/8
	d1 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
% sbin/init
	\time 4/4
	r1 |
	r1 |
	r2. a'4~ |
	a2. a4~ |
	a2. a4~ |
	<a d,>1~ |
	<a d,>1~ |
	d,1 |
% /sbin/getty
	\time 12/8
	r1. |
	\time 7/8
	r8 d8 d4 d8 d4 |
	\time 12/8
	d1.~ |
	d1. |
	\time 7/8
	r8 d8 d4 d8 d4 |
	\time 12/8
	d1.~ |
	d1. |
	r1. |
	r1. |
	r1. |
% login:
	\override NoteHead #'style = #'harmonic
	#(set-time-signature 7 8 '(4 2 8))
	e''16[ fis d d,~] <a' d,>2~ <a d,>8~ |
	\time 2/4
	\override Script #'padding = #1
	d,2~_\fermata |
	d2 |
% bash#
	\time 4/4
	\relative c,
	\override NoteHead #'style = #'default
	g,1 |
	g1 |
	d1 |
	d1 |
	g2. g4 |
	g2. g4 |
	d2. d4 |
	d2. d4 |
	g2 e2 |
	fis2 d2 |
	g4 e fis d |
	e fis g g |
	g8 e g a b a b d |
	e8 d e g e d b d |
	c2. c4 |
	b2. b8 b |
	a2. a8 a |
	g2. g4 |
	d2. d4 |
	g2. g4 |
	d2. d4 |
	d2. d4 |
	d2. 
	\override NoteHead #'style = #'harmonic
	d'4_\fermata |
	\override NoteHead #'style = #'default
	<fis a, d,>1\arpeggio |
}


\score {
	\notes \context GrandStaff <<
		\set GrandStaff.instrument = "Guitar   "
		\set GrandStaff.connectArpeggios = ##t
		\context Staff = Upper <<
			\key d\major
			\one
			\two
		>>
		\context Staff = Lower <<
			\key d\major
			\three
			\four
		>>
	>>
}

