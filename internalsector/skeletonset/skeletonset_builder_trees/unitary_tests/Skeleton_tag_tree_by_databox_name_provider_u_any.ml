open Make_test_v;;

testing "Skeleton_tag_tree_by_basicname_databox_provider_v with
    Skeleton_tag_tree_by_basicname_databox_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Basicname_databox_n_basicname_database_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Skeleton_fence_by_skeleton_tag_register_v.register;;
Register_v.delete Skeleton_son_tag_list_by_skeleton_father_tag_register_v.register;;
Register_v.delete Skeleton_symbol_by_sole_index_register_v.register;;
Register_v.delete Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_subtree_by_skeleton_tag_register_v.register;;
Register_v.delete Skeleton_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;





(* Tracing *)


(* toplevel 
   #use "Skeleton_tag_tree_by_basicname_databox_provider_u_any.ml";; 

*)

(* Database file *)

let nam_bas = "lanl2dz";;
Parameters_general_register_v.store "databox-name" nam_bas;;

(* Debug *)

open Skeleton_tag_tree_by_basicname_databox_provider_v;;

let tag_dcb = Skeleton_context_databox_tag_by_basicname_databox_provider_v.provide nam_bas;;

test_number 1 ( 
( tag_dcb : Skeleton_context_databox_symbol_t.skeleton_context_databox_symbol Tag_t.tag ) =
  (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor "lanl2dz",
   [5; 5; 3])
);;

let soi_dcb = Tag_v.sole_index_off_tag tag_dcb;;

test_number 2 (
(soi_dcb : Sole_index_t.sole_index) = 
[5; 5; 3]
);;

let tag_ske_t = Skeleton_tag_tree_by_basicname_databox_provider_v.provide  nam_bas ;;

let sym_tso_l = Tree_v.root_topson_node_list_off_tree sym_dgn_st;;

test_number 3 (
( sym_tso_l : Skeleton_symbol_t.dgn_symbol list ) =
  [Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_node_symbol
      (Skeleton_body_node_symbol_t.Skeleton_body_node_basis_set_file
        "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_nwchem/files/nwchem_lanl2dz.dgn"));
   Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_version_symbol
      (Skeleton_context_version_symbol_t.Skeleton_context_version_constructor "v1.2.2"));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_node_symbol
      (Skeleton_body_node_symbol_t.Skeleton_body_node_ao_basis_block "LANL2DZ"));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_node_symbol
      (Skeleton_body_node_symbol_t.Skeleton_body_node_ecp_basis_block "LANL2DZ"))]
);;


let tag_dgn_t = Skeleton_tag_tree_by_basicname_databox_provider_v.provide tag_dcb;;
let tag_top_l = Tree_v.node_list_of_node_predicate_off_tree (fun (s, i) -> List.length i <= 5) tag_dgn_t;;

test_number 4 (
(tag_top_l : Skeleton_symbol_t.dgn_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_domain_symbol
       (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor "dgn")),
    [3]);
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_database_symbol
       (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
         "nwchem")),
    [5; 3]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_body_node_symbol
       (Skeleton_body_node_symbol_t.Skeleton_body_node_basis_set_file
         "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_nwchem/files/nwchem_lanl2dz.dgn")),
    [5; 5; 3]);
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_version_symbol
       (Skeleton_context_version_symbol_t.Skeleton_context_version_constructor "v1.2.2")),
    [1; 5; 5; 3]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_body_node_symbol
       (Skeleton_body_node_symbol_t.Skeleton_body_node_ao_basis_block "LANL2DZ")),
    [2; 5; 5; 3]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_body_node_symbol
       (Skeleton_body_node_symbol_t.Skeleton_body_node_ao_comment_block "LANL2DZ")),
    [1; 2; 5; 5; 3]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_body_node_symbol
       (Skeleton_body_node_symbol_t.Skeleton_body_node_aoset_block "LANL2DZ")),
    [2; 2; 5; 5; 3]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_body_node_symbol
       (Skeleton_body_node_symbol_t.Skeleton_body_node_ecp_basis_block "LANL2DZ")),
    [3; 5; 5; 3]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_body_node_symbol
       (Skeleton_body_node_symbol_t.Skeleton_body_node_comment_block "LANL2DZ ECP")),
    [1; 3; 5; 5; 3]);
   (Skeleton_symbol_t.Skeleton_body_symbol
     (Skeleton_body_symbol_t.Skeleton_body_node_symbol
       (Skeleton_body_node_symbol_t.Skeleton_body_node_ecp_set_block "LANL2DZ")),
    [2; 3; 5; 5; 3])]
);;

let tag_lea_l = Tree_v.leaf_node_list_off_tree tag_dgn_t;;
let tag_lea_l = List.filter (fun (s, i) -> not (
  (Skeleton_symbol_v.is_dgn_comment_reference s) 
|| (Skeleton_symbol_v.is_dgn_body_keyword_symbol_off_dgn_symbol s) 
|| (Skeleton_symbol_v.is_dgn_comment_symbol_off_dgn_symbol s) 
) ) tag_lea_l;;


let tag_clo_l = List.filter (fun (s, i) -> (Skeleton_symbol_v.is_dgn_closure_symbol_off_dgn_symbol s) )  tag_lea_l;;


let tag_dgn_l = Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide tag_dcb;;
