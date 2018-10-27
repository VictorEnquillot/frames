#!/bin/bash

mv ${FRA}/figureset/figureset_symbols/Parameter_*ml .
mv ${FRA}/figureset/figureset_symbols/files_parameter_t_mli.mk files_parameter_symbols_mli.mk
delete_lines_where.pl Figure files_*mk
