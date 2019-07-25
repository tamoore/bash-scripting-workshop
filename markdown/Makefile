SLIDES := $(patsubst %.md,%.pdf,$(wildcard *.md))
TEX := $(patsubst %.md,%.tex,$(wildcard *.md))

all :  $(TEX) $(SLIDES)

%.tex: %.md
	pandoc $^ \
		-t beamer \
		--standalone \
		--slide-level 2 \
		-o $@ 

%.pdf : %.md
	rm -rf temp && \
	pandoc $^ \
		-t beamer \
		--slide-level 2 \
		--pdf-engine-opt=--output-dir=temp \
		--pdf-engine-opt=--shell-escape \
		-o $@ 


