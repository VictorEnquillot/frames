#!/bin/bash

mv $SFIG/Db1figure_lexer_*ml .
mv $SFIG/files_db1figure_lexer_t_mli.mk files_db1figure_lexer_symbols_mli.mk
delete_lines_where.pl Figure files_*mk
