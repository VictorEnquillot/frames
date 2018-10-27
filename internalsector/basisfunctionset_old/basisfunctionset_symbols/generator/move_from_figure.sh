#!/bin/bash

mv $SFIG/Basisfunction_*ml .
mv $SFIG/files_basisfunction_t_mli.mk files_basisfunction_symbols_mli.mk
delete_lines_where.pl Figure files_*mk
