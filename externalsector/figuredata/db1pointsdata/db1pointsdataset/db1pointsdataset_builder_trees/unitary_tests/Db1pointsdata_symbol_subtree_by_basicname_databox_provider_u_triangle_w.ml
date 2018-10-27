open Make_test_v;;

testing "Db1pointsdata_symbol_subtree_by_basicname_databox_provider_v with
    Db1pointsdata_symbol_subtree_by_basicname_databox_provider_u_triangle_w.ml";;

(* Deleting Registers *)

Register_v.delete Db1pointsdata_tag_tree_by_basicname_databox_register_v.register;;


(* Tracing *)

(* toplevel 
   #use "Db1pointsdata_symbol_subtree_by_basicname_databox_provider_u_triangle_w.ml";; 

*)

open Db1pointsdata_symbol_subtree_by_basicname_databox_provider_v;;

let nam_dbo = "triangle_w";;

let sym_db1_st = 
  Db1pointsdata_parser_v.db1pointsdata_symbol_tree_root_databox_of_basicname_databox 
    nam_dbo;;

let tag_db1_rtl = Tree_v.root_topson_node_list_off_tree sym_db1_st;;

test_number 1 (
(tag_db1_rtl : Db1pointsdata_symbol_t.db1pointsdata_symbol list ) =
  [Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
    (Db1pointsdata_context_symbol_t.Db1pointsdata_context_databox_symbol
      (Db1pointsdata_context_databox_symbol_t.Db1pointsdata_context_databox_constructor
        "triangle_w"));
   Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
    (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
      (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_information_symbol
        (Db1pointsdata_set_body_cluster_information_symbol_t.Db1pointsdata_set_body_cluster_information_constructor
          "A")));
   Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
    (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
      (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_vertex_symbol
        (Db1pointsdata_set_body_cluster_vertex_symbol_t.Db1pointsdata_set_body_cluster_vertex_constructor
          "A")))]
);;

test_number 2 (
sym_db1_st = provide nam_dbo
);;
