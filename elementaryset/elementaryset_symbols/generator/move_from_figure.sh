#!/bin/bash

mv $SFIG/Elementary_*ml .
mv $SFIG/files_elementary_t_mli.mk files_elementary_symbols_mli.mk
delete_lines_where.pl Figure files_*mk
