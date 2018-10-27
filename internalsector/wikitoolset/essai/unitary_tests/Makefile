SOURCES := make_test_v.ml \
html_lexer_u_any.ml \
tools_u_any.ml 

#thtml_tree_v.ml tread_record_list_v.ml

INCLUDES = ../

# The executable file to generate

EXEC = test

########################## Advanced user's variables #####################
#
# The Caml compilers.
# You may fix here the path to access the Caml compiler on your machine
# You may also have to add various -I options.

CAMLC = ocamlc -warn-error A -g
CAMLOPT = ocamlopt
CAMLDEP = ocamldep

LIBS=$(WITH_UNIX) $(WITH_STR)

# Should be set to -custom if you use any of the libraries above
# or if any C code have to be linked with your program
# (irrelevant for ocamlopt)

CUSTOM=-custom

WITH_UNIX =unix.cma -cclib -lunix

WITH_STR =str.cma -cclib -lstr

all: depend $(EXEC)

opt : $(EXEC).opt

BYTOBJS = $(SOURCES:.ml=.cmo)
OPTOBJS = $(SOURCES:.ml=.cmx)

UPPER_LIBRARIES = ../program.cma

$(EXEC): $(BYTOBJS) $(UPPER_LIBRARIES)
	$(CAMLC) -o $(EXEC) $(LIBS) $(UPPER_LIBRARIES) $(BYTOBJS) 

$(EXEC).opt: $(OPTOBJS)
	$(CAMLOPT) -o $(EXEC) $(LIBS:.cma=.cmxa) $(OPTOBJS)

.SUFFIXES:
.SUFFIXES: .ml .mli .cmo .cmi .cmx .cma

.ml.cmo:
	$(CAMLC) -I ../ -c $<

.mli.cmi:
	$(CAMLC) -I ../ -c $<

.ml.cmx:
	$(CAMLOPT) -I ../ -c $<

very_clean : clean
	rm *~ 

clean:
	rm -f *.cm[aiox] 
	rm -f $(EXEC)
	rm -f $(EXEC).opt

depend: $(SOURCES)
	$(CAMLDEP) *.mli *.ml > .depend

include .depend
