
SIZE="9X12"

LILYPOND="lilypond -dpaper-size=\"gooeytar_$SIZE\""

$LILYPOND frontpage.ly
$LILYPOND version.ly
$LILYPOND dedication.ly
$LILYPOND blank.ly
$LILYPOND bwv-988.ly

pdftk A=frontpage.pdf B=version.pdf C=goldberg_title.pdf D=blank.pdf E=dedication.pdf F=blank.pdf G=bwv-988.pdf cat A B C D E F G output bwv-988-099b.pdf

