open Make_test_v;;

testing "Domain_name_list_by_sector_name_provider_v
   Domain_name_list_by_sector_name_provider_u_any.ml";;

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
   #use "Domain_name_list_by_sector_name_provider_u_any.ml";;

*)

open Domain_name_list_by_sector_name_provider_v;;

let nod_din_l = 
  Domaininput_nameofdirectory_list_in_entrysector_by_unit_provider_v.provide () ;;

test_number 1 (
(nod_din_l : String.t list ) = 
["userinput"]
);;

let nam_din_l = List.map
	Context_name_by_context_nameofdirectory_provider_v.provide 
	nod_din_l;;

test_number 2 (
(nam_din_l : string list ) = 
["user"]
);;

test_number 3 (
nam_din_l = provide ("entry")
);;

let nod_dse_l = 
	Domainset_nameofdirectory_list_in_internalsector_by_unit_provider_v.provide () ;;

test_number 4 (
(nod_dse_l : String.t list ) = 
  ["basisfunctionset"; "chemicalset"; "commonset"; "contextset";
   "coordinateset"; "elementaryset"; "figureset"; "ghostset"; "globalset";
   "logicset"; "measureset"; "moleculeset"; "musicset"; "naturalset";
   "parameterset"; "primitiveset"; "readeeset"; "skeletonset";
   "wavefunctionset"; "wikitoolset"]
);;

let nam_dse_l = List.map
	Context_name_by_context_nameofdirectory_provider_v.provide 
	nod_dse_l;;

test_number 5 (
(nam_dse_l : string list ) = 
  ["basisfunction"; "chemical"; "common"; "context"; "coordinate";
   "elementary"; "figure"; "ghost"; "global"; "logic"; "measure"; "molecule";
   "music"; "natural"; "parameter"; "primitive"; "readee"; "skeleton";
   "wavefunction"; "wikitool"]
);;

test_number 6 (
nam_dse_l = provide ("internal")
);;

let nod_dda_l = 
	Domaindata_nameofdirectory_list_in_externalsector_by_unit_provider_v.provide () ;;

test_number 7 (
(nod_dda_l : String.t list ) = 
 ["chemicaldata"; "figuredata"; "skeletondata"]
);;

let nam_dda_l = List.map
	Context_name_by_context_nameofdirectory_provider_v.provide 
	nod_dda_l;;

test_number 8 (
(nam_dda_l : string list ) = 
["chemical"; "figure"; "skeleton"]
);;

test_number 9 ( 
nam_dda_l = provide ("external")
);;

let nod_dpr_l = 
	Domainset_nameofdirectory_list_in_productsector_by_unit_provider_v.provide () ;;

test_number 10 (
(nod_dpr_l : String.t list ) = 
["operatorset"; "propertyset"]
);;

let nam_dse_l = List.map
	Context_name_by_context_nameofdirectory_provider_v.provide 
	nod_dpr_l;;

test_number 11 (
(nam_dse_l : string list ) = 
["operator"; "property"]
);;

test_number 12 ( 
nam_dse_l = provide ("product")
);;
