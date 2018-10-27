#!/bin/bash

mv ${FRA}/figureset/figureset_symbols/Localinput_*ml .
mv ${FRA}/figureset/figureset_symbols/files_localinput_lexer_t_mli.mk files_localinput_lexer_symbols_t_mli.mk
delete_lines_where.pl Figure files_*mk
