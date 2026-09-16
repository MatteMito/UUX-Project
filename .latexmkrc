# The system-wide biber (from MacTeX, /Library/TeX/texbin/biber) is a fat
# universal binary whose internal arm64/x86_64 self-extraction step is
# broken on this machine (its embedded call to `lipo` fails). As a
# workaround we pre-extracted a working arm64-only copy to
# ~/.local/share/biber/biber and point latexmk at it directly.
$biber = "$ENV{HOME}/.local/share/biber/biber %O %S";
