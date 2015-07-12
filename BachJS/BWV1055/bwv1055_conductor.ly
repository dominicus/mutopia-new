%{
  ***********************************************************************
  * Bach - Keyboard Concerto No.4 in A major                            *
  *                                                                     *
  * typeset by Javier Ruiz-Alma                                         *
  *                                                                     *
  *                                                                     *
  *                                                                     *
  * Conductor's score                                                   *
  *                                                                     *
  * *******************************                                     *
  * *   Main file                 *                                     *
  * *******************************                                     *
  *                                                                     *
  ***********************************************************************
%}


% #(set-default-paper-size "letter")

\include "common/version.ily"
\include "common/functions.ily"

\include "common/variables.ily"
\include "common/conductor-paper.ily"

% Mutopia Headers
\header {
  date = "1738"
  style = "Baroque"
  source = "Bach-Gesellschaft Ausgabe; Breitkopf and Härtel, 1869"
  editor = "Wilhelm Rust"

  maintainer = "Javier Ruiz-Alma"
  maintainerEmail = "javier (at) ruiz-alma (dot) com"
  license = "Creative Commons Attribution-ShareAlike 4.0"

  mutopiatitle = "Keyboard Concerto Nº 4"
  mutopiaopus = "BWV 1055"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Violin,Viola,'Cello,Continuo,Harpsichord,Clavichord,Piano"
  
 footer = "Mutopia-2015/07/10-1"
 
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\include "common/definitions.ily"
\include "common/conductor-dimension.ily"

%\include "DvorakSYMPH7M1/DvorakSYMPH7M1_Tempi.ly"	% tempi

%\include "DvorakSYMPH7M1/DvorakSYMPH7M1_musique-Flauto_G_I_II.ly"
%\include "DvorakSYMPH7M1/DvorakSYMPH7M1_musique-Oboe_G_I_II.ly"
%\include "DvorakSYMPH7M1/DvorakSYMPH7M1_musique-Clarinetto_G_I_II.ly"
%\include "DvorakSYMPH7M1/DvorakSYMPH7M1_musique-Fagotto_G_I_II.ly"
%\include "DvorakSYMPH7M1/DvorakSYMPH7M1_musique-Corno_G_I_II.ly"
%\include "DvorakSYMPH7M1/DvorakSYMPH7M1_musique-Corno_G_III_IV.ly"
%\include "DvorakSYMPH7M1/DvorakSYMPH7M1_musique-Tromba_G_I_II.ly"
%\include "DvorakSYMPH7M1/DvorakSYMPH7M1_musique-Trombone_G_I_II.ly"
%\include "DvorakSYMPH7M1/DvorakSYMPH7M1_musique-Trombone_III.ly"
%\include "DvorakSYMPH7M1/DvorakSYMPH7M1_musique-Timpani.ly"
%\include "DvorakSYMPH7M1/DvorakSYMPH7M1_musique-Violino_I.ly"
%\include "DvorakSYMPH7M1/DvorakSYMPH7M1_musique-Violino_II.ly"
%%\include "DvorakSYMPH7M1/DvorakSYMPH7M1_musique-Viola.ly"
%\include "DvorakSYMPH7M1/DvorakSYMPH7M1_musique-Violoncello.ly"
%\include "DvorakSYMPH7M1/DvorakSYMPH7M1_musique-Contrabasso.ly"

%\include "DvorakSYMPH7M1/DvorakSYMPH7M1_Staves.ly"

%\include "DvorakSYMPH7M2/DvorakSYMPH7M2_Tempi.ly"	% tempi
%{
\include "DvorakSYMPH7M2/DvorakSYMPH7M2_musique-Flauto_G_I_II.ly"
\include "DvorakSYMPH7M2/DvorakSYMPH7M2_musique-Oboe_G_I_II.ly"
\include "DvorakSYMPH7M2/DvorakSYMPH7M2_musique-Clarinetto_G_I_II.ly"
\include "DvorakSYMPH7M2/DvorakSYMPH7M2_musique-Fagotto_G_I_II.ly"
\include "DvorakSYMPH7M2/DvorakSYMPH7M2_musique-Corno_G_I_II.ly"
\include "DvorakSYMPH7M2/DvorakSYMPH7M2_musique-Corno_G_III_IV.ly"
\include "DvorakSYMPH7M2/DvorakSYMPH7M2_musique-Tromba_G_I_II.ly"
\include "DvorakSYMPH7M2/DvorakSYMPH7M2_musique-Trombone_G_I_II.ly"
\include "DvorakSYMPH7M2/DvorakSYMPH7M2_musique-Trombone_III.ly"
\include "DvorakSYMPH7M2/DvorakSYMPH7M2_musique-Timpani.ly"
\include "DvorakSYMPH7M2/DvorakSYMPH7M2_musique-Violino_I.ly"
\include "DvorakSYMPH7M2/DvorakSYMPH7M2_musique-Violino_II.ly"
\include "DvorakSYMPH7M2/DvorakSYMPH7M2_musique-Viola.ly"
\include "DvorakSYMPH7M2/DvorakSYMPH7M2_musique-Violoncello.ly"
\include "DvorakSYMPH7M2/DvorakSYMPH7M2_musique-Contrabasso.ly"

\include "DvorakSYMPH7M2/DvorakSYMPH7M2_Staves.ly"

\include "DvorakSYMPH7M3/DvorakSYMPH7M3_Tempi.ly"	% tempi

\include "DvorakSYMPH7M3/DvorakSYMPH7M3_musique-Flauto_G_I_II.ly"
\include "DvorakSYMPH7M3/DvorakSYMPH7M3_musique-Piccolo.ly"
\include "DvorakSYMPH7M3/DvorakSYMPH7M3_musique-Oboe_G_I_II.ly"
\include "DvorakSYMPH7M3/DvorakSYMPH7M3_musique-Clarinetto_G_I_II.ly"
\include "DvorakSYMPH7M3/DvorakSYMPH7M3_musique-Fagotto_G_I_II.ly"
\include "DvorakSYMPH7M3/DvorakSYMPH7M3_musique-Corno_G_I_II.ly"
\include "DvorakSYMPH7M3/DvorakSYMPH7M3_musique-Corno_G_III_IV.ly"
\include "DvorakSYMPH7M3/DvorakSYMPH7M3_musique-Tromba_G_I_II.ly"
\include "DvorakSYMPH7M3/DvorakSYMPH7M3_musique-Timpani.ly"
\include "DvorakSYMPH7M3/DvorakSYMPH7M3_musique-Violino_I.ly"
\include "DvorakSYMPH7M3/DvorakSYMPH7M3_musique-Violino_II.ly"
\include "DvorakSYMPH7M3/DvorakSYMPH7M3_musique-Viola.ly"
\include "DvorakSYMPH7M3/DvorakSYMPH7M3_musique-VioloncelloI.ly"
\include "DvorakSYMPH7M3/DvorakSYMPH7M3_musique-VioloncelloII.ly"
\include "DvorakSYMPH7M3/DvorakSYMPH7M3_musique-Contrabasso.ly"

\include "DvorakSYMPH7M3/DvorakSYMPH7M3_Staves.ly"

\include "DvorakSYMPH7M4/DvorakSYMPH7M4_Tempi.ly"	% tempi

\include "DvorakSYMPH7M4/DvorakSYMPH7M4_musique-Flauto_G_I_II.ly"
\include "DvorakSYMPH7M4/DvorakSYMPH7M4_musique-Flauto_G_II.ly"
\include "DvorakSYMPH7M4/DvorakSYMPH7M4_musique-Oboe_G_I_II.ly"
\include "DvorakSYMPH7M4/DvorakSYMPH7M4_musique-Clarinetto_G_I_II.ly"
\include "DvorakSYMPH7M4/DvorakSYMPH7M4_musique-Fagotto_G_I_II.ly"
\include "DvorakSYMPH7M4/DvorakSYMPH7M4_musique-Corno_G_I_II.ly"
\include "DvorakSYMPH7M4/DvorakSYMPH7M4_musique-Corno_G_III_IV.ly"
\include "DvorakSYMPH7M4/DvorakSYMPH7M4_musique-Tromba_G_I_II.ly"
\include "DvorakSYMPH7M4/DvorakSYMPH7M4_musique-Trombone_G_I_II.ly"
\include "DvorakSYMPH7M4/DvorakSYMPH7M4_musique-Trombone_III.ly"
\include "DvorakSYMPH7M4/DvorakSYMPH7M4_musique-Timpani.ly"
\include "DvorakSYMPH7M4/DvorakSYMPH7M4_musique-Violino_I.ly"
\include "DvorakSYMPH7M4/DvorakSYMPH7M4_musique-Violino_II.ly"
\include "DvorakSYMPH7M4/DvorakSYMPH7M4_musique-Viola.ly"
\include "DvorakSYMPH7M4/DvorakSYMPH7M4_musique-Violoncello.ly"
\include "DvorakSYMPH7M4/DvorakSYMPH7M4_musique-Contrabasso.ly"

\include "DvorakSYMPH7M4/DvorakSYMPH7M4_Staves.ly"
%}


\include "common/conductor-cover.ily"

%---------------- Cover

%\book {
  \bookpart {
    \CoverA
  }

  % Blank page
%{
  \bookpart {
    \paper {
      print-page-number = ##f
    }
    \markup {\null}
  }

%}

%---------------- Table of Contents

  \bookpart {
    \header { copyright = ##f }
    \paper {
      print-page-number = ##f
      two-sided = ##f
    }
    \PageToc
  }

%{

  % Orchestration

  \bookpart {
    \paper {
      print-page-number = ##f
    }
    \PageOrch
  }

  % Remarques éditoriales

  \bookpart {
    \paper {
      print-page-number = ##t
    }
    \EditorialRemark
  }

  % Page blanche

  \bookpart {
    \paper {
      print-page-number = ##f
    }
    \markup {\null}
  }
%}
%%%%%%%%%%%%%  Movements

%------- Movement 1: Allegro

  \include "mov1/mov1_music.ily"
  \bookpart {
    \include "mov1/mov1_titles.ily"
    %\header { copyright = ##f }
    \paper { print-page-number = ##t }
    \label #'MvmtI
    \include "common/conductor_staves.ily"
    \include "mov1/mov1_midi.ily"
  }


%------- Movement 2: Larghetto

  \include "mov2/mov2_music.ily"
  \bookpart {
    \include "mov2/mov2_titles.ily"
 %   \header { copyright = ##f }
    \paper { print-page-number = ##t }
    \label #'MvmtII
    \include "common/conductor_staves.ily"
    \include "mov2/mov2_midi.ily"
  }
  
%------- Movement 3: Allegro ma non tanto

  \include "mov3/mov3_music.ily"
  \bookpart {
    \include "mov3/mov3_titles.ily"
 %   \header { copyright = ##f }
    \paper { print-page-number = ##t }
    \label #'MvmtIII
    \include "common/conductor_staves.ily"
    \include "mov3/mov3_midi.ily"
  }

%{
  \bookpart {
    % autoriser les headers et footers
    \paper {
      print-page-number = ##t
      oddFooterMarkup = \Footer
      evenFooterMarkup = \Footer
    }

    \include "DvorakSYMPH7M1/DvorakSYMPH7M1_Titre_Pri.ly"	% titres

    \label #'MvmtI
    \score {
      \keepWithTag #'conductorScore
      <<
        \new StaffGroup
        <<
          \staffSgMaFlautoIAII
          \staffSgMaOboeIAII
          \staffSgMaClarinettoIAII
          \staffSgMaFagottoIAII
        >>
        \new StaffGroup
        <<
          \new GrandStaff
          <<
            \staffSgMaCornoIAII
            \staffSgMaCornoIIIAIV
          >>
          \staffSgMaTrombaIAII
          \new GrandStaff
          <<
            \staffSgMaTromboneIAII
            \staffSgMaTromboneIII
          >>
        >>
        \staffSgMaTimpani
        \new StaffGroup
        <<
          \new GrandStaff
          <<
            \staffSgMaViolinoI
            \staffSgMaViolinoII
          >>
          \staffSgMaViola
          \staffSgMaVioloncello
          \staffSgMaContrabasso
        >>
      >>

      \layout {
        \context {
          \Score
          \override BarLine #'layer = #-4
        }
        \context {
          \Staff
          \override BarLine #'layer = #-4
        }
        \context {
          \Voice
          \override TextScript #'whiteout = ##t
          \override TextScript #'layer = #4
          \override DynamicText #'whiteout = ##t
          \override DynamicText #'layer = #4
          \override DynamicTextSpanner #'whiteout = ##t
          \override DynamicTextSpanner #'layer = #4
        }
      }
      \midi {}
    }
  }

  \bookpart {
    \paper {
      print-page-number = ##t
      oddFooterMarkup = \Footer
      evenFooterMarkup = \Footer
    }
    \header {
      title = " "
      subtitle = " "
      composer = " "
      opus = " "
      subsubtitle = \markup {\center-column {\fontsize #6 \lower #10 "-- II --"}}
      copyright = " "
    }
    \label #'MvmtII
    \score {
      \keepWithTag #'conductorScore
      <<
        \new StaffGroup
        <<
          \staffSgMbFlautoIAII
          \staffSgMbOboeIAII
          \staffSgMbClarinettoIAII
          \staffSgMbFagottoIAII
        >>
        \new StaffGroup
        <<
          \new GrandStaff
          <<
            \staffSgMbCornoIAII
            \staffSgMbCornoIIIAIV
          >>
          \staffSgMbTrombaIAII
          \new GrandStaff
          <<
            \staffSgMbTromboneIAII
            \staffSgMbTromboneIII
          >>
        >>
        \staffSgMbTimpani
        \new StaffGroup
        <<
          \new GrandStaff
          <<
            \staffSgMbViolinoI
            \staffSgMbViolinoII
          >>
          \staffSgMbViola
          \staffSgMbVioloncello
          \staffSgMbContrabasso
        >>
      >>

      \layout {
        \context {
          \Score
          \override BarLine #'layer = #-4
        }
        \context {
          \Staff
          \override BarLine #'layer = #-4
        }
        \context {
          \Voice
          \override TextScript #'whiteout = ##t
          \override TextScript #'layer = #4
          \override DynamicText #'whiteout = ##t
          \override DynamicText #'layer = #4
          \override DynamicTextSpanner #'whiteout = ##t
          \override DynamicTextSpanner #'layer = #4
        }
      }
      \midi {}
    }
  }

  \bookpart {
    \paper {
      print-page-number = ##t
      oddFooterMarkup = \Footer
      evenFooterMarkup = \Footer
    }
    \header {
      title = " "
      subtitle = " "
      composer = " "
      opus = " "
      subsubtitle = \markup {\center-column {\fontsize #6 \lower #10 "-- III --"}}
      copyright = " "
    }
    \label #'MvmtIII
    \score {
      \keepWithTag #'conductorScore
      <<
        \new StaffGroup
        <<
          % Flûtes : dédoublée pendant 3 mesures pour remplacement par le piccolo
          \new GrandStaff
          <<
            \staffSgMcFlautoIAII
            \staffSgMcPiccolo
          >>
          \staffSgMcOboeIAII
          \staffSgMcClarinettoIAII
          \staffSgMcFagottoIAII
        >>
        \new StaffGroup
        <<
          \new GrandStaff
          <<
            \staffSgMcCornoIAII
            \staffSgMcCornoIIIAIV
          >>
          \staffSgMcTrombaIAII
        >>
        \staffSgMcTimpani
        \new StaffGroup
        <<
          \new GrandStaff
          <<
            \staffSgMcViolinoI
            \staffSgMcViolinoII
          >>
          \staffSgMcViola
          \new GrandStaff
          <<
            % Violoncelles : comprennent temporairement deux parties.
            \staffSgMcVioloncelloI
            \staffSgMcVioloncelloII
          >>
          \staffSgMcContrabasso
        >>
      >>

      \layout {
        % Violoncelles : comprennent temporairement deux parties. Il faut masquer les portées vides ailleurs,
        % et restaurer la visibilité des autres portées vides (via le fichier staves.ly)
        % Flûtes : comprennent temporairement deux parties. Il faut masquer les portées vides ailleurs,
        % et restaurer la visibilité des autres portées vides (via le fichier staves.ly)
        \context {
          \RemoveEmptyStaffContext
          \override VerticalAxisGroup #'remove-first = ##t
        }
        \context {
          \Score
          \override BarLine #'layer = #-4
        }
        \context {
          \Staff
          \override BarLine #'layer = #-4
        }
        \context {
          \Voice
          \override TextScript #'whiteout = ##t
          \override TextScript #'layer = #4
          \override DynamicText #'whiteout = ##t
          \override DynamicText #'layer = #4
          \override DynamicTextSpanner #'whiteout = ##t
          \override DynamicTextSpanner #'layer = #4
        }
      }
      \midi {}
    }
  }

  \bookpart {
    \paper {
      print-page-number = ##t
      oddFooterMarkup = \Footer
      evenFooterMarkup = \Footer
    }
    \header {
      title = " "
      subtitle = " "
      composer = " "
      opus = " "
      subsubtitle = \markup {\center-column {\fontsize #6 \lower #10 "-- IV --"}}
      copyright = " "
    }
    \label #'MvmtIV
    \score {
      \keepWithTag #'conductorScore
      <<
        \new StaffGroup
        <<
          \new GrandStaff
          <<
            \staffSgMdFlautoIAII
            \staffSgMdFlautoIIB
          >>
          \staffSgMdOboeIAII
          \staffSgMdClarinettoIAII
          \staffSgMdFagottoIAII
        >>
        \new StaffGroup
        <<
          \new GrandStaff
          <<
            \staffSgMdCornoIAII
            \staffSgMdCornoIIIAIV
          >>
          \staffSgMdTrombaIAII
          \new GrandStaff
          <<
            \staffSgMdTromboneIAII
            \staffSgMdTromboneIII
          >>
        >>
        \staffSgMdTimpani
        \new StaffGroup
        <<
          \new GrandStaff
          <<
            \staffSgMdViolinoI
            \staffSgMdViolinoII
          >>
          \staffSgMdViola
          \staffSgMdVioloncello
          \staffSgMdContrabasso
        >>
      >>

      \layout {
        % Flûtes : comprennent temporairement deux parties. Il faut masquer les portées vides ailleurs,
        % et restaurer la visibilité des autres portées vides (via le fichier staves.ly)
        \context {
          \RemoveEmptyStaffContext
          \override VerticalAxisGroup #'remove-first = ##t
        }
        \context {
          \Score
          \override BarLine #'layer = #-4
        }
        \context {
          \Staff
          \override BarLine #'layer = #-4
        }
        \context {
          \Voice
          \override TextScript #'whiteout = ##t
          \override TextScript #'layer = #4
          \override DynamicText #'whiteout = ##t
          \override DynamicText #'layer = #4
          \override DynamicTextSpanner #'whiteout = ##t
          \override DynamicTextSpanner #'layer = #4
        }
      }
      \midi {}
    }
  }

  % suppression de la \tagline, elle est comprise dans la couverture D
  \header {
    tagline = ##f
  }

  % Pages blanches éventuelle - il faut arriver à un multiple de 2
  \bookpart {
    \paper {
      print-page-number = ##f
    }
    \markup {\null}
  }

  % Couverture 3

  \bookpart {
    \paper {
      % Pas d'encadrement, cadrage constitué par les marges
      print-page-number = ##f
    }
    \CouvertureC
  }

  % Page blanche
  \bookpart {
    \paper {
      print-page-number = ##f
    }
    \markup {\null}
  }

  % Couverture 4

  \bookpart {
    \paper {
      print-page-number = ##f
    }
    \CouvertureD
  }
  
  
%}
%}

