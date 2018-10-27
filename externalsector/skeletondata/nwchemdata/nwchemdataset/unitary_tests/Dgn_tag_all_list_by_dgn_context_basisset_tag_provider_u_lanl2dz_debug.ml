open Make_test_v;;

testing "Dgn_tag_all_list_by_dgn_context_basisset_tag_provider_v with
    Dgn_tag_all_list_by_dgn_context_basisset_tag_provider_u_lanl2dz_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Debug_by_module_name_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;

(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Dgn_tag_all_list_by_dgn_context_basisset_tag_provider_u_lanl2dz_debug.ml";; 

*)

(* Database file *)

let nam_bas = "lanl2dz";;
Parameters_general_register_v.store "basisset-name" nam_bas;;
 
(* Debug *)

open Dgn_tag_all_list_by_dgn_context_basisset_tag_provider_v;;

let tag_dcb = Dgn_context_basisset_tag_by_basisset_name_provider_v.provide nam_bas;;
test_number 1 ( 
( tag_dcb : Dgn_context_basisset_symbol_t.nwchem_context_basisset_symbol Tag_t.tag ) =
  (Dgn_context_basisset_symbol_t.Dgn_context_basisset_constructor "lanl2dz",
   [5; 5; 3])
);;

let fno_nwc = Dgn_fullnameoffile_by_dgn_context_basisset_tag_provider_v.provide tag_dcb;;

let tag_nwc_t = 
    Dgn_tag_tree_by_dgn_context_basisset_tag_provider_v.provide 
      tag_dcb ;;

let tag_tso_l = Tree_v.root_topson_node_list_off_tree tag_nwc_t;;

test_number 2 (
(tag_tso_l : Dgn_symbol_t.nwchem_symbol Tag_t.tag list ) =
  [(Dgn_symbol_t.Dgn_context_symbol
     (Dgn_context_symbol_t.Dgn_context_domain_symbol
       (Dgn_context_domain_symbol_t.Dgn_context_domain_constructor "nwc")),
    [3]);
   (Dgn_symbol_t.Dgn_context_symbol
     (Dgn_context_symbol_t.Dgn_context_database_symbol
       (Dgn_context_database_symbol_t.Dgn_context_database_constructor
         "gaussian_nwchem")),
    [5; 3])]
);;

let tag_nwc_l = Dgn_tag_all_list_by_dgn_context_basisset_tag_provider_v.provide tag_dcb;;
let tag_top_l = List.filter (fun (s, i) -> List.length i <= 5) tag_nwc_l;;

test_number 3 (
(tag_top_l : Dgn_symbol_t.nwchem_symbol Tag_t.tag list ) =
  [(Dgn_symbol_t.Dgn_context_symbol
     (Dgn_context_symbol_t.Dgn_context_domain_symbol
       (Dgn_context_domain_symbol_t.Dgn_context_domain_constructor "nwc")),
    [3]);
   (Dgn_symbol_t.Dgn_context_symbol
     (Dgn_context_symbol_t.Dgn_context_database_symbol
       (Dgn_context_database_symbol_t.Dgn_context_database_constructor
         "gaussian_nwchem")),
    [5; 3]);
   (Dgn_symbol_t.Dgn_context_symbol
     (Dgn_context_symbol_t.Dgn_context_basisset_symbol
       (Dgn_context_basisset_symbol_t.Dgn_context_basisset_constructor
         "LANL2DZ")),
    [5; 5; 3]);
   (Dgn_symbol_t.Dgn_context_symbol
     (Dgn_context_symbol_t.Dgn_context_version_symbol
       (Dgn_context_version_symbol_t.Dgn_context_version_constructor "v1.2.2")),
    [1; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_basis_block "LANL2DZ")),
    [2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_comment_block "LANL2DZ")),
    [1; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ao_set_block "LANL2DZ")),
    [2; 2; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ecp_basis_block "LANL2DZ")),
    [3; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_comment_block "LANL2DZ ECP")),
    [1; 3; 5; 5; 3]);
   (Dgn_symbol_t.Dgn_body_symbol
     (Dgn_body_symbol_t.Dgn_body_node_symbol
       (Dgn_body_node_symbol_t.Dgn_body_node_ecp_set_block "LANL2DZ")),
    [2; 3; 5; 5; 3])]
);;

let tag_clo_l = List.filter (fun (s, i) -> (Dgn_symbol_v.is_nwchem_closure_symbol_off_nwchem_symbol s) ) tag_nwc_l;;

