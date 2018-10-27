#!/bin/bash

mv $SFIG/Primitive_*ml .
mv $SFIG/files_primitive_t_mli.mk files_primitive_symbols_mli.mk
delete_lines_where.pl Figure files_*mk
