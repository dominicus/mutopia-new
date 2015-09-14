%{
  ***********************************************************************
  * Composer - Work in Tonality                                         *
  * typeset by                                                          *
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
#(ly:set-option 'relative-includes #t)

\include "common/version.ily"

\include "common/variables.ily"
\include "common/conductor-paper.ily"

\include "mutopia-header.ily"

\include "common/definitions.ily"
\include "common/conductor-dimension.ily"

\include "common/conductor-cover.ily"
%---------------- Cover
  \bookpart {
    \CoverA          %-------------------------------------------- ../common/conductor-cover.ily
  }
%---------------- Table of Contents
  \bookpart {
    \header { copyright = ##f }
    \paper {
      print-page-number = ##f
      two-sided = ##f
    }
    \PageToc         %-------------------------------------------- ../common/conductor-cover.ily
  }

%---------------MOVEMENTS 
%---------------First Mov: Allegro
  \include "mov1/music.ily"
  \bookpart {
    \include "mov1/titles.ily"
    \paper { print-page-number = ##t }
    \label #'MvmtI    %-------------------------------------------- dependency to ../common/conductor-cover.ily
    \include "common/conductor-staff.ily"
  }
%---------------Second Mov: Larghetto
  \include "mov2/music.ily"
  \bookpart {
    \include "mov2/titles.ily"
    \paper { print-page-number = ##t }
    \label #'MvmtII   %-------------------------------------------- dependency to ../common/conductor-cover.ily
    \include "common/conductor-staff.ily"
  }
%--------------Third Mov: Allegro ma non tanto
  \include "mov3/music.ily"
  \bookpart {
    \include "mov3/titles.ily"
    \paper { print-page-number = ##t }
    \label #'MvmtIII  %-------------------------------------------- dependency to ../common/conductor-cover.ily
    \include "common/conductor-staff.ily"
  }
