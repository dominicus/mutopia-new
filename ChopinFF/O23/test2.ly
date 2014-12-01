\version "2.18.2"
\score {
  \new PianoStaff
  <<
     \new Staff  \with { \remove "Time_signature_engraver" }
     \relative c'''{
         \repeat unfold 7 { c c c c }
         \stopStaff
         \startStaff
         \override Staff.LedgerLineSpanner.length-fraction = #0.1
         \override Staff.LedgerLineSpanner.minimum-length-fraction = #0.1
         \repeat unfold 7 { c c c c }
     }
     \new Staff  \with { \remove "Time_signature_engraver" }
     \relative c'''{
         \repeat unfold 7 { c c c c } 
         \stopStaff
         \startStaff
         \override Staff.LedgerLineSpanner.length-fraction = #0.1
         \override Staff.LedgerLineSpanner.minimum-length-fraction = #0.1
         \repeat unfold 7 { c c c c }
     }
  >>
     \layout { 
       indent = 0.0
       ragged-right = ##t     
     }
  }