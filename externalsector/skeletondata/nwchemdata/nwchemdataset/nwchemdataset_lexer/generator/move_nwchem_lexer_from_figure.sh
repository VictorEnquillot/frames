#!/bin/bash

mv $SFIG/Nwchem_lexer_*ml .
mv $SFIG/files_nwchem_lexer_t_mli.mk files_nwchem_lexer_symbols_mli.mk
delete_lines_where.pl Figure files_*mk
