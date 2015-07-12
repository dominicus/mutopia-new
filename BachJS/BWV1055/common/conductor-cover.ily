%{
  ***********************************************************************
  * Bach - Keyboard Concerto No.4 in A major                            *
  *                                                                     *
  * typeset by Javier Ruiz-Alma                                         *
  *                                                                     *
  *                                                                     *
  * Generation of Cover Page to be inserted at the top of the           *
  * Conductor's edition - change the proportions if upon changes        *
  * to 'set-global-staff-size                                           *
  *                                                                     *
  * Construction de la couverture à insérer en en-tête du fichier de    *
  * partition directrice - modifier les proportion si modification de   *
  * set-global-staff-size                                               *
  *                                                                     *
  * Do not compile                                                      *
  *                                                                     *
  ***********************************************************************
%}

\include "common/version.ily"
\include "common/variables.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                                        %%
%%      Cover and header pages            %%
%%                                        %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% General info
% The following variables are initialized in the file variables.ily

Composer = \thisComposer
Dates = \thisDates
Title = \thisWork
FromPublisher = \thisSource
InfoCollection = \thisOpus
DateCollection = \thisDateOfPublication
SubTitle = \thisOrchester
Genre = "Conductor's Score"
catalogIdentification = \thisCatalogIdentification
DateEdition = \thisDateEdition
Tonality = \thisTonality
Duration = \thisDuration

Toc = "Table of Contents"

Instrument = "Orchestra"

%%%	Markup functions for cover page
%	Title of work
#(define-markup-command (cover_collection_settings layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 45 #:medium name)))
%	Additional information about the work (Opus Number)
#(define-markup-command (cover_infoCollection_settings layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 22 #:medium name)))
%	Tonality
#(define-markup-command (cover_infoTonality_settings layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 22 #:medium name)))
%	Date of work
#(define-markup-command (cover_dateCollection_settings layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 20 #:medium name)))
%	Title of the piece
#(define-markup-command (cover_title_settings layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 30 #:medium #:smallCaps name)))
%	Subtitle of the piece
#(define-markup-command (cover_subtitle_settings layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 16 #:italic #:medium name)))
%	Composer
#(define-markup-command (cover_composer_settings layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 24 name)))
%	Date of composition
#(define-markup-command (cover_datesComposer_settings layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 17 name)))
%	Genre
#(define-markup-command (cover_genre_settings layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 28 name)))

%	Duration
#(define-markup-command (cover_duration layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 12 name)))

%%%	Table of Contents functions

%	Title of the piece
#(define-markup-command (cover_title_settings_toc layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 18 #:medium #:smallCaps name)))

#(define-markup-command (toc-line layout props label text) (symbol? markup?)
   (interpret-markup layout props(markup #:abs-fontsize 14  #:fill-line (text #:page-ref label "8" "?"))))

#(define-markup-command (Toc-Header layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 22 name)))
%	From Publisher
#(define-markup-command (cover_fromPublisher_settings layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 11 #:medium name)))
%	Instrumentation
#(define-markup-command (instrumentation_settings layout props name) (string?)
   (interpret-markup layout props (markup #:italic #:bold #:abs-fontsize 24 #:medium name)))
%	Composer for TOC
#(define-markup-command (cover_composer_settings_toc layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 14 name)))
%	Tonality for TOC
#(define-markup-command (cover_infoTonality_settings_toc layout props name) (string?)
   (interpret-markup layout props (markup #:abs-fontsize 14 #:medium name)))


%%% Generation of special pages

coverfromPublisher = \markup \cover_fromPublisher_settings #FromPublisher
coverinfoCollection = \markup \cover_infoCollection_settings #InfoCollection
coverTonality = \markup \cover_infoTonality_settings #Tonality
coverdateCollection = \markup \cover_dateCollection_settings #DateCollection
coverTitle = \markup \cover_title_settings #Title
coverSubtitle = \markup \cover_subtitle_settings #SubTitle
coverComposer = \markup \cover_composer_settings #Composer
coverDates = \markup \cover_datesComposer_settings #Dates
coverDuration = \markup \cover_duration #Duration
coverVolutesUp = \markup {\epsfile #X #80 #"./common/scroll-one-top.eps"}
coverVolutesDown = \markup {\epsfile #X #80 #"./common/scroll-one-btm.eps"}
%coverSigleMini = \markup {\epsfile #X #25 #"./Common/DigiClassic.eps"}
coverGenre = \markup \cover_genre_settings #Genre

TocTitle = \markup \cover_title_settings_toc #Title
TocLine = \markup \Toc-Header #Toc
TocComposer = \markup \cover_composer_settings_toc #Composer
TocTonality = \markup \cover_infoTonality_settings_toc #Tonality
Instrumentation = \markup \instrumentation_settings #Instrument

%%% Title Page

CoverA = \markup {
  \override #'(line-width . 145)
  \column {
    \fontsize #3 \bold \override #'(box-padding . 0.0)  \override #'(thickness . 4.0)
    \box
    \column {
      \fill-line {\lower #16 \coverComposer }
      \fill-line {\lower #8 \coverDates}
      \combine \null \vspace #2
      \fill-line {\lower #22 \coverVolutesUp}
      \fill-line {\lower #15 \coverTitle}
      \fill-line {\lower #10 \coverTonality}
      \fill-line {\lower #14 \coverinfoCollection}
      \fill-line {\lower #9 \coverSubtitle}
      \fill-line {\lower #6 \draw-line #'(20 . 0)}
      \fill-line {\lower #9 \coverdateCollection}
      \combine \null \vspace #1
      \fill-line {\lower #19 \coverVolutesDown}
      \fill-line {\lower #14 \coverGenre}
      \combine \null \vspace #3.7
    }
  }
}

%%% Table of Contents

PageToc = \markup {
  \override #'(line-width . 145)
 % \column {
    \fontsize #3
 %   \override #'(box-padding . 1.0) \override #'(thickness . 4.0)
 %   \box
    \column {
      \fill-line {\lower #27  \TocComposer}
      \fill-line {\lower #7 \TocTitle}
      \fill-line {\lower #6 \TocTonality}
      %\fill-line {\lower #12 \coverinfoCollection}
      \fill-line {\lower #22 \TocLine}
      \fill-line {\lower #6 \override #'(thickness . 3) \draw-line #'(70 . 0)}
      \fill-line { \null }
      \fill-line {\override #'(line-width . 70) \lower #10 \toc-line #'MvmtI \concat{ \hspace #3.2 "I - Allergo" } }
      \fill-line {\override #'(line-width . 70) \lower #6 \toc-line #'MvmtII \concat{ \hspace #1.5 "II - Larghetto" } }
      \fill-line {\override #'(line-width . 70) \lower #6 \toc-line #'MvmtIII "III - Allegro ma non tanto"}
      \fill-line {\lower #8 \override #'(thickness . 3) \draw-line #'(70 . 0)}
      \fill-line {\lower #20 \concat { "Source: " \coverfromPublisher }}
      \fill-line {\lower #25 \coverGenre}
      \combine \null \vspace #4.4
  %  }
  }
}
%{
%%% Orchestration page

PageOrch = \markup {
  \override #'(line-width . 145)
  \column {
    \override #'(box-padding . 0.0) \override #'(thickness . 4.0)
    \box
    \column {
      \fill-line {\lower #22 \coverComposer}
      \fill-line {\lower #15 \bold \TocTitle}
      \fill-line {\lower #10 \coverTonality}
      \fill-line {\lower #12 \bold \coverinfoCollection}
      \combine \null \vspace #1
      \fill-line {\lower #16 \Instrumentation}
      \combine \null \vspace #1.5
      \fill-line {\lower #3 \draw-line #'(37 . 0)}
      \combine \null \vspace #2
      \fill-line {\lower #15 \abs-fontsize #15 "2 Flauti + piccolo"}
      \fill-line {\lower #7 \abs-fontsize #15 "2 Oboi"}
      \fill-line {\lower #7 \abs-fontsize #15 "2 Clarinetti"}
      \fill-line {\lower #7 \abs-fontsize #15 "2 Fagotti"}
      \fill-line {\lower #7 \abs-fontsize #15 "4 Corni"}
      \fill-line {\lower #7 \abs-fontsize #15 "2 Trombe"}
      \fill-line {\lower #7 \abs-fontsize #15 "3 Tromboni"}
      \fill-line {\lower #7 \abs-fontsize #15 "Timpani"}
      \fill-line {\lower #7.4 \abs-fontsize #15 "String ensemble"}
      \fill-line {\lower #11.5 \coverDuration}
      \fill-line {\lower #20 \coverVolutes}
      \combine \null \vspace #3
    }
  }
}

%%% Editorial remarks

EditorialRemark =
\markup\fill-line {
  \abs-fontsize #9
  % First column:
  \override #'(line-width . 70) \column {
    \line \bold \smallCaps {Editorial remarks}
    \combine \null \vspace #0.3
    \justify \italic {
      This transcription is engraved from the complete edition of Dvořák's works, Series 3, Vol. 7, edited by O. Šourek
      Plate H 1535. It is also intended to be as faithful to the original as possible, including the exact position of
      dynamics, hairpins, articulations, tremolos, beams, acchordic or polyphonic notation, etc..
    }
    \combine \null \vspace #0.6
    \justify \italic {
      Parenthesized or bracketed items also come from this edition, with the exception of a few cautionary accidentals,
      added to improve the readability of the parts.
    }
    \combine \null \vspace #0.6
    \justify \italic {
      Some important details (missing slurs, articulations) found in the original edition (N. Simrock, 1885),
      were included, and are specified in footnotes.
    }
    \combine \null \vspace #0.6
    \justify \italic {
      Trills of which the second note is altered have this alteration placed UNDER the sign of the trill according
      to the treaty of «Music Theory» by A. Danhauser (1996)
    }
    \combine \null \vspace #0.6
    \justify \italic {
      Other minor changes are described below:
    }
    \combine \null \vspace #0.6
    \justify \italic {
      Timpani: trillspanners have been extended on several bars in place of interruptions on each bar in the
      reference edition, and this apart from a change of note or variation in dynamics (sFz ...)

    }
    \combine \null \vspace #0.6
    \justify \italic {
      Violins: some octaviation symbols have been added for better readability.
    }
    \combine \null \vspace #0.6
    \justify \italic {
      Cello: in the reference score, music with treble clef are transposed up for an octave. In this
      embodiment, these excerpts are written in the C key without transposing, according to modern usage.
    }
    \combine \null \vspace #0.6
    \justify \italic {
      The first movement has the rehearsal mark «I», usually omitted in other scores, but present in the score
      of 1885. This marker was placed here for a better match between different versions (parts and conductor score).

    }
    \combine \null \vspace #0.6
    \justify \italic {
      The second movement includes only A, B and C markers. The item D is found in some editions. It has been
      included in this version.
    }
    \combine \null \vspace #0.6
    \justify \italic {
      In the third movement, the pick-up first bar is fully counted, contrary to usage. We have taken this feature
      to better match existing scores.
    }
    \combine \null \vspace #0.6
    \justify \italic {
      Movement 4 last bars : several editions among which the 1885 edition indicate a FF. We have chosen the FFz from
      our reference edition.
    }
    \combine \null \vspace #0.6
    \justify \italic {
      Movement 4 last bars : several editions whose 1885 edition indicate a FF. We have chosen the FFZ
      from our reference edition.
    }
    \combine \null \vspace #0.6
    \justify \italic {
      Movement 4 strings, 178-180 bars : all editions show an 'Arco' playing. However, the pizzicato appears to
      be more logical, as confirmed by many interpretations. The information corresponding to this second version
      is bracketed.
    }
    \combine \null \vspace #1
  }

  % Second column
  \override #'(line-width . 70)  \abs-fontsize #9
  \column {
    \line \bold \smallCaps {Notes éditoriales}
    \combine \null \vspace #0.6
    \justify \italic {
      Cette transcription est réalisée à partir de l'édition complète de l'œuvre de Dvořák, série 3, vol. 7,
      éditée par O. Šourek, Plate H 1535.
      Elle se veut aussi fidèle que possible à l'originale, et ce y compris la position exacte des nuances,
      des soufflets, des articulations, des trémolos, des ligatures, la notation polyphonique ou accordique, etc.
    }
    \combine \null \vspace #0.6
    \justify \italic {
      Les items placés entre parenthèses ou entre crochets proviennent également de l'édition originale,
      à l'exception de quelques altérations de précaution, ajoutées pour améliorer la lisibilité des parties.
    }
    \combine \null \vspace #0.6
    \justify \italic {
      Quelques détails importants, trouvés dans l'édition originale (N. Simrock, 1885), ont été repris
      (liaisons ou articulations manquantes,...) et sont spécifiées dans les notes de bas de page
    }
    \combine \null \vspace #0.6
    \justify \italic {
      Les trilles dont la seconde note est altérée voient cette altération placée SOUS le signe du trille,
      conformément au traité de la «Théorie de la musique» de A. Danhauser (1996)
    }
    \combine \null \vspace #0.6
    \justify \italic {
      D'autres modifications mineures sont décrites ci-après :
    }
    \combine \null \vspace #0.6
    \justify \italic {
      Timbales : les extenseurs de trilles ont été étendus sur plusieurs mesures là où ils étaient interrompus
      sur chaque barre dans l'édition de référence, et ceci en dehors des cas de changement de note ou
      de variation de nuance (sFz, ... )
    }
    \combine \null \vspace #0.6
    \justify \italic {
      Violons : des symboles d'octaviation ont été ajouté pour assurer une meilleure lisibilité.
    }
    \combine \null \vspace #0.6
    \justify \italic {
      Violoncelle : dans la partition de référence, les passages en clef de sol sont transposés à l'octave supérieure.
      Dans cette réalisation, ces passages sont repris en clef d'ut sans transposition, selon l'usage moderne.
    }
    \combine \null \vspace #0.6
    \justify \italic {
      Le premier mouvement comporte le repère «I», habituellement omis dans d'autres partitions - mais présent
      dans la partition de 1885.
      Ce repère a été repris ici, pour une meilleure correspondance entre différentes versions.
    }
    \combine \null \vspace #0.6
    \justify \italic {
      Le second mouvement ne comprend que les repères A, B et C. Le repère D se retrouve dans certaines éditions.
      Il a été repris dans cette version.
    }
    \combine \null \vspace #0.6
    \justify \italic {
      Dans le troisième mouvement, la mesure de la levée initiale est comptée intégralement, contrairement à l'usage.
      Nous avons repris cette particularité pour une meilleure correspondance avec les partitions existantes.
    }
    \combine \null \vspace #0.6
    \justify \italic {
      Mouvement 3, mesure 163-164, cors I à IV : les indications de sextolet sont supprimées car incorrectes
    }
    \combine \null \vspace #0.6
    \justify \italic {
      Mouvement 4, dernière mesures : plusieurs éditions dont l'édition de 1885 indiquent un FF. Nous
      avons retenu le FFz de notre édition de référence.

    }
    \combine \null \vspace #0.6
    \justify \italic {
      Mouvement 4, cordes, mesures 178-180 : toutes les éditions indiquent un jeu avec l'archet. Toutefois le
      pizzicato apparait comme plus logique, ainsi que le confirment de nombreuses interprétations.
      Les indications correspondant à cette seconde version sont indiquées entre parenthèse.
    }
    \combine \null \vspace #1
  }
}


%%% Cover 3

CoverC =
\markup\fill-line {
  \abs-fontsize #10
  % First column:
  \override #'(line-width . 67) \column {

    \line \bold \caps {The Mutopia project}
    \combine \null \vspace #2.2
    \justify {
      \bold
      http://www.mutopiaproject.org/
    }
    \justify {
      DigiClassic scores (Conductor, parts and study format)
      participate in the Mutopia project which aiming
      at online Internet old scores fallen into the public domain,
      with a print quality problems rarely achieved so far.
    }
    \combine \null \vspace #2.2
    \justify \italic {
      The scores are taken from the original website
      http://imslp.org/, wich includes nearly 60,000 works
      and more than 220,000 free scores (dec. 2012).
    }
    \combine \null \vspace #2.2
    \justify \italic {
      DigiClassic uses free software LilyPond for a print quality
      worthy of the engraving masters of the nineteenth century.
    }
    \combine \null \vspace #2.2
    \justify \italic {
      The scores are as faithful as possible to the originals.
      However, these old scores often show slight differences or
      inconsistencies, which are corrected as logically as possible
      (phrasing, dynamics, sometimes mistakes on notes or durations,
      indication or not of tuplet numbers).
    }
    \combine \null \vspace #2.2
    \justify \italic {
      The quotations in parts also come (if available) from original scores,
      which entrusts the book an excellent read.
    }
    \combine \null \vspace #2.2
    \justify \italic {
      The differences between the parts and the conducting score
      are kept, optimized, either for the player, or for the conductor.
    }
    \combine \null \vspace #2.2
    \justify \italic {
      Despite numerous re-readings, errors may exist in copies.
      If in doubt, check the scores on the IMSLP website,
      references to the publisher and number plate being provided with each score.
    }
    \combine \null \vspace #2.2
    \justify \italic {
      If you find any improvements, please mail
      j-f.lucarelli@espace-midi.com for your comments and advice
    }
    \combine \null \vspace #1
  }

  % Second column
  \override #'(line-width . 67)  \abs-fontsize #10
  \column {
    \line \bold \caps {Le projet Mutopia}
    \combine \null \vspace #2.2
    \justify {
      \bold
      http://www.mutopiaproject.org/
    }
    \justify \italic {
      Les partitions DigiClassic (Conductrices, parties et format d'étude) participent
      au projet Mutopia qui a pour but la publication sur Internet de partitions du domaine public
      avec une qualité rarement atteinte à ce jour.
    }
    \combine \null \vspace #2.2
    \justify \italic {
      Les partitions de départ sont puisées sur le site http://imslp.org/, qui inclut environ 60.000 œuvres
      et plus de 220.000 paritions libres de droit (décembre 2012).
    }
    \combine \null \vspace #2.2
    \justify \italic {
      Les partitions DigiClassic sont gravées à l'aide du logiciel libre LilyPond pour une qualité d'impression
      digne des maîtres de la gravure du XIXe siècle.
    }
    \combine \null \vspace #2.2
    \justify \italic {
      Les partitions sont correspondent les plus fidèlement possible aux travaux originaux.
      Cependant, ces anciennes réalisations montrent souvent de légères différences ou
      incohérences, qui sont corrigées aussi logiquement que possible
      (phrasé, la dynamique, parfois des erreurs sur les notes ou les durées,
      spécification ou non des chiffres relatifs aux triolets, ...).
    }
    \combine \null \vspace #2.2
    \justify \italic {
      Dans les parties séparées, les citations d'autres instruments, qui assurent
      une lecture confortable à l'exécutant, proviennent également(si disponible) des partitions originales.
    }
    \combine \null \vspace #2.2
    \justify \italic {
      Les différences entre les parties et la conductrice
      sont maintenues autant que possible, optimisées, soit pour l'exécutant ou pour le dirigeant.
    }
    \combine \null \vspace #2.2
    \justify \italic {
      Malgré de nombreuses relectures, des erreurs peuvent exister dans les copies.
      En cas de doute, vérifiez les partitions sur le site IMSLP, la références de l'éditeur et du numéro
      de plaque étant fournie avec chaque partition.
    }
    \combine \null \vspace #2.2
    \justify \italic {
      Si vous trouvez des inexactitudes, corrections ou améliorations à apporter à ces partitions,
      envoyez vos commentaires et conseils à l'adresse j-f.lucarelli @ espace-midi.com
    }
    \combine \null \vspace #1
  }
}

%}

%{

% Cover 4

\include "Common/Catalog.ly"

blocTitle = \markup {
  \column {
    \abs-fontsize #13 \bold {
      \fill-line {\lower #5 \line {\thisComposer "  (" \thisDates ")"}}
      \fill-line {\lower #5 \line {\thisWork "  -  " \thisTonality "  -  " \InfoCollection}}
      \fill-line {\lower #5 \SubTitle}
%      \fill-line {\lower #20 \coverSigleMini}
   }
 }
}

blocAvailable = \markup {
  \hspace #15
  \abs-fontsize #10
  \column {
    \bold "Also available on http://www.espace-midi.com/lilypond/en :"
    "-   Source Code (for LilyPond Software)"
    "-   Conductor score"
    "-   Parts scores : "
    \italic "Flauti I, II (and piccolo), Oboi I, II, Clarinette I, II, Fagotti I, II, Corni I, II, III, IV"
    \italic "Trombe I, II, Tromboni I, II, III, Timpani, Violino I, II, Viola, Violoncello, Contrabasso"
  }
}

blocLilypond = \markup {
  \abs-fontsize #13 \italic
  \column {
    \fill-line {"LilyPond is a free Software available"}
    \fill-line {"under GNU License"}
  }
}

blocPermission = \markup {
  \bold \override #'(box-padding . 3.0)
  \override #'(thickness . 4.0)
  \box \column {
    \center-align {
      \line {
        "This music has been typeset and placed in the public domain"
      }
      \line {
        "(under GNU license) by J.F. Lucarelli"
      }
      \line {
        \with-url #"http://www.espace-midi.com/lilyond/en" \thisWebSite
      }
      \line {
        "Unrestricted modification and redistribution is permitted and encouraged."
      }
      \line {
        "Copy this music and share it!"
      }
      \line {
        "Send comments or remarks to " \thisAddress
      }
      \line {\italic
        #(string-append "Engraved with LilyPond " (lilypond-version))
      }
      \line {\italic
        "http://www.LilyPond.org"
      }
    }
  }
}

blocIdentification = \markup {
  \abs-fontsize #8
  \column {
    \hspace #8
    \concat {
      "    "
      \catalogIdentification
      "    "
      \DateEdition
    }
    " "
  }
}



%%% Page 4

Conductor_Catalog = \markup {
    \override #'(line-width . 130 )
    \Catalog
}

CoverD = \markup {
  \column {
    \override #'(line-width . 145)
    \override #'(box-padding . 0.0)
    \override #'(thickness . 4.0)
    \box \override #'(box-padding . 3.0) {
      \column {
        \fontsize #4 \bold
        \fill-line {
          \lower #5.5
          \blocTitle
        }
        \fill-line {
          \lower #6
          \blocAvailable
        }
        \fill-line {
          \lower #5
          \blocLilypond
        }
        \lower #20
        \fill-line {\Conductor_Catalog}
        \lower #7
        \fill-line {
          \lower #15
          \blocPermission
        }
        \lower #15
        \blocIdentification
        \null
      }
    }
  }
}

%}
