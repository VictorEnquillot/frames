#!/bin/bash

mv ${FRA}/figureset/figureset_symbols/Skeleton_*ml .
mv ${FRA}/figureset/figureset_symbols/files_skeleton_t_mli.mk files_skeleton_symbols_mli.mk
delete_lines_where.pl Figure files_*mk
