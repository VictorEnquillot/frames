open Make_test_v;;

testing "Figure_context_tag_quadruplet_by_basicname_databox_n_basicname_database_provider_v with
    Figure_context_tag_quadruplet_by_basicname_databox_n_basicname_database_provider_u_any.ml";;

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
   #use "Figure_context_tag_quadruplet_by_basicname_databox_n_basicname_database_provider_u_any.ml";; 

*)

open Figure_context_tag_quadruplet_by_basicname_databox_n_basicname_database_provider_v;;

let nam_fbo = "segment_BC";;
let nam_fba = "db1points";;
    
  let tag_fcs = Figure_context_sector_tag_by_unit_provider_v.provide ();;
  let tag_fcd = Figure_context_domain_tag_by_unit_provider_v.provide ();;
  let tag_fba = 
    Figure_context_database_tag_by_database_name_provider_v.provide 
      nam_fba;;  

  let tag_fbo = 
    Figure_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v.provide 
      (nam_fbo, nam_fba);;

let tag_qua = Quadruplet_v.make tag_fbo tag_fba tag_fcd tag_fcs;;

test_number 1 (
(tag_qua :
  (Figure_context_databox_symbol_t.figure_context_databox_symbol
   Tag_t.tag,
   Figure_context_database_symbol_t.figure_context_database_symbol
   Tag_t.tag,
   Figure_context_domain_symbol_t.figure_context_domain_symbol Tag_t.tag,
   Figure_context_sector_symbol_t.figure_context_sector_symbol Tag_t.tag)
  Quadruplet_t.quadruplet ) =
  ((Figure_context_databox_symbol_t.Figure_context_databox_constructor
     "segment_BC",
    [15; 1; 7; 5]),
   (Figure_context_database_symbol_t.Figure_context_database_constructor
     "db1points",
    [1; 7; 5]),
   (Figure_context_domain_symbol_t.Figure_context_domain_constructor
     "figure",
    [7; 5]),
   (Figure_context_sector_symbol_t.Figure_context_sector_constructor
     "internal",
    [5]))
);;

let nam_qua = Quadruplet_v.map 
    Figure_context_databox_tag_v.string_off 
    Figure_context_database_tag_v.string_off 
    Figure_context_domain_tag_v.string_off 
    Figure_context_sector_tag_v.string_off 
    tag_qua 
;;

test_number 2 (
( nam_qua : (string, string, string, string) Quadruplet_t.quadruplet ) =
  ("segment_BC", "db1points", "figure", "internal")
);;

test_number 3 (
() = Check_consistency_by_figure_context_name_quatuor_provider_v.provide nam_qua;
);;

test_number 4 (
tag_qua = provide (nam_fbo, nam_fba)
);;
