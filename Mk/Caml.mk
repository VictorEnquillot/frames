######################################################################
#                                                                    #
#                             Caml                                   #
#                                                                    #
#          Pierre Weis, projet Cristal, INRIA Rocquencourt           #
#                                                                    #
#  Copyright 2005 Institut National de Recherche en Informatique et  #
#  en Automatique.  All rights reserved.  This file is distributed   #
#  under the terms of the Q Public License.                          #
#                                                                    #
######################################################################

# $Id: Caml.mk,v 1.5 2007-11-12 10:14:14 weis Exp $

# This Makefile defines generic rules to compile various kinds of Caml source
# files and to automatically handle their dependencies.

# This Makefile also defines two entries:
# - clean_up (to clean up the compiled files)
# - depend (to recompute the dependency order).

# This Makefile should be included at the end of the Makefile that handles a
# set of Caml files (to build a library or an application).
# Simpy write at the end of your Makefile:
# include path_to_Caml.mk/Caml.mk

.PHONY: byt bin clean all depend

# Compilation rules
.SUFFIXES: .mli .ml .mlin .spec .mll .mly .mlm .data .shtml .html \
 .cmi .cmo .cmx  .cmxa 

.mli.cmi:
	$(CAMLBYT) -c $<

.ml.cmo:
	$(CAMLBYT) -c $<

.ml.cmx:
	$(CAMLBIN) -c $<

.mll.cmo:
	$(CAMLLEX) $<
	$(CAMLBYT) -c $*.ml

.mll.cmx:
	$(CAMLLEX) $<
	$(CAMLBIN) -c $*.ml

.mly.cmo:
	$(CAMLYAC) $<
	$(CAMLBYT) -c $*.mli
	$(CAMLBYT) -c $*.ml

.mly.cmx:
	$(CAMLYAC) $<
	$(CAMLBIN) -c $*.mli
	$(CAMLBIN) -c $*.ml

.mly.cmi:
	$(CAMLYAC) $<
	$(CAMLBYT) -c $*.mli

.mll.ml:
	$(CAMLLEX) $<

.mly.ml:
	$(CAMLYAC) $<

.mlm.ml:
	$(MOCAC) $<

.mlm.mli:
	$(MOCAC) $<

.spec.mli:
	$(GENMLIC) -i $< -o $@

.data.html:
	$(HTMLC) -i $< -o $@

.shtml.html:
	$(HTMLC) -i $< -o $@

.mlin.ml:
	$(HTMLC_CONF) -i $< -o $@

# Generic clean up
#clean_up:: cleandir
#	$(RM) .depend
#	$(TOUCH) .depend; sync; sleep 1
#	$(TOUCH) .depend-rebuild; sync
#	$(MAKE) depend

#cleandir::
	$(RM) *.cm[ioxa] *.cmxa *.o *.a *~ .*~ a.out *.bin *.byt

#configure:: cleandir

# Rebuilding dependencies
#depend::
#	$(CAMLDEP) $(CAMLINCLUDES) $(FILES) >> .depend
#
#include .depend
