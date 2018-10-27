#!/bin/bash

modify_strings_and_rename_files.sh skeleton figure $1 
modify_strings_and_rename_files.sh Skeleton Figure $1 
modify_strings_and_rename_files.sh nwchem db1points $1 
modify_strings_and_rename_files.sh Nwchem Db1points $1 

modify_strings_and_rename_files.sh database_name_n_databox_name databox_name_n_database_name $1 

modify_string.pl "(nam_dba, nam_dbo)" "(nam_dbo, nam_dba)" $1
modify_string.pl _ske _fig $1
modify_string.pl _sbo _fbo $1
modify_string.pl _sba _fba $1
modify_string.pl _scd _fcd $1
modify_string.pl _scs _fcs $1

# with set



modify_strings_and_rename_files.sh gure_body gure_set_body *ml *mk 
modify_strings_and_rename_files.sh gure_fence gure_set_fence *ml *mk 