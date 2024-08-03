all: build/Bewerbung.pdf

build/Bewerbung.pdf: FORCE | build
		@read -p "Firmen Verzeichnis angeben: " module; \
		echo "\input{firmen/"$$module"/recipient.tex}" >> build/firmarecipient.tex; \
		echo "\input{firmen/"$$module"/anschreiben.tex}" >> build/firmaanschreiben.tex; \
		max_print_line=1048576 \
		latexmk \
		  --lualatex \
		  --output-directory=build \
		  --interaction=nonstopmode \
		  --halt-on-error \
		  Bewerbung.tex
		cp build/Bewerbung.pdf Bewerbung.pdf; \
		rm build/firmaanschreiben.tex; \
		rm build/firmarecipient.tex
		
build:
		mkdir -p build

clean:
		rm -rf build

FORCE:

.PHONY: all clean
