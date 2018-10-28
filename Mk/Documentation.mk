#######################################################################
#                                                                     #
#                                 MK                                  #
#                                                                     #
#                          Generic makefiles                          #
#                                                                     #
#             projets Estime & Cristal, INRIA-Rocquencourt            #
#                                                                     #
#  Copyright 2005-2007 INRIA.                                         #
#  Institut National de Recherche en Informatique et en Automatique.  #
#  All rights reserved. This file is distributed only by permission.  #
#                                                                     #
#  Francois Clement <Francois.Clement@inria.fr>                       #
#  Pierre Weis <Pierre.Weis@inria.fr>                                 #
#                                                                     #
#######################################################################

# $Id: Documentation.mk,v 1.2 2007-07-06 09:17:51 weis Exp $

.PHONY: htmldoc latexdoc

# Caml documentation generation
doc-local: htmldoc latexdoc

htmldoc: $(CAMLBYTOBJS)
	$(MKDIR) $(DOCHTMDIR)
	$(CAMLHTMDOC) $(ALLCAMLSOURCES)

latexdoc: $(CAMLBYTOBJS)
	$(MKDIR) $(DOCTEXDIR)
	$(CAMLTEXDOC) $(ALLCAMLSOURCES)
	cd $(DOCTEXDIR); \
          latex $(CAMLPACKAGE).tex; \
          latex $(CAMLPACKAGE).tex

all:: doc-local
