#!/bin/bash

mv ${FRA}/figureset/figureset_symbols/Property_*ml .
mv ${FRA}/figureset/figureset_symbols/files_property_t_mli.mk files_property_symbols_mli.mk
delete_lines_where.pl Figure files_*mk
