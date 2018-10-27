#!/bin/bash

mv ${FRA}/figureset/figureset_symbols/Db1pointsdata_*ml .
mv ${FRA}/figureset/figureset_symbols/files_db1pointsdata_t_mli.mk files_db1pointsdata_symbols_mli.mk
delete_lines_where.pl Figure files_*mk
