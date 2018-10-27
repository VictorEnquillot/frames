#!/bin/bash

modify_strings_and_rename_files.sh skeleton property $1 
modify_strings_and_rename_files.sh Skeleton Property $1 
modify_strings_and_rename_files.sh nwchem local $1 
modify_strings_and_rename_files.sh Nwchem Local $1 

modify_strings_and_rename_files.sh databox_name_n_database_name inputbox_name_n_inputbase_name $1

modify_string.pl "(nam_dbo, nam_dba)" "(nam_ibo, nam_iba)" $1
modify_string.pl _ske _pro $1
modify_string.pl _sbo _pbo $1
modify_string.pl _sba _pba $1
modify_string.pl _scd _pcd $1
modify_string.pl _scs _pcs $1

