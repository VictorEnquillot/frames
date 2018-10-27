#*********************************************************************#
#                                                                     #
#                           Objective Caml                            #
#                                                                     #
#            Pierre Weis, projet Cristal, INRIA Rocquencourt          #
#                                                                     #
#  Copyright 1998 Institut National de Recherche en Informatique et   #
#  en Automatique.  Distributed only by permission.                   #
#                                                                     #
#*********************************************************************#

#                   Generic Makefile for Objective Caml Programs

############################ Documentation ######################
#
# To use this Makefile:
# -- You must fix the value of the variable SOURCES below.
# (The variable SOURCES is the list of your Caml source files.)
# -- You must create a file .depend, using
# $touch .depend
# (This file will contain the dependancies between your Caml modules,
#  automatically computed by this Makefile.)
#
# Usage of this Makefile:
# To incrementally recompile the system, type
#     make
# To recompute dependancies between modules, type
#     make depend
# To remove the executable and all the compiled files, type
#     make clean
# To compile using the native code compiler
#     make opt
#
##################################################################


##################################################################
#
# Advanced usage:
# ---------------

# If you want to fix the name of the executable, set the variable
# EXEC, for instance, if you want to obtain a program named my_prog:
# EXEC = my_prog

# If you need special libraries provided with the Caml system,
# (graphics, arbitrary precision numbers, regular expression on strings, ...),
# you must set the variable LIBS to the proper set of libraries. For
# instance, to use the graphics library set LIBS to $(WITHGRAPHICS):
# LIBS=$(WITHGRAPHICS)

# You may use any of the following predefined variable
# WITHGRAPHICS : provides the graphics library
# WITHUNIX : provides the Unix interface library
# WITHSTR : provides the regular expression string manipulation library
# WITHNUMS : provides the arbitrary precision arithmetic package
# WITHTHREADS : provides the byte-code threads library
# WITHDBM : provides the Data Base Manager library
#
#
########################## End of Documentation ####################



########################## User's variables #####################
#
# The Caml sources (including camlyacc and camllex source files)

SOURCES = \
html_attribute_t.ml \
html_attribute_parameter_t.ml \
html_tag_t.ml \
html_lexeme_t.ml \
html_tree_t.ml \
tools_v.ml \
html_attribute_v.ml \
html_attribute_parameter_v.ml \
html_tag_v.ml \
html_lexeme_v.ml \
html_lexer_v.ml \
#html_parser_v.ml 

# The executable file to generate

EXEC = program

########################## Advanced user's variables #####################
#
# The Caml compilers.
# You may fix here the path to access the Caml compiler on your machine
# You may also have to add various -I options.

CAMLC = ocamlc -warn-error A -g
CAMLOPT = ocamlopt
CAMLDEP = ocamldep

# not used
CAMLLEX = ocamllex
CAMLYACC = ocamlyacc

# The list of Caml libraries needed by the program
# For instance:
# LIBS=$(WITH_GRAPHICS) $(WITH_UNIX) $(WITH_STR) $(WITH_NUMS) $(WITH_THREADS)\
# $(WITH_DBM)

LIBS=$(WITH_UNIX) $(WITH_STR)

# Should be set to -custom if you use any of the libraries above
# or if any C code have to be linked with your program
# (irrelevant for ocamlopt)

CUSTOM=-custom

# Default setting of the WITH_* variables. Should be changed if your
# local libraries are not found by the compiler.
# WITH_GRAPHICS =graphics.cma -cclib -lgraphics -cclib -L/usr/X11R6/lib -cclib -lX11

# -cclib -llibname
#   Pass the -llibname option to the C linker when linking in "custom runtime" mode
#   (see the -custom option). This causes the given C library to be linked with the program.

WITH_UNIX =unix.cma -cclib -lunix

WITH_STR =str.cma -cclib -lstr

# WITH_NUMS =nums.cma -cclib -lnums

# WITH_THREADS =threads.cma -cclib -lthreads

# WITH_DBM =dbm.cma -cclib -lmldbm -cclib -lndbm

################ End of user's variables #####################


##############################################################
################ This part should be generic
################ Nothing to set up or fix here
##############################################################

all: depend $(EXEC).cma

opt : $(EXEC).opt

#ocamlc -custom other options graphics.cma other files -cclib -lgraphics -cclib -lX11
#ocamlc -thread -custom other options threads.cma other files -cclib -lthreads
#ocamlc -custom other options str.cma other files -cclib -lstr
#ocamlc -custom other options nums.cma other files -cclib -lnums
#ocamlc -custom other options unix.cma other files -cclib -lunix
#ocamlc -custom other options dbm.cma other files -cclib -lmldbm -cclib -lndbm

BYTOBJS = $(SOURCES:.ml=.cmo)
OPTOBJS = $(SOURCES:.ml=.cmx)

$(EXEC).cma: $(BYTOBJS)
	$(CAMLC) -a -o $(EXEC).cma $(LIBS) $(BYTOBJS)

$(EXEC).opt: $(OPTOBJS)
	$(CAMLOPT) -o $(EXEC) $(LIBS:.cma=.cmxa) $(OPTOBJS)

.SUFFIXES:
.SUFFIXES: .ml .mli .cmo .cmi .cmx .cma

.ml.cmo:
	$(CAMLC) -c $<

.mli.cmi:
	$(CAMLC) -c $<

.ml.cmx:
	$(CAMLOPT) -c $<

very_clean : clean
	rm *~ 

clean:
	rm -f *.cm[aiox] 
	rm -f $(EXEC)
	rm -f $(EXEC).opt

depend: $(SOURCES)
	$(CAMLDEP) *.mli *.ml > .depend

include .depend
