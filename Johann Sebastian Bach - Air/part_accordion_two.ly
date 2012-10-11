\include "src/header.ly"

\header {
  instrument = "Accordion 2"
}

\include "src/settings.ly"
\include "src/accordion.ly"
\include "src/accordion_two.ly"

\score {
  \new Score {
    \set Score.markFormatter = #format-mark-box-numbers
    \new Staff <<
      \set Staff.midiInstrument = "accordion"
      \keepWithTag #'part \accordionTwoSolo
    >>
  }
  \layout {
    \include "src/layout.ly"
  }
  \midi {}
}
\paper {
}
