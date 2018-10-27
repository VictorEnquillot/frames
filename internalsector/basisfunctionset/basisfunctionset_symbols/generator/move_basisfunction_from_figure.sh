#!/bin/bash

mv /home/colonna/sources/ocaml_top/setup/frames/figureset/figureset_symbols/Basisfunction_*ml .
mv /home/colonna/sources/ocaml_top/setup/frames/figureset/figureset_symbols/files_basisfunction_t_mli.mk files_basisfunction_symbols_mli.mk
delete_lines_where.pl Figure files_*mk

