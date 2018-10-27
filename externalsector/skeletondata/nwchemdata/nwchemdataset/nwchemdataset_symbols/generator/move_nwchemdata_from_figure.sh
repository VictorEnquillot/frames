#!/bin/bash

mv ${FRA}/figureset/figureset_symbols/Nwchemdata_*ml .
mv ${FRA}/figureset/figureset_symbols/files_nwchemdata_t_mli.mk files_nwchemdata_symbols_mli.mk
delete_lines_where.pl Figure files_*mk
