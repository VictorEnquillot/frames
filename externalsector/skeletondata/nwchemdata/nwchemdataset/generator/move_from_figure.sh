#!/bin/bash

mv $SFIG/Dgn_lexeme_*ml .
mv $SFIG/files_dgn_lexeme_t_mli.mk files_dgn_lexeme_symbols_mli.mk
delete_lines_where.pl Figure files_*mk

