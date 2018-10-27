open Make_test_v;;

testing "Figure_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v with
    Figure_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_u_any.ml";;

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
   #use "Figure_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_u_any.ml";; 

*)

open Figure_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v;;

let nam_fbo = "segment_BC";;
let nam_fba = "db1points";;
    
  let tag_fig_fcs = Figure_as_context_sector_tag_by_unit_provider_v.provide ();;
  let tag_fig_fcd = Figure_as_context_domain_tag_by_unit_provider_v.provide ();;
  let tag_fig_fba = 
    Figure_as_context_database_tag_by_database_name_provider_v.provide 
      nam_fba;;  

  let tag_fig_fbo = 
    Figure_as_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v.provide 
      (nam_fbo, nam_fba);;

let tag_fig_qua = Quadruplet_v.make tag_fig_fbo tag_fig_fba tag_fig_fcd tag_fig_fcs;;

test_number 1 (
( tag_fig_qua :
  (Figure_symbol_t.figure_symbol Tag_t.tag,
   Figure_symbol_t.figure_symbol Tag_t.tag,
   Figure_symbol_t.figure_symbol Tag_t.tag,
   Figure_symbol_t.figure_symbol Tag_t.tag)
  Quadruplet_t.quadruplet ) =
  ((Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_databox_symbol
       (Figure_context_databox_symbol_t.Figure_context_databox_constructor
         "segment_BC")),
    [15; 1; 7; 5]),
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_database_symbol
       (Figure_context_database_symbol_t.Figure_context_database_constructor
         "db1points")),
    [1; 7; 5]),
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_domain_symbol
       (Figure_context_domain_symbol_t.Figure_context_domain_constructor
         "figure")),
    [7; 5]),
   (Figure_symbol_t.Figure_context_symbol
     (Figure_context_symbol_t.Figure_context_sector_symbol
       (Figure_context_sector_symbol_t.Figure_context_sector_constructor
         "internal")),
    [5]))
);;

let nam_qua = Quatuor_v.map 
      Figure_tag_v.string_off 
      tag_fig_qua;;

test_number 2 (
(nam_qua : string Quatuor_t.quatuor ) =
  ("segment_BC", "db1points", "figure", "internal")
);;

test_number 3 (
() = Check_consistency_by_figure_context_name_quatuor_provider_v.provide nam_qua;
);;

test_number 4 (
tag_fig_qua = provide (nam_fbo, nam_fba)
);;
