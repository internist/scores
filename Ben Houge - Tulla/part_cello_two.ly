\include "src/header.ly"
\include "src/settings.ly"
\include "src/cello_two.ly"

\header {
    instrument = "Cello 2"
}

\score {
  \new Score {
  \set Score.markFormatter = #format-mark-box-numbers
  <<
    \new Staff <<
      \set Staff.midiInstrument = "cello"
      \removeWithTag #'score \celloTwoSolo
    >>
  >>
  }
  \layout {
    \include "src/layout.ly"
  }
  \midi{}
}
\paper {
  indent = 25
}
