#!/bin/bash

mv $SFIG/Wavefunction_*ml .
mv $SFIG/files_wavefunction_t_mli.mk files_wavefunction_symbols_mli.mk
delete_lines_where.pl Figure files_*mk
