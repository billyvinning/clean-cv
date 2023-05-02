FNAME := cv
TARGET := $(FNAME).tex
OUTPUT := $(FNAME).pdf
OPTS := -halt-on-error
EXE := lualatex

all: ${OUTPUT}

clean:
	rm -f $(patsubst %,$(FNAME).%,log aux pdf out)
	rm -f $(OUTPUT)
	rm -f texput.log

$(OUTPUT):
	$(EXE) $(TARGET) $(OPTS)
	$(EXE) $(TARGET) $(OPTS)
