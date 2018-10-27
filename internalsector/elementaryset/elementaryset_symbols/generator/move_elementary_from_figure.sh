#!/bin/bash

mv ${FRA}/figureset/figureset_symbols/Elementary_*ml .
mv ${FRA}/figureset/figureset_symbols/files_elementary_t_mli.mk files_elementary_symbols_mli.mk
delete_lines_where.pl Figure files_*mk
