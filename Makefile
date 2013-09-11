main:numeric authoryear

numeric:
	xelatex -shell-escape numeric_test.tex
	biber -l zh__pinyin numeric_test
	xelatex -shell-escape numeric_test.tex
authoryear:
	xelatex -shell-escape authoryear_test.tex
	biber -l zh__pinyin authoryear_test
	xelatex -shell-escape authoryear_test.tex
clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.bcf *.xml
