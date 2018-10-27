open Make_test_v;;

testing "Databox_nameoffile_list_by_databasefiles_fullnameofdirectory_provider_v
   Databox_nameoffile_list_by_databasefiles_fullnameofdirectory_provider_u_any.ml";;

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
   #use "Databox_nameoffile_list_by_databasefiles_fullnameofdirectory_provider_u_any.ml";;

*)

open Databox_nameoffile_list_by_databasefiles_fullnameofdirectory_provider_v;;

let fnd_dbf_l = Databasefiles_fullnameofdirectory_list_by_unit_provider_v.provide ();;

test_number 1 (
(fnd_dbf_l : string list ) =
  ["/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db1pointsdata/db1pointsdatafiles";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db2geometrydata/db2geometrydatafiles";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/g9xdata/g9xdatafiles";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/molprodata/molprodatafiles";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/nwchemdata/nwchemdatafiles"]
);;

let fnd_dbf = "/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db1pointsdata/db1pointsdatafiles";;

let nod_dbf = Filename.basename fnd_dbf;;

test_number 2 (
(nod_dbf : string ) = 
"db1pointsdatafiles"
);;

let ext_dbf = "." ^ (String_v.substring nod_dbf 0 3);;

test_number 3 (
(ext_dbf : string ) = 
".db1"
);;

let nof_l = Nameoffile_list_by_fullnameofdirectory_provider_v.provide fnd_dbf;;

test_number 4 (
(nof_l : String.t list ) =
  ["Point_a.db1"; "Point_a.db1~"; "segment_BC.db1"; "segment_S.db1";
   "triangle_isoacute.db1"; "triangle_isoobtuse.db1";
   "triangle_isoright.db1"]
);;

let nof_dbo_nsl = List.filter 
      (is_databox_of_fullnameofdirectory_of_nameoffile fnd_dbf) 
      nof_l;; 

test_number 5 (
( nof_dbo_nsl : String.t list ) = 
  ["Point_a.db1"; "segment_BC.db1"; "segment_S.db1"; "triangle_isoacute.db1";
   "triangle_isoobtuse.db1"; "triangle_isoright.db1"]
);;

let nof_dbo_l = List.sort String.compare nof_dbo_nsl ;;

test_number 6 (
(nof_dbo_l : String.t list ) =
["Point_a.db1"; "segment_BC.db1"; "segment_S.db1"; "triangle_isoacute.db1";
 "triangle_isoobtuse.db1"; "triangle_isoright.db1"]
);;

test_number 7 (
nof_dbo_l = provide fnd_dbf
);;
