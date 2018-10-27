#!/bin/bash

mv ${FRA}/figureset/figureset_symbols/Coordinate_*ml .
mv ${FRA}/figureset/figureset_symbols/files_coordinate_t_mli.mk files_coordinate_symbols_mli.mk
delete_lines_where.pl Figure files_*mk
