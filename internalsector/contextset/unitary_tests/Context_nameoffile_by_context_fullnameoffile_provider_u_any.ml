open Make_test_v;;

testing "Context_nameoffile_by_context_fullnameoffile_provider_v
   Context_nameoffile_by_context_fullnameoffile_provider_u_any.ml";;

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
   #use "Context_nameoffile_by_context_fullnameoffile_provider_u_any.ml";;

*)

open Context_nameoffile_by_context_fullnameoffile_provider_v;;

let fno_dbo_l = Databox_fullnameoffile_list_by_unit_provider_v.provide ();;

test_number 1 (
( fno_dbo_l : string list ) =
  ["/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db1pointsdata/db1pointsdatafiles/Point_a.db1";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db1pointsdata/db1pointsdatafiles/segment_BC.db1";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db1pointsdata/db1pointsdatafiles/segment_S.db1";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db1pointsdata/db1pointsdatafiles/triangle_isoacute.db1";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db1pointsdata/db1pointsdatafiles/triangle_isoobtuse.db1";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db1pointsdata/db1pointsdatafiles/triangle_isoright.db1";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db2geometrydata/db2geometrydatafiles/triangle_ire.db2";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db2geometrydata/db2geometrydatafiles/triangle_iso.db2";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/g9xdata/g9xdatafiles/3_21G.g9x";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/g9xdata/g9xdatafiles/STO_3G.g9x";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/g9xdata/g9xdatafiles/VTZ.g9x";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/g9xdata/g9xdatafiles/cc_pVTZ.g9x";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/nwchemdata/nwchemdatafiles/3_21G.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/nwchemdata/nwchemdatafiles/6_31GSS.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/nwchemdata/nwchemdatafiles/6_31GSSP.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/nwchemdata/nwchemdatafiles/LANL2DZ.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/nwchemdata/nwchemdatafiles/cc_pVTZ.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/nwchemdata/nwchemdatafiles/try_ao.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/nwchemdata/nwchemdatafiles/try_ao_ecp.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/nwchemdata/nwchemdatafiles/try_ecp.nwc"]
);;

let fno_dbo = List_v.only_element_of_predicate_off_list (fun s -> List_v.is_substring_of_string_of_string "Point_a" s) fno_dbo_l;;

test_number 2 (
(fno_dbo : string ) =
"/home/colonna/sources/ocaml_top/setup/frames/externalsector/figuredata/db1pointsdata/db1pointsdatafiles/Point_a.db1"
);;

let nof_dbo = Filename.basename fno_dbo;;

test_number 3 (
(nof_dbo : string ) = 
"Point_a.db1"
);;

test_number 4 (
nof_dbo = provide fno_dbo
);;
