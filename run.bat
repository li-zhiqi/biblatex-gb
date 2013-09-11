@echo off
del /q *.aux *.bbl *.blg *.log *.out *.toc *.bcf *.xml
xelatex -shell-escape numeric_test.tex
biber -l zh__pinyin numeric_test
xelatex -shell-escape numeric_test.tex

xelatex -shell-escape authoryear_test.tex
biber -l zh__pinyin authoryear_test
xelatex -shell-escape authoryear_test.tex