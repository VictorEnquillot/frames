#!/bin/bash

mv ${FRA}/figureset/figureset_symbols/Figure_*ml .
mv ${FRA}/figureset/figureset_symbols/files_figure_t_mli.mk files_figure_symbols_mli.mk

CURRENT_DIR=`pwd | xargs basename`
if [ "$CURRENT_DIR" != "figureset_symbols" ]
then
    delete_lines_where.pl Figure files_*mk
fi