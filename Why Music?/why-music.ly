\version "2.18.2"
#(set-global-staff-size 33)
\paper { left-margin = 15\mm #(set-paper-size "letter") }
\header { tagline = ##f }
\pointAndClickOff
%------------------------------------------definitions
removeAll = \with {
        \remove Time_signature_engraver
        \remove Bar_engraver
        \remove Staff_symbol_engraver
        firstClef = ##f
        }
flattenBeam = \override Beam.damping = #20
toChange = \markup {
    \hspace #4
    \general-align #Y #CENTER 
    \score {
      \new Staff \removeAll
        { cis'' }
        \layout { indent = 0\in ragged-right = ##t }
    }
}
toCalm = \markup { \hspace #4 \lower #0.5 \huge \dynamic p }
toQuiet = \markup { \lower #0.5 \huge \musicglyph #"rests.2" \hspace #2 }
toEqualize = \markup { \center-column { \large \number { 4 4 } } \hspace #4 }
toTryAgain = \markup { \huge \hspace #5 \musicglyph #"scripts.segno" }
toListen = \markup { \huge \musicglyph #"scripts.ufermata" }
toLaugh = \markup {
    \general-align #Y #CENTER 
    \score {
      \new Staff \removeAll
       { d'2( a') }
       \layout { indent = 0\in ragged-right = ##t }
} }
toBeDifferent = \markup { \hspace #4
    \general-align #Y #CENTER 
    \score {
      \new Staff \removeAll
       { a'4 a'2 }
       \layout { indent = 0\in ragged-right = ##t }
    }
}
toBeEqual  = \markup {
    \general-align #Y #CENTER 
    \score {
      \new Staff \removeAll
       { a'2*1/2 a'2
         \override TextScript.extra-offset = #'( -2 . 1.3 )
         a'1*1/4_"=" }
       \layout { indent = 0\in ragged-right = ##t }
    }
}
toGrow  = \markup {
    \general-align #Y #CENTER 
    \score {
      \new Staff \removeAll
       { \grace { a'8 } a'8*1/2 a'4*1/4 a'2*1/8 a'1*1/16 }
       \layout { indent = 0\in ragged-right = ##t }
    }
}
toWorkAsTeam = \markup {
    \hspace #4
    \general-align #Y #CENTER 
    \score {
      \new Staff \removeAll
       { a'8[ a'8.*2/3 a'16] }
       \layout { indent = 0\in ragged-right = ##t }
    }
}
toReinforce = \markup {
    \general-align #Y #CENTER 
    \score {
      \new Staff \with {
        \remove Time_signature_engraver
        \remove Bar_engraver }
       { <c'g'e''>1*1/8 }
       \layout { indent = 0\in ragged-right = ##t }
    }
}
toJoin = \markup {
    \general-align #Y #CENTER 
    \score {
      \new Staff \with { \remove Time_signature_engraver }
       { \clef bass
         ais,1 ~ \bar "|" ais,1*1/4 }
       \layout { indent = 0\in ragged-right = ##t }
    }
}
toBeUnique = \markup {
    \hspace #5
    \general-align #Y #CENTER 
    \score { 
      \new Staff \with {
        \remove Time_signature_engraver
        \remove Clef_engraver
      }
       { \bar "|" <c'e'g'cis'''>1*1/4 }
       \layout { indent = 0\in ragged-right = ##t }
    }
}
toSupport = \markup {
    \general-align #Y #CENTER 
    \score {
      \new Staff \with {
        \remove Time_signature_engraver
        \remove Bar_engraver }
       { \flattenBeam c'8*8(^[ a'')] }
       \layout { indent = 0\in ragged-right = ##t }
    }
}
toCoincide = \markup {
    \general-align #Y #CENTER 
    \score {
      \new Staff \with { \remove Bar_engraver }
       { c'2 c' }
       \layout { indent = 0\in ragged-right = ##t }
    }
}
toBuild = \markup {
    \general-align #Y #CENTER 
    \score { 
      \new Staff \with {
        \remove Time_signature_engraver
        \remove Bar_engraver
        \remove Clef_engraver
      }
       { f'1*1/4 <f'a'>1*1/4 <f'a'c''>1*1/4
         <f'a'c''f''>1*1/4 <f'a'c''f''a''>1*1/4 <f'a'c''f''a''c'''>1*1/4 }
       \layout { indent = 0\in ragged-right = ##t }
    }
}
toReach = \markup {
    \general-align #Y #CENTER 
    \score {
      \new Staff \with {
        \remove Time_signature_engraver
        \remove Bar_engraver }
       \relative c' { d4*1/2 f8[ g] a[ c e g] r4}
       \layout { indent = 0\in ragged-right = ##t }
    }
}
%-----------print
\markup { 
  \override #'(line-width . 60)
  \center-column {
    \combine \with-color #(x11-color 'grey25) \filled-box #'(0 . 65) #'(-4 . 2.3) #1
             \fill-line { \lower #2 \with-color #white \bold \fontsize #5 " Music...why?" }
     \null \null
     \fill-line { \raise #1 { "To change" "     To calm" "To quiet     " "To equalize" } }
     \fill-line { \toChange \toCalm \toQuiet \toEqualize }
     \null \null
     \fill-line { "To try again" "To listen" "To laugh " }
     \fill-line { \toTryAgain \toListen \toLaugh }
     \null \null
     \fill-line { "To be different" "To be equal" "To grow    " }
     \fill-line { \toBeDifferent \toBeEqual \toGrow }
     \null \null
     \fill-line { "To work as a team" "To reinforce" "To join      " }
     \fill-line { \toWorkAsTeam \toReinforce \toJoin }
     \null \null
     \fill-line { "To be unique" "To support" "To coincide   " }
     \fill-line { \toBeUnique \toSupport \toCoincide }
     \null \null
     \fill-line { \concat { \hspace #6 "To build"} \concat { "To reach" \hspace #8 } }
     \fill-line { \toBuild \toReach }
  }
}

