#!/bin/bash

file=Prototype_symbol_from_dgn_tag_translator_v.ml

modify_string.pl DFIG SPRT $file
modify_string.pl DB1DBA DGN $file
modify_string.pl Figure Prototype $file
modify_string.pl figure prototype $file
modify_string.pl database_db1 dgn $file
modify_string.pl Database_db1 Dgn $file


modify_string.pl Dgn_domain Dgn_context_domain $file
modify_string.pl prototype_domain_constructor  prototype_context_domain_constructor $file

modify_string.pl Prototype_symbol_from_dgn_context_basisset_tag_translator_v Prototype_symbol_from_dgn_tag_translator_v *ml