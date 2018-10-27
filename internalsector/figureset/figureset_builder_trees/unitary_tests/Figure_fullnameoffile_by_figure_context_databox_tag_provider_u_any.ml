open Make_test_v;;

testing "Figure_fullnameoffile_by_figure_context_databox_tag_provider_v with
    Figure_fullnameoffile_by_figure_context_databox_tag_provider_u_any.ml";;

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
   #use "Figure_fullnameoffile_by_figure_context_databox_tag_provider_u_any.ml";; 

*)

(* Debug *)

open Figure_fullnameoffile_by_figure_context_databox_tag_provider_v;;

let nam_nbo = "lanl2dz";;

let tag_nbo = Figure_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v.provide nam_nbo;;

test_number 1 (
( tag_nbo :
  Figure_context_databox_symbol_t.figure_context_databox_symbol Tag_t.tag ) =
  (Figure_context_databox_symbol_t.Figure_context_databox_constructor
    "lanl2dz",
   [5; 5; 22; 6])
);;

let (nam_fba, nam_nbo) =
    Databox_name_n_database_name_by_figure_context_databox_tag_provider_v.provide
      tag_nbo;;
  
test_number 2 (
(nam_fba : string ) =
"db1points"
);;

let fno_nwc = Figure_fullnameoffile_by_basicname_databox_n_basicname_database_provider_v.provide (nam_fba, nam_nbo);;

test_number 3 (
( fno_nwc : string ) =
"/home/colonna/sources/ocaml_top/setup/frames/databaseset/figuredata/db1points/files/lanl2dz.nwc"
);;
