\version "2.12.3"

 guitartwo = {
 \override Script #'padding = #1.0
 \override Staff.NoteCollision #'merge-differently-dotted = ##t
 \clef "G_8"
 \key g \major
 \time 3/4
 \set harmonicDots = ##t
    << %1,2,3,4
	{ f'4\rest f'4\rest d'4 | f'4\rest f'4\rest d'4 | e'4\rest e'4\rest cis'4 |  e'4\rest e'4\rest a4 } \\
	{ s4 \stemDown b2 |  s4 \stemDown a2 |  s4 \stemDown g2 | s4 \stemDown fis2 }  \\
	{ \stemDown g2. |\stemDown  fis2. |\stemDown  e2. |
	  \stemDown
	  \once \override Tie #'control-points = #'((1.5 . -3) (5.5 . -5.5) (16.5 . -5.7) (20.3 . -3.2))
	d2_~  d8 c8 }
    >>
    << %5,6
	{ b4\rest b4\rest g4 | b4\rest b4\rest a4 } \\
	{ s4 \stemDown d2 | s4. \stemDown e4. } \\
	{ \stemDown b,2. |
	  \once \override Tie #'control-points = #'(( 2 . -3.5) (6 . -6) (12 . -6.5) (16.0 . -3.7))
	c2_~ c8 d8 }
    >>
    << % 7,8
	{ b8\rest \stemUp c'8^~ c'8[ b16 a16] g16 fis16 e16 fis16 | g8 a8 b2 } \\
	{ e8 c8 d2 | \stemDown g,4. [ d8 e8.^\mordent fis16 ] }
    >>
    << %9,10
	{  f'4\rest f'4\rest \stemUp e'4 | s2. } \\
	{ s4 \stemDown b2 | \stemUp a4 s2 } \\
	{ \stemDown
	  \once \override Tie #'control-points = #'((1.5 . -1.5) (6 . -5.5) (16 . -5.5) (22.4 . -1.7))
	g2._~ | g4 fis8\prallprall e8 fis8 b,8 } 
    >>

    << %11
	{ < g' b >2. } \\
	{ \stemUp e8\rest b,8 e4. d8 } \\
	{ \stemDown e,4. e,8 fis,8 g,8 }
    >>
    << %12
	{ cis8 d8 e2 } \\
	{ a,4. b,8 a,8 g,8 }
    >>
    << %13,14
	{ g4\rest g4\rest  d4~ | \stemUp d2 e4 } \\
	{ s4 \stemDown a,2 | s4 \stemDown b,2 }  \\
	{ \stemDown fis,2. | g,2. }
    >>
    << %15-16
	{ fis4 e8. fis16 \TUUUa g4~ | g4 fis2 } \\
	{ a,2._~ | \stemUp a,4. \stemDown a,8 d4 } \\
	{ s2. | \stemDown d,2. }
    >>

     \pageBreak

    << %17-20
	{ \mergeDifferentlyHeadedOn d8 e8 fis2^\mordent | b,8 c8 d2 | c8 e8 g4 fis8^\prallprall e8 | dis8 e8 fis2 } \\
	{ \stemDown d2 c4 | b,4. a,8 b,4 | c4. b,8 a,4 | b,4. a,8 g,8 fis,8 }
    >>

    %21-22
    << { g8\rest a8 g8^\prallprall fis8 g4 | g8\rest a8 g8^\prallprall fis8 g4 } \\
       { e,2 d4                            | c2 b,4 }
    >>
    % 23-27
    <<
       { \stemUp fis4. c'8 b \TUUUa a ~ | a4 g2 | < e' g >2 \TUUUa a4~ | a8[ fis8] \slurDown \appoggiatura e16 d8 e16 fis16 g16 fis16 \TUUUa g8~ | g8 e8 a8 e'8~ e'16 b' a' g' } \\
       { s4 s8 f8\rest f8\rest dis8 | \stemUp e4 s2 | s4 \stemDown e2 | s2.| s2. } \\
       { \stemDown a,8 c b, a, b,4 | e8 b, e, b, e d | c2. | b,2. | a,4. g,8 fis, e, }
    >>
    
    << % 28-30
       { fis'4. r8 r4 | s2. | s2. } \\
       {d,8 a, d c b, a, | g,8 d g f e d | c8 g c' b a g }
    >>

    << %31-32
       { s2. | s2. } \\
       { fis8 d8 g8 b8 d'8 d8 | g4. d8 g,4 }
    >> 
 }
