open Make_test_v;;

testing "Dgn_context_basisset_tag_by_basisset_name_provider_v with
    Dgn_context_basisset_tag_by_basisset_name_provider_u_any_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Debug_by_module_name_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;

(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Dgn_context_basisset_tag_by_basisset_name_provider_u_any_debug.ml";; 

*)

(* Debug *)

open Dgn_context_basisset_tag_by_basisset_name_provider_v;;

let nam_bas = "lanl2dz";;
let tag_dcd = Dgn_context_database_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_dcd : Dgn_context_database_symbol_t.nwchem_context_database_symbol Tag_t.tag ) =
  (Dgn_context_database_symbol_t.Dgn_context_database_constructor "gaussian_nwchem",
   [5; 3])
);;

let nam_bas_l =
  Basisset_name_list_by_dgn_context_database_tag_provider_v.provide 
    tag_dcd;;

test_number 2 (
( nam_bas_l : String.t list ) =  
["3_21g"; "6_31gss"; "6_31gssp"; "cc_pvtz"; "lanl2dz"; "test"; "test_ecp"]
);;

let idx_bas = List_v.int_ordinal_of_element_of_list  nam_bas nam_bas_l;;
  
let soi_dcd = Tag_v.sole_index_off_tag tag_dcd;;
  
let soi_bas = Sole_index_v.make idx_bas soi_dcd;;
  
let sym_nwc = Dgn_symbol_v.dgn_context_basisset_constructor nam_bas;;

let tag_bas = Tag_v.make sym_nwc soi_bas;;

let tag_dcb = provide nam_bas;;

test_number 3 (
( tag_dcb : Dgn_context_basisset_symbol_t.nwchem_context_basisset_symbol Tag_t.tag ) =
  (Dgn_context_basisset_symbol_t.Dgn_context_basisset_constructor "lanl2dz",
   [5; 5; 3])
);;


