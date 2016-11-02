\version "2.12.3"

 guitartwo = {
 \override Script #'padding = #1.0
 \override Staff.NoteCollision #'merge-differently-dotted = ##t
 \clef "G_8"
 \key g \major
 \time 3/4
 \set harmonicDots = ##t
% \set fontSize = #-3 \once \override Stem #'length = #4 
% \set fontSize = #-2 \once \override Stem #'length = #5 
% \normalsize a4
    << %1,2,3,4
	{ f'4\rest f'4\rest d'4 | f'4\rest f'4\rest d'4 | e'4\rest e'4\rest cis'4 |  e'4\rest e'4\rest a4 } \\
	{ s4 \stemDown b2 |  s4 \stemDown a2 |  s4 \stemDown g2 | s4 \stemDown fis2 }  \\
	{ \stemDown g2. |\stemDown  fis2. |\stemDown  e2. |\stemDown d2_~  d8 c8 }
    >>
    << %5,6
	{ b4\rest b4\rest g4 | b4.\rest b8\rest a4 } \\
	{ s4 \stemDown d2 | s4. \stemDown e4. } \\
	{ \stemDown b,2. | c2_~ c8 d8 }
    >>
    << % 7,8
	{ b8\rest \stemUp c'8^~ c'8[ b16 a16] g16 fis16 e16 fis16 | g8 a8 b2 } \\
	{ e8 c8 d2 | \stemDown g,4. d8 e8.\prallmordent fis16 }
    >>
    << %9,10
	{  f'4\rest f'4\rest \stemUp e'4 | s2. } \\
	{ s4 \stemDown b2 | \stemUp a4 s2 } \\
	{ \stemDown g2._~ | g4 fis8\prallprall e8 fis8 b,8 } 
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
	{ fis4 e8. fis16 g4-~ | g4 fis2 } \\
	{ a,2. | d4~ d8 a,8 d4 } \\
	{ s2. | s2. }
    >>

     \pageBreak

    << %17-20
	{ d8 e8 fis2^\prallmordent | b,8 c8 d2 | c8 e8 g4 fis8^\prallprall e8 | dis8 e8 fis2 } \\
	{ \stemDown d2 c4 | b,4. a,8 b,4 | c4. b,8 a,4 | b,4. a,8 g,8 fis,8 }
    >>

    %21-22
    << { g8\rest a8 g8^\prallprall fis8 g4 | g8\rest a8 g8^\prallprall fis8 g4 } \\
       { e,2 d4                            | c2 b,4 }
    >>
    % 23-27
    <<
       { \stemUp fis4. c'8 b a-~   | a4 g2           | < g e' >2 a4~  | a8[ fis8] \slurDown \appoggiatura e16 d8 e16 fis16 g16 fis16 g8~ | g8 e8 a8 e'8~ e'16 b' a' g' } \\
       { s4 s8 f8\rest f8\rest dis8   | \stemUp e4 s2   | s4 \stemDown e2 |  s2. | s2. } \\
       { \stemDown a,8 c b, a, b,4 | e8 b, e, b, e d | c2.   | b,2. | a,4. g8 fis e }
    >>
    
    << % 28-30
       { fis'4 s2 | s2. | s2. } \\
       {d8 a, d c b, a, | g,8 d g f e d | c8 g c' b a g }
    >>

    << %31-32
       { s2._\markup \column 
            {
                \null
                \null
                \null
                \null
                \null
                \null
                \null
                \null
                \null
                \null
                \null
                \null
                \translate #'(-7 . 0) \epsfile #Y #37 #'"logo_15X45.eps"
            }
       | s2. } \\
       { fis8 d8 g8 b8 d'8 d8 | g4. d8 g,4_\fermata }
    >> 
 }
