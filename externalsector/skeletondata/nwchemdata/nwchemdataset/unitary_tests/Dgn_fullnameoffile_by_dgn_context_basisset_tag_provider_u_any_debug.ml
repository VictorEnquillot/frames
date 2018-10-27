open Make_test_v;;

testing "Dgn_fullnameoffile_by_dgn_context_basisset_tag_provider_v with
    Dgn_fullnameoffile_by_dgn_context_basisset_tag_provider_u_any_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Debug_by_module_name_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;

(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Dgn_fullnameoffile_by_dgn_context_basisset_tag_provider_u_any_debug.ml";; 

*)

(* Debug *)

open Dgn_fullnameoffile_by_dgn_context_basisset_tag_provider_v;;

let nam_bas = "lanl2dz";;

let tag_dcd = Dgn_context_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_dcd : Dgn_context_database_symbol_t.nwchem_context_database_symbol Tag_t.tag ) =
  (Dgn_context_database_symbol_t.Dgn_context_database_constructor "gaussian_nwchem",
   [5; 3])
);;

let fno_l =
  Dgn_fullnameoffile_list_by_dgn_context_database_tag_provider_v.provide 
    tag_dcd;;

test_number 2 (
(fno_l : string list ) =  
["/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_nwchem_3_21g.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_nwchem_6_31gss.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_nwchem_6_31gssp.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_nwchem_cc_pvtz.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_nwchem_lanl2dz.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_nwchem_test.nwc";
   "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_nwchem_test_ecp.nwc"]
);;

let tag_dcb = Dgn_context_basisset_tag_by_basisset_name_provider_v.provide nam_bas;;

test_number 3 (
(tag_dcb : Dgn_context_basisset_symbol_t.nwchem_context_basisset_symbol Tag_t.tag ) =
  (Dgn_context_basisset_symbol_t.Dgn_context_basisset_constructor "lanl2dz",
   [5; 5; 3])
);;

let nam_bas = Dgn_context_basisset_tag_v.string_off tag_dcb;;

let fno =  List.find (List_v.is_substring_of_string_of_string nam_bas) fno_l;;

test_number 4 (
( fno : string ) =
  "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_gaussian_nwchem/files/gaussian_nwchem_lanl2dz.nwc"
);;
