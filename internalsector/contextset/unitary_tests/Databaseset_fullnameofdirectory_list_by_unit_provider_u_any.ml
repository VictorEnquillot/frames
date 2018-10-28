open Make_test_v;;

testing "Databaseset_fullnameofdirectory_list_by_unit_provider_v
   Databaseset_fullnameofdirectory_list_by_unit_provider_u_any.ml";;

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
   #use "Databaseset_fullnameofdirectory_list_by_unit_provider_u_any.ml";;

*)

open Databaseset_fullnameofdirectory_list_by_unit_provider_v;;

let fnd_dba_l = Database_fullnameofdirectory_list_by_unit_provider_v.provide ();;

test_number 1 (
(fnd_dba_l : string list ) =
  ["/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db1pointsdata";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db2geometrydata";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/g9xdata";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/molprodata";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/nwchemdata"]
);;

let fnd_dbs_nsl = List.map 
      Databaseset_fullnameofdirectory_by_database_fullnameofdirectory_provider_v.provide 
      fnd_dba_l;;

test_number 2 (
(fnd_dbs_nsl : string list ) =
  ["/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db1pointsdata/db1pointsdataset";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db2geometrydata/db2geometrydataset";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/g9xdata/g9xdataset";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/molprodata/molprodataset";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/nwchemdata/nwchemdataset"]
);;

let fnd_dbs_l = List.sort String.compare fnd_dbs_nsl;;

test_number 3 (
(fnd_dbs_l : String.t list ) =
  ["/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db1pointsdata/db1pointsdataset";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db2geometrydata/db2geometrydataset";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/g9xdata/g9xdataset";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/molprodata/molprodataset";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/nwchemdata/nwchemdataset"]
);;

test_number 4 (
fnd_dbs_l = provide ()
);;