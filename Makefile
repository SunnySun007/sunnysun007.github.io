all: resume.pdf _data/info_html.json

_resume.tex: _resume.template.tex _data/info.yml _subs.rb
	cat $< | ruby _subs.rb > $@

resume.pdf: _resume.tex
	pdflatex $<
	mv _resume.pdf resume.pdf

_data/info_html.json: _data/info.yml _tohtml.py
	python _tohtml.py > $@

clean:
	rm _resume.aux _resume.log _resume.out _resume.tex _data/info_html.json resume.pdf
