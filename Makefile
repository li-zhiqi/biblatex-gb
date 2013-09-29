main:numeric authoryear

numeric: gb7714n numeric_test.tex
	xelatex -shell-escape numeric_test.tex
	biber -l zh__pinyin numeric_test
	xelatex -shell-escape numeric_test.tex
authoryear:gb7714ay authoryear_test.tex
	xelatex -shell-escape authoryear_test.tex
	biber -l zh__pinyin authoryear_test
	xelatex -shell-escape authoryear_test.tex
gb7714n:gb7714n.def common.def
	cat gb7714n.def common.def > gb7714n.bbx
	echo '\endinput' >> gb7714n.bbx
gb7714ay:gb7714ay.def common.def
	cat gb7714ay.def common.def > gb7714ay.bbx
	echo '\endinput' >> gb7714ay.bbx
clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.bcf *.xml
