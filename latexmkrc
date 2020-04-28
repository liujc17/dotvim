## .latexmkrc

# Set the commands executed by pdflatex,xelatex,bibtex,biber
$pdflatex = "pdflatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S";
$xelatex = "xelatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S";
$bibtex = "bibtex %O %S";

# 0: never use BibTeX or biber; never delete .bbl files in a cleanup.
# 1: only use bibtex or biber if the bib files exist; never delete .bbl files in a cleanup.
# 1.5: only use bibtex or biber if the bib files exist; conditionally delete .bbl files in a cleanup.
# 2: run bibtex or biber whenever it appears necessary to update the bbl files,
# without testing for the existence of the bib files; always delete .bbl files in a cleanup.
$bibtex_use = 2;

# If 0, do NOT generate pdf document.
# If 1, generate pdf document using the command specified by $pdflatex variable.
# If 2, generate pdf document from the ps file using the command specified by the $ps2pdf variable.
# If 3, generate pdf document from the dvi file using the command specified by the $dvipdf variable.
# If 4, generate pdf document using the command specified by the $lualatex variable.
# If 5, generate pdf document using the commands specified by the $xelatex and xdvipdfmx variables.
$pdf_mode = 5;
$preview_mode = 1;
# pdf browser
$pdf_previewer='start okular';

$out_dir = "build";
# Generate .fls files
$recorder = 1;

