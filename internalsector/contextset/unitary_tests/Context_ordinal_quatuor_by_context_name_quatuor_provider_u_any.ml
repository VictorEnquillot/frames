open Make_test_v;;

testing "Context_ordinal_quatuor_by_context_name_quatuor_provider_v
        Context_ordinal_quatuor_by_context_name_quatuor_provider_u_any.ml";;

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

(* Trace_what_by_module_name_register_v.store "any" "cpu provide";; *)

(* toplevel 
   #use "Context_ordinal_quatuor_by_context_name_quatuor_provider_u_any.ml";;

*)

open Context_ordinal_quatuor_by_context_name_quatuor_provider_v;;

(* Entry *)

let nam_ibo = "Point_a_print";;
let nam_iba = "local";;

let fno_ibo = Inputbox_fullnameoffile_by_inputbox_name_n_inputbase_name_provider_v.provide (nam_ibo, nam_iba);;

test_number 1 (
(fno_ibo : string ) =
"/home/colonna/sources/ocaml_top/setup/frames/entrysector/userinput/localinput/localinputfiles/Point_a_print.loc"
);;

let nam_qua = Context_name_quatuor_by_box_fullnameoffile_provider_v.provide fno_ibo;;

test_number 2 (
(nam_qua : string Quatuor_t.quatuor ) =
  ("Point_a_print", "local", "user", "entry")
);;

let (nam_ibo, nam_iba, nam_dom, nam_sec) = nam_qua;;

let ord_qua =
  Quatuor_v.make
    (Inputbox_ordinal_by_inputbox_name_provider_v.provide nam_ibo)
    (Inputbase_ordinal_by_inputbase_name_provider_v.provide nam_iba)
    (Domain_ordinal_by_domain_name_provider_v.provide nam_dom)
    (Sector_ordinal_by_sector_name_provider_v.provide nam_sec)
;;

test_number 3 (
(ord_qua : int Quatuor_t.quatuor ) = 
(28, 1, 21, 1)
);;

test_number 4 (
ord_qua = provide nam_qua
);;

(* External *)

let nam_dbo = "cc_pVTZ";;
let nam_dba = "nwchem";;

let fno_dbo = Databox_fullnameoffile_by_databox_name_n_database_name_provider_v.provide (nam_dbo, nam_dba);;

test_number 5 (
(fno_dbo : string ) =
 "/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/nwchemdata/nwchemdatafiles/cc_pVTZ.nwc"
);;

let nam_qua = Context_name_quatuor_by_box_fullnameoffile_provider_v.provide fno_dbo;;

test_number 6 (
(nam_qua : string Quatuor_t.quatuor ) =
  ("cc_pVTZ", "nwchem", "skeleton", "external")
);;

let (nam_dbo, nam_dba, nam_dom, nam_sec) = nam_qua;;

let ord_qua =
  Quatuor_v.make
    (Databox_ordinal_by_databox_name_provider_v.provide nam_dbo)
    (Database_ordinal_by_database_name_provider_v.provide nam_dba)
    (Domain_ordinal_by_domain_name_provider_v.provide nam_dom)
    (Sector_ordinal_by_sector_name_provider_v.provide nam_sec)
;;

test_number 7 (
(ord_qua : int Quatuor_t.quatuor ) = 
 (8, 5, 20, 2)
);;

test_number 8 (
ord_qua = provide nam_qua
);;

