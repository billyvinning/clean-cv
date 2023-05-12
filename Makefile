CV_FNAME := cv
CV_TARGET := $(CV_FNAME).tex
CV_OUTPUT := $(CV_FNAME).pdf
COVERLETTER_FNAME := coverletter
COVERLETTER_TARGET := $(COVERLETTER_FNAME).tex
COVERLETTER_OUTPUT := $(COVERLETTER_FNAME).pdf
EXE := lualatex
OPTS := -halt-on-error

all: ${CV_OUTPUT} ${COVERLETTER_OUTPUT}

clean:
	rm -f $(patsubst %,$(CV_FNAME).%,log aux pdf out)
	rm -f $(patsubst %,$(COVERLETTER_FNAME).%,log aux pdf out)
	rm -f texput.log

$(CV_OUTPUT):
	$(EXE) $(CV_TARGET) $(OPTS)
	$(EXE) $(CV_TARGET) $(OPTS)

$(COVERLETTER_OUTPUT):
	$(EXE) $(COVERLETTER_TARGET) $(OPTS)
	$(EXE) $(COVERLETTER_TARGET) $(OPTS)
