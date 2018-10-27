#!/bin/bash

mv $SFIG/Skeleton_*ml .
mv $SFIG/files_skeleton_t_mli.mk files_skeleton_symbols_mli.mk
delete_lines_where.pl Figure files_*mk
