FILE=arian_bessonart_resume
FILE_ES=arian_bessonart_resume_es

all: clean build buildES

build:
	pdflatex ${FILE}.tex

buildES:
	pdflatex ${FILE_ES}.tex

clean:
	- if [ -f ${FILE}.out ] ; then rm -f ${FILE}.out ; fi
	- if [ -f ${FILE}.pdf ] ; then rm -f ${FILE}.pdf ; fi
	- if [ -f ${FILE}.aux ] ; then rm -f ${FILE}.aux ; fi
	- if [ -f ${FILE}.log ] ; then rm -f ${FILE}.log ; fi
	- if [ -f ${FILE_ES}.out ] ; then rm -f ${FILE_ES}.out ; fi
	- if [ -f ${FILE_ES}.pdf ] ; then rm -f ${FILE_ES}.pdf ; fi
	- if [ -f ${FILE_ES}.aux ] ; then rm -f ${FILE_ES}.aux ; fi
	- if [ -f ${FILE_ES}.log ] ; then rm -f ${FILE_ES}.log ; fi

.PHONY: build clean
