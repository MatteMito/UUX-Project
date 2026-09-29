# Use XeLaTeX as the default compiler.
# Required by the fontspec package (pdflatex is not supported).
$pdf_mode = 5;        # 5 = use xelatex
$postscript_mode = 0;
$dvi_mode = 0;

# Biber: use a local override if it exists (macOS/ARM workaround),
# otherwise fall back to the system-installed biber (Linux).
my $local_biber = "$ENV{HOME}/.local/share/biber/biber";
if (-x $local_biber) {
    $biber = "$local_biber %O %S";
}
