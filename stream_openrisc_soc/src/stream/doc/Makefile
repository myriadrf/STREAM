OBJECTS := $(patsubst %.txt,%.html,$(wildcard *.txt))

all: $(OBJECTS)

%.html: %.txt
	asciidoc $<

clean:
	rm $(OBJECTS)
