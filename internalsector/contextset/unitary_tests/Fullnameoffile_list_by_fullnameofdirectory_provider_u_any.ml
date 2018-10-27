open Make_test_v;;

testing "Fullnameoffile_list_by_fullnameofdirectory_provider_v
   Fullnameoffile_list_by_fullnameofdirectory_provider_u_any.ml";;

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
   #use "Fullnameoffile_list_by_fullnameofdirectory_provider_u_any.ml";;

*)

open Fullnameoffile_list_by_fullnameofdirectory_provider_v;;

let fnd = "/home/colonna/sources/ocaml_top/setup/frames/externalsector";;

let nof_l = Nameoffile_list_by_fullnameofdirectory_provider_v.provide fnd;;

test_number 1 (
(nof_l : string list ) = 
  [".depend"; ".depend-rebuild"; ".gitignore"; "Makefile";
   "chemicaldata"; "configure"; "configure_local"; "figuredata";
   "skeletondata"]
);;

let fno_l = provide fnd;;

test_number 2 (
(fno_l : string list ) =
["/home/colonna/sources/ocaml_top/setup/frames/externalsector/.depend";
 "/home/colonna/sources/ocaml_top/setup/frames/externalsector/.depend-rebuild";
 "/home/colonna/sources/ocaml_top/setup/frames/externalsector/.gitignore";
 "/home/colonna/sources/ocaml_top/setup/frames/externalsector/Makefile";
 "/home/colonna/sources/ocaml_top/setup/frames/externalsector/chemicaldata";
 "/home/colonna/sources/ocaml_top/setup/frames/externalsector/configure";
 "/home/colonna/sources/ocaml_top/setup/frames/externalsector/configure_local";
 "/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata";
 "/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata"]
);;

let fnd = "/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata";;

let nof_l = Nameoffile_list_by_fullnameofdirectory_provider_v.provide fnd;;

test_number 3 (
( nof_l : string list ) =
  [".depend"; ".depend-rebuild"; ".gitignore"; "Makefile"; "configure";
   "configure_local"; "db1pointsdata"; "db2geometrydata"]
);;

let fno_l = provide fnd;;

test_number 4 (
( fno_l : string list ) =
  ["/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/.depend";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/.depend-rebuild";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/.gitignore";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/Makefile";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/configure";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/configure_local";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db1pointsdata";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db2geometrydata"]
);;

let fnd = "/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db1pointsdata";;

let nof_l = Nameoffile_list_by_fullnameofdirectory_provider_v.provide fnd;;

test_number 5 (
( nof_l : string list ) =
["db1pointsdatafiles"; "db1pointsdataset"]
);;

let fno_l = List.map (fun s -> fnd ^ "/" ^ s) nof_l;;

test_number 6 (
( fno_l : string list ) =
  ["/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db1pointsdata/db1pointsdatafiles";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db1pointsdata/db1pointsdataset"]
);;

test_number 7 (
fno_l = provide fnd
);;
