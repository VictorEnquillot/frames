open Make_test_v;;

testing "Context_sole_index_by_context_name_quatuor_provider_v
   Context_sole_index_by_context_name_quatuor_provider_u_any.ml";;

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
   #use "Context_sole_index_by_context_name_quatuor_provider_u_any.ml";;

*)

open Context_sole_index_by_context_name_quatuor_provider_v;;

let nam_sec_l = Sector_name_list_by_unit_provider_v.provide ();;

let nam_dom_l = Domain_name_list_by_unit_provider_v.provide ();;

let nam_dba_l = Database_name_list_by_unit_provider_v.provide ();;

let nam_dbo_l = Databox_name_list_by_unit_provider_v.provide ();;
  
let nam_iba_l = Inputbase_name_list_by_unit_provider_v.provide ();;
  
let nam_ibo_l = Inputbox_name_list_by_unit_provider_v.provide ();;

(* "entry" *)

let nam_box = "Write";;
let nam_bas = "local";;
let nam_dom = "user"
let nam_sec = "entry";;
 
let ord_sec = Sector_ordinal_by_sector_name_provider_v.provide nam_sec;;
let ord_dom = Domain_ordinal_by_domain_name_provider_v.provide nam_dom;;

let ord_bas = Inputbase_ordinal_by_inputbase_name_provider_v.provide nam_bas;;
let ord_box = Inputbox_ordinal_by_inputbox_name_provider_v.provide nam_box;;

let nam_qua = Quatuor_v.make nam_box nam_bas nam_dom nam_sec;;

test_number 1 (
(nam_qua : string Quatuor_t.quatuor ) = 
("Write", "local", "user", "entry")
);;

Check_consistency_by_context_name_quatuor_provider_v.provide (nam_box, nam_bas, nam_dom, nam_sec);;

let soi_ds = [ord_dom; ord_sec];;
let soi_con = ord_box :: (ord_bas :: soi_ds);;

test_number 2 (
(soi_con : int list ) = 
[62; 1; 22; 1]
);;

test_number 3 (
soi_con = provide nam_qua
);;

(* "external" *)

let nam_box = "VTZ";;
let nam_bas = "g9x";;
let nam_dom = "skeleton";;
let nam_sec = "external";;
  
let ord_sec = Sector_ordinal_by_sector_name_provider_v.provide nam_sec;;
let ord_dom = Domain_ordinal_by_domain_name_provider_v.provide nam_dom;;
let ord_bas = Database_ordinal_by_database_name_provider_v.provide nam_bas;;
let ord_box = Databox_ordinal_by_databox_name_provider_v.provide nam_box;;

let nam_qua = Quatuor_v.make nam_box nam_bas nam_dom nam_sec;;

test_number 4 (
(nam_qua : string Quatuor_t.quatuor ) = 
 ("VTZ", "g9x", "skeleton", "external")
);;

Check_consistency_by_context_name_quatuor_provider_v.provide (nam_box, nam_bas, nam_dom, nam_sec);;

let soi_ds = [ord_dom; ord_sec];;
let soi_con = ord_box :: (ord_bas :: soi_ds);;

test_number 5 (
(soi_con : int list ) =
[12; 3; 20; 2] 
);;

test_number 6 (
soi_con = provide nam_qua
);;

(* "product" *)

let nam_qua = ("Print_length_segment_bc", "local", "property", "product");;

let nam_box = "Print_length_segment_bc";;
let nam_bas = "local";;
let nam_dom = "property";;
let nam_sec = "product";;
  
let ord_sec = Sector_ordinal_by_sector_name_provider_v.provide nam_sec;;
let ord_dom = Domain_ordinal_by_domain_name_provider_v.provide nam_dom;;
let ord_bas = Inputbase_ordinal_by_inputbase_name_provider_v.provide nam_bas;;
let ord_box = Inputbox_ordinal_by_inputbox_name_provider_v.provide nam_box;;

let nam_qua = Quatuor_v.make nam_box nam_bas nam_dom nam_sec;;

test_number 7 (
(nam_qua : string Quatuor_t.quatuor ) =   
("Print_length_segment_bc", "local", "property", "product")
);;

Check_consistency_by_context_name_quatuor_provider_v.provide (nam_box, nam_bas, nam_dom, nam_sec);;

let soi_ds = [ord_dom; ord_sec];;
let soi_con = ord_box :: (ord_bas :: soi_ds);;

test_number 8 (
(soi_con : int list ) = 
[41; 1; 18; 6]
);;

test_number 9 (
soi_con = provide nam_qua
);;


