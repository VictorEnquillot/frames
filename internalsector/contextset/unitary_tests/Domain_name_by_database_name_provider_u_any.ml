open Make_test_v;;

testing "Domain_name_by_database_name_provider_v
   Domain_name_by_database_name_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Box_name_n_base_name_by_sole_index_register_v.register;;
Register_v.delete Context_name_by_context_nameofdirectory_register_v.register;;
Register_v.delete Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete Context_name_list_by_unit_register_v.register;;
Register_v.delete Databasefiles_fullnameofdirectory_list_by_domaindata_fullnameofdirectory_register_v.register;;
Register_v.delete Databasefiles_nameofdirectory_by_database_fullnameofdirectory_register_v.register;;
Register_v.delete Databasefiles_nameofdirectory_by_database_nameofdirectory_register_v.register;;
Register_v.delete Databasefiles_nameofdirectory_list_by_domaindata_fullnameofdirectory_register_v.register;;
Register_v.delete Databasefiles_nameofdirectory_list_by_domaindata_nameofdirectory_register_v.register;;
Register_v.delete Database_fullnameofdirectory_list_by_domaindata_fullnameofdirectory_register_v.register;;
Register_v.delete Database_name_list_by_unit_register_v.register;;
Register_v.delete Database_nameofdirectory_list_by_domaindata_fullnameofdirectory_register_v.register;;
Register_v.delete Database_nameofdirectory_list_by_domaindata_nameofdirectory_register_v.register;;
Register_v.delete Database_ordinal_by_database_name_register_v.register;;
Register_v.delete Databaseset_nameofdirectory_by_database_fullnameofdirectory_register_v.register;;
Register_v.delete Databaseset_nameofdirectory_by_database_nameofdirectory_register_v.register;;
Register_v.delete Databaseset_nameofdirectory_list_by_domaindata_fullnameofdirectory_register_v.register;;
Register_v.delete Databaseset_nameofdirectory_list_by_domaindata_nameofdirectory_register_v.register;;
Register_v.delete Databox_name_list_by_unit_register_v.register;;
Register_v.delete Databox_nameoffile_list_by_databasefiles_fullnameofdirectory_register_v.register;;
Register_v.delete Databox_nameoffile_list_by_databasefiles_nameofdirectory_register_v.register;;
Register_v.delete Databox_nameoffile_list_by_database_nameofdirectory_register_v.register;;
Register_v.delete Databox_ordinal_by_databox_name_register_v.register;;
Register_v.delete Domaindata_fullnameofdirectory_list_by_externalsector_fullnameofdirectory_register_v.register;;
Register_v.delete Domaindata_nameofdirectory_list_by_externalsector_fullnameofdirectory_register_v.register;;
Register_v.delete Domaindata_nameofdirectory_list_in_externalsector_by_unit_register_v.register;;
Register_v.delete Domaininput_nameofdirectory_list_in_entrysector_by_unit_register_v.register;;
Register_v.delete Domain_name_list_by_unit_register_v.register;;
Register_v.delete Domain_ordinal_by_domain_name_register_v.register;;
Register_v.delete Domainset_nameofdirectory_list_by_unit_register_v.register;;
Register_v.delete Domainset_nameofdirectory_list_in_internalsector_by_unit_register_v.register;;
Register_v.delete Domainset_nameofdirectory_list_in_productsector_by_unit_register_v.register;;
Register_v.delete Fullnameoffile_list_by_fullnameofdirectory_register_v.register;;
Register_v.delete Inputbasefiles_fullnameofdirectory_list_by_domaininput_fullnameofdirectory_register_v.register;;
Register_v.delete Inputbasefiles_nameofdirectory_list_by_domaininput_fullnameofdirectory_register_v.register;;
Register_v.delete Inputbasefiles_nameofdirectory_list_by_domaininput_nameofdirectory_register_v.register;;
Register_v.delete Inputbase_nameofdirectory_list_by_domaininput_fullnameofdirectory_register_v.register;;
Register_v.delete Inputbase_nameofdirectory_list_by_domaininput_nameofdirectory_register_v.register;;
Register_v.delete Inputbaseset_fullnameofdirectory_list_by_domaininput_fullnameofdirectory_register_v.register;;
Register_v.delete Inputbaseset_nameofdirectory_by_inputbase_fullnameofdirectory_register_v.register;;
Register_v.delete Inputbaseset_nameofdirectory_by_inputbase_nameofdirectory_register_v.register;;
Register_v.delete Inputbaseset_nameofdirectory_list_by_domaininput_fullnameofdirectory_register_v.register;;
Register_v.delete Inputbaseset_nameofdirectory_list_by_domaininput_nameofdirectory_register_v.register;;
Register_v.delete Inputbox_nameoffile_list_by_inputbasefiles_fullnameofdirectory_register_v.register;;
Register_v.delete Inputbox_ordinal_by_inputbox_name_register_v.register;;
Register_v.delete Nameofcodefile_list_by_fullnameofdirectory_register_v.register;;
Register_v.delete Nameofdirectory_list_by_fullnameofdirectory_register_v.register;;
Register_v.delete Nameoffile_list_by_fullnameofdirectory_register_v.register;;
Register_v.delete Nameofusedfile_list_by_fullnameofdirectory_register_v.register;;
Register_v.delete Sector_fullnameofdirectory_list_by_unit_register_v.register;;
Register_v.delete Sector_name_list_by_unit_register_v.register;;
Register_v.delete Sector_nameofdirectory_list_by_unit_register_v.register;;
Register_v.delete Sector_ordinal_by_sector_name_register_v.register;;




(* Tracing *)

(* toplevel 
   #use "Domain_name_by_database_name_provider_u_any.ml";;

*)

open Domain_name_by_database_name_provider_v;;

let nam_dba_l = Database_name_list_by_unit_provider_v.provide ();;

test_number 1 (
(nam_dba_l : string list ) = 
["db1points"; "db2geometry"; "g9x"; "molpro"; "nwchem"]
);;

(* db1points *)

let nam_dba = "db1points";;

test_number 2 (
(nam_dba : string ) = 
"db1points"
);;

let suffix = "data";;
let nod_dba = nam_dba ^ suffix;;

test_number 3 (
(nod_dba : string ) = 
"db1pointsdata"
);;

let nod_dda_l = Domaindata_nameofdirectory_list_by_unit_provider_v.provide ();;

test_number 4 (
(nod_dda_l : String.t list ) = 
 ["chemicaldata"; "figuredata"; "skeletondata"]
);;

let nod_dda = "figuredata";;
let nod_dba_l =
  Database_nameofdirectory_list_by_domaindata_nameofdirectory_provider_v.provide 
    nod_dda;;

test_number 5 (
(nod_dba_l : String.t list ) = 
 ["db1pointsdata"; "db2geometrydata"]
);;

let nam_dom = String_v.cut_last_n_characters_of_count_of_string (String.length suffix) nod_dda;;

test_number 6 (
(nam_dom : string) = 
"figure"
);;

test_number 7 (
nam_dom = provide nam_dba
);;

(* nwchem *)

let nam_dba = "nwchem";;

test_number 8 (
(nam_dba : string ) = 
"nwchem"
);;

let suffix = "data";;
let nod_dba = nam_dba ^ suffix;;

test_number 9 (
(nod_dba : string ) = 
"nwchemdata"
);;

let nod_dda_l = Domaindata_nameofdirectory_list_by_unit_provider_v.provide ();;

test_number 10 (
(nod_dda_l : String.t list ) = 
 ["chemicaldata"; "figuredata"; "skeletondata"]
);;

let nod_dda = List_v.last_element_off_list nod_dda_l;;
let nod_dba_l =
  Database_nameofdirectory_list_by_domaindata_nameofdirectory_provider_v.provide 
    nod_dda;;

test_number 11 (
(nod_dba_l : String.t list ) = 
 ["g9xdata"; "molprodata"; "nwchemdata"]
);;

let nam_dom = String_v.cut_last_n_characters_of_count_of_string (String.length suffix) nod_dda;;

test_number 12 (
(nam_dom : string) = 
"skeleton"
);;

test_number 13 (
nam_dom = provide nam_dba
);;

