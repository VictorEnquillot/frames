open Make_test_v;;

testing "Databox_nameoffile_list_by_database_nameofdirectory_provider_v
   Databox_nameoffile_list_by_database_nameofdirectory_provider_u_any.ml";;

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
   #use "Databox_nameoffile_list_by_database_nameofdirectory_provider_u_any.ml";;

*)

open Databox_nameoffile_list_by_database_nameofdirectory_provider_v;;

let nod_dba_l = Database_nameofdirectory_list_by_unit_provider_v.provide ();;

test_number 1 (
(nod_dba_l : string list ) =
  ["db1pointsdata"; "db2geometrydata"; "g9xdata";
   "molprodata"; "nwchemdata"]
);;

let nod_dba = List.hd nod_dba_l;;
let fnd_dba = 
    Database_fullnameofdirectory_by_database_nameofdirectory_provider_v.provide 
      nod_dba ;;

test_number 2 (
(fnd_dba : String.t) =
  "/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db1pointsdata"
);;

let fnd_dbf =  fnd_dba ^ "/" ^ nod_dba ^ "files" ;;

test_number 3 (
(fnd_dbf : String.t) =
"/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db1pointsdata/db1pointsdatafiles"
);;

let nof_dbo_l = Databox_nameoffile_list_by_databasefiles_fullnameofdirectory_provider_v.provide fnd_dbf;;
  
test_number 4 (
( nof_dbo_l : String.t list ) =
  ["Point_a.db1"; "segment_BC.db1"; "segment_S.db1"; "triangle_isoacute.db1";
   "triangle_isoobtuse.db1"; "triangle_isoright.db1"]
);;

(* nwchem *)

let nod_dba = List_v.last_element_off_list nod_dba_l;;
let fnd_dba = 
    Database_fullnameofdirectory_by_database_nameofdirectory_provider_v.provide 
      nod_dba ;;

test_number 5 (
(fnd_dba : String.t) =
"/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/nwchemdata"
);;

let fnd_dbf =  fnd_dba ^ "/" ^ nod_dba ^ "files" ;;

test_number 6 (
(fnd_dbf : String.t) =
"/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/nwchemdata/nwchemdatafiles"
);;

let nof_dbo_l = Databox_nameoffile_list_by_databasefiles_fullnameofdirectory_provider_v.provide fnd_dbf;;
  
test_number 7 (
( nof_dbo_l : String.t list ) =
 ["3_21G.nwc"; "6_31GSS.nwc"; "6_31GSSP.nwc"; "LANL2DZ.nwc"; "cc_pVTZ.nwc";
   "try_ao.nwc"; "try_ao_ecp.nwc"; "try_ecp.nwc"]
);;
