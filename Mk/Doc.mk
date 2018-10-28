#********************************************************************#
#                                                                    #
#                                Caml                                #
#                                                                    #
#            Pierre Weis, projet Cristal, INRIA Rocquencourt         #
#                                                                    #
# Copyright 1997-2005,                                               #
# Institut National de Recherche en Informatique et en Automatique.  #
# All rights reserved. This file is distributed under the terms of   #
# the Q Public License.                                              #
#                                                                    #
#********************************************************************#

# $Id: Doc.mk,v 1.2 2007-06-03 00:25:15 weis Exp $

# Makefile for HTML documentation generation.
# From a list of source files (.html files), it generates the
# corresponding object files (.htm files) using the HTML compiler Htmlc.

# Usage: if necessary fill in the HTMLC and FILES variables below,
# then type in:
# make (or make all) to rebuild the whole thing
# make clean to remove all the generated files.

# The directory where Makfile templates reside.
MAKEFILES_DIR = ../Mk

include $(MAKEFILES_DIR)/Config.mk

# The Htmlc compiler with its include path options
HTMLC = htmlc -I Includes -env Includes/env

# Prefix before regular names
SOFTWARE = frames

# The list of source files
FILES = $(SOFTWARE).index.html $(SOFTWARE).fr.html $(SOFTWARE).en.html \
        copyright.fr.html copyright.en.html

MANFILES = $(SOFTWARE).man

######## This part should automatically handle the generation of
######## object files

# The list of object files
OBJS = $(FILES:.html=.htm)
MANOBJS = $(MANFILES:.man=.1)

all: $(OBJS) $(MANOBJS)

$(OBJS): Includes/*.html

clean::
	$(RM) $(OBJS) $(MANOBJS) *~
	$(RM) *.htm
	cd Includes; $(RM) *.htm *~

configure::
	ln -sf $(SOFTWARE).index.htm index.htm 
	ln -sf $(SOFTWARE).fr.htm fra.htm 
	ln -sf $(SOFTWARE).en.htm eng.htm

.SUFFIXES:
.SUFFIXES: .htm .html .man .1

.html.htm:
	$(HTMLC) -f $< -t $@
.man.1:
	$(HTMLC) -f $< -t $@
