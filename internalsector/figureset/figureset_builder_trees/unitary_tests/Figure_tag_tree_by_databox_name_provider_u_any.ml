open Make_test_v;;

testing "Figure_tag_tree_by_databox_name_provider_v with
    Figure_tag_tree_by_databox_name_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_figure_context_databox_tag_register_v.register;;
Register_v.delete Figure_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Figure_fence_by_figure_tag_register_v.register;;
Register_v.delete Figure_son_tag_list_by_figure_father_tag_register_v.register;;
Register_v.delete Figure_symbol_by_sole_index_register_v.register;;
Register_v.delete Figure_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Figure_tag_all_list_by_figure_context_databox_tag_register_v.register;;
Register_v.delete Figure_tag_subtree_by_figure_tag_register_v.register;;
Register_v.delete Figure_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Figure_tag_tree_by_figure_context_databox_tag_register_v.register;;





(* Tracing *)


(* toplevel 
   #use "Figure_tag_tree_by_databox_name_provider_u_any.ml";; 

*)

(* Database file *)

let nam_bas = "lanl2dz";;
Parameters_general_register_v.store "databox-name" nam_bas;;

(* Debug *)

open Figure_tag_tree_by_databox_name_provider_v;;

let tag_dcb = Figure_context_databox_tag_by_databox_name_provider_v.provide nam_bas;;

test_number 1 ( 
( tag_dcb : Figure_context_databox_symbol_t.figure_context_databox_symbol Tag_t.tag ) =
  (Figure_context_databox_symbol_t.Figure_context_databox_constructor "lanl2dz",
   [5; 5; 3])
);;

let soi_dcb = Tag_v.sole_index_off_tag tag_dcb;;

test_number 2 (
(soi_dcb : Sole_index_t.sole_index) = 
[5; 5; 3]
);;

let tag_fig_t = Figure_tag_tree_by_databox_name_provider_v.provide  nam_bas ;;

let sym_tso_l = Tree_v.root_topson_node_list_off_tree sym_dgn_st;;

test_number 3 (
( sym_tso_l : Figure_symbol_t.dgn_symbol list ) =
  [Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_node_symbol
      (Figure_set_body_node_symbol_t.Figure_set_body_node_basis_set_file
        "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_db1points/files/db1pointsdata_lanl2dz.dgn"));
   Figure_symbol_t.Figure_context_symbol
    (Figure_context_symbol_t.Figure_context_version_symbol
      (Figure_context_version_symbol_t.Figure_context_version_constructor "v1.2.2"));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_node_symbol
      (Figure_set_body_node_symbol_t.Figure_set_body_node_ao_basis_block "LANL2DZ"));
   Figure_symbol_t.Figure_set_body_symbol
    (Figure_set_body_symbol_t.Figure_set_body_node_symbol
      (Figure_set_body_node_symbol_t.Figure_set_body_node_ecp_basis_block "LANL2DZ"))]
);;


let tag_dgn_t = Figure_tag_tree_by_databox_name_provider_v.provide tag_dcb;;
let tag_top_l = Tree_v.node_list_of_node_predicate_off_tree (fun (s, i) -> List.length i <= 5) tag_dgn_t;;

test_number 4 (
(tag_top_l : Figure_symbol_t.dgn_symbol Tag_t.tag list ) =
  [(Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_domain_symbol
       (Figure_context_domain_symbol_t.Figure_context_domain_constructor "dgn")),
    [3]);
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_database_symbol
       (Figure_context_database_symbol_t.Figure_context_database_constructor
         "db1points")),
    [5; 3]);
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_node_symbol
       (Figure_set_body_node_symbol_t.Figure_set_body_node_basis_set_file
         "/home/colonna/sources/ocaml_top/setup/frames/databaseset/database_db1points/files/db1pointsdata_lanl2dz.dgn")),
    [5; 5; 3]);
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_version_symbol
       (Figure_context_version_symbol_t.Figure_context_version_constructor "v1.2.2")),
    [1; 5; 5; 3]);
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_node_symbol
       (Figure_set_body_node_symbol_t.Figure_set_body_node_ao_basis_block "LANL2DZ")),
    [2; 5; 5; 3]);
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_node_symbol
       (Figure_set_body_node_symbol_t.Figure_set_body_node_ao_comment_block "LANL2DZ")),
    [1; 2; 5; 5; 3]);
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_node_symbol
       (Figure_set_body_node_symbol_t.Figure_set_body_node_aoset_block "LANL2DZ")),
    [2; 2; 5; 5; 3]);
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_node_symbol
       (Figure_set_body_node_symbol_t.Figure_set_body_node_ecp_basis_block "LANL2DZ")),
    [3; 5; 5; 3]);
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_node_symbol
       (Figure_set_body_node_symbol_t.Figure_set_body_node_comment_block "LANL2DZ ECP")),
    [1; 3; 5; 5; 3]);
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_set_body_node_symbol
       (Figure_set_body_node_symbol_t.Figure_set_body_node_ecp_set_block "LANL2DZ")),
    [2; 3; 5; 5; 3])]
);;

let tag_lea_l = Tree_v.leaf_node_list_off_tree tag_dgn_t;;
let tag_lea_l = List.filter (fun (s, i) -> not (
  (Figure_symbol_v.is_dgn_comment_reference s) 
|| (Figure_symbol_v.is_dgn_body_keyword_symbol_off_dgn_symbol s) 
|| (Figure_symbol_v.is_dgn_comment_symbol_off_dgn_symbol s) 
) ) tag_lea_l;;


let tag_clo_l = List.filter (fun (s, i) -> (Figure_symbol_v.is_dgn_closure_symbol_off_dgn_symbol s) )  tag_lea_l;;


let tag_dgn_l = Figure_tag_all_list_by_figure_context_databox_tag_provider_v.provide tag_dcb;;
