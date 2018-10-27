open Make_test_v;;

testing "Localinput_symbol_subtree_by_basicname_inputbox_provider_v with
    Localinput_symbol_subtree_by_basicname_inputbox_provider_u_any.ml";;

(* Deleting Registers *)


(* Tracing *)

(* toplevel 
   #use "Localinput_symbol_subtree_by_basicname_inputbox_provider_u_any.ml";; 

*)

open Localinput_symbol_subtree_by_basicname_inputbox_provider_v;;

let nam_ibo = "Point_a_print";;

let sym_loc_st = 
  Localinput_parser_v.localinput_symbol_tree_root_inputbox_of_basicname_inputbox 
    nam_ibo;;

let tag_loc_rtl = Tree_v.root_topson_node_list_off_tree sym_loc_st;;

(*
test_number 1 (
(tag_loc_rtl : Localinput_symbol_t.localinput_symbol list ) =
  [Localinput_symbol_t.Localinput_context_symbol
    (Localinput_context_symbol_t.Localinput_context_inputbox_symbol
      (Localinput_context_inputbox_symbol_t.Localinput_context_inputbox_constructor
        "Point_a_print"));
   Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_cluster_symbol
      (Localinput_body_cluster_symbol_t.Localinput_body_cluster_information_symbol
        (Localinput_body_cluster_information_symbol_t.Localinput_body_cluster_information_constructor
          "A")));
   Localinput_symbol_t.Localinput_body_symbol
    (Localinput_body_symbol_t.Localinput_body_cluster_symbol
      (Localinput_body_cluster_symbol_t.Localinput_body_cluster_vertex_symbol
        (Localinput_body_cluster_vertex_symbol_t.Localinput_body_cluster_vertex_constructor
          "A")))]
);;

test_number 2 (
sym_loc_st = provide nam_ibo
);;
*)
