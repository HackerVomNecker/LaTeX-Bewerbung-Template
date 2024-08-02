all: build/Bewerbung.pdf

build/Bewerbung.pdf: FORCE | build
		max_print_line=1048576 \
		latexmk \
		  --lualatex \
		  --output-directory=build \
		  --interaction=nonstopmode \
		  --halt-on-error
		cp build/Bewerbung.pdf Bewerbung.pdf
build:
		mkdir -p build

clean:
		rm -rf build

FORCE:

.PHONY: all clean
