all: resume.pdf _data/info_html.json

_resume.tex: _resume.template.tex _data/info_latex.json _subs.rb
	cat $< | ruby _subs.rb _data/info_latex.json > $@

resume.pdf: _resume.tex
	pdflatex $<
	mv _resume.pdf resume.pdf

_data/info_html.json: _data/info.yml _tofmt.py
	python _tofmt.py html > $@

_data/info_latex.json: _data/info.yml _tofmt.py
	python _tofmt.py latex > $@

clean:
	rm _resume.aux _resume.log _resume.out _resume.tex _data/info_html.json _data/info_latex.json resume.pdf
