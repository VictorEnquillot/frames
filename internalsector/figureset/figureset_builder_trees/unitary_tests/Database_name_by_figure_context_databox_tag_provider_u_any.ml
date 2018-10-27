open Make_test_v;;

testing "Database_name_by_figure_context_databox_tag_provider_v with
    Database_name_by_figure_context_databox_tag_provider_u_any.ml";;

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
   #use "Database_name_by_figure_context_databox_tag_provider_u_any.ml";; 

*)

open Database_name_by_figure_context_databox_tag_provider_v;;
  
let nam_fbo = "segment_BC";;
let nam_fba = "db1points";;

let tag_fbo = Figure_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v.provide (nam_fbo, nam_fba);;

test_number 1 (
(tag_fbo :
  Figure_context_databox_symbol_t.figure_context_databox_symbol
  Tag_t.tag ) =
  (Figure_context_databox_symbol_t.Figure_context_databox_constructor
    "segment_BC",
   [15; 1; 7; 5])
);;

let soi_fbo = Tag_v.sole_index_off_tag tag_fbo;;

test_number 2 ( 
(soi_fbo : Sole_index_t.sole_index ) = 
[15; 1; 7; 5]
);;

let ord_fba = Sole_index_v.father_index_off_sole_index soi_fbo;;

test_number 3 (
(ord_fba : int ) = 
1
);;

let nam_fba = Database_name_by_ordinal_provider_v.provide ord_fba;;

test_number 4 ( 
(nam_fba : string ) = 
"db1points"
);;

test_number 5 (
nam_fba = provide tag_fbo
);;
