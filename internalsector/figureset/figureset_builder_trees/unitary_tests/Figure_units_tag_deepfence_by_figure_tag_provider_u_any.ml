open Make_test_v;;

testing "Figure_units_tag_deepfence_by_figure_tag_provider_v with
    Figure_units_tag_deepfence_by_figure_tag_provider_u_any.ml";;

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
   #use "Figure_units_tag_deepfence_by_figure_tag_provider_u_any.ml";;

*)

(* Database file *)

let nam_bas = "lanl2dz";;
let nam_dba = "db1points";;
Parameters_general_register_v.store "databox-name" nam_bas;;
Parameters_general_register_v.store "database-name" nam_dba;;

let tag_fig_l = Figure_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide () ;;

let tag_fig = List.find 
    (fun (s, i) -> Figure_symbol_v.is_figure_set_body_centered_aopefset_anycenter s)
    tag_fig_l;;

test_number 1 (  
(tag_fig : Figure_symbol_t.figure_symbol Tag_t.tag ) =
    (Figure_symbol_t.Figure_set_body_symbol
      (Figure_set_body_symbol_t.Figure_set_body_centered_symbol
        (Figure_set_body_centered_symbol_t.Figure_set_body_centered_aopefset_symbol
          (Figure_set_body_centered_aopefset_symbol_t.Figure_set_body_centered_aopefset_anycenter
            "lanl2dz")))),
   [1; 5; 5; 19])
);;

open Figure_units_tag_deepfence_by_figure_tag_provider_v;;

let tag_fen = Figure_fence_by_figure_tag_provider_v.provide 
      tag_fig;;


let tag_pff_l = List.map 
    (Tag_v.map_entity
       Figure_symbol_v.figure_set_fence_symbol_off_figure_symbol)
    tag_fen;;

let tag_pff_1l = List_v.sublist_of_int_of_length_of_list 0 2 tag_pff_l;;

test_number 2 (
( tag_pff_1l :
  Figure_set_fence_symbol_t.figure_set_fence_symbol Tag_t.tag list ) =
  [(Figure_set_fence_symbol_t.Figure_set_fence_centered_symbol
     (Figure_set_fence_centered_symbol_t.Figure_set_fence_centered_aopef_symbol
       (Figure_set_fence_centered_aopef_symbol_t.Figure_set_fence_centered_aopef_single_scaled_symbol
         (Figure_set_fence_centered_aopef_single_scaled_symbol_t.Figure_set_fence_centered_aopef_single_scaled_constructor
           "ne s 1 1"))),
    [1; 1; 1; 1; 1; 5; 5; 19]);
   (Figure_set_fence_symbol_t.Figure_set_fence_centered_symbol
     (Figure_set_fence_centered_symbol_t.Figure_set_fence_centered_aopef_symbol
       (Figure_set_fence_centered_aopef_symbol_t.Figure_set_fence_centered_aopef_single_scaled_symbol
         (Figure_set_fence_centered_aopef_single_scaled_symbol_t.Figure_set_fence_centered_aopef_single_scaled_constructor
           "ne s 1 2"))),
    [2; 1; 1; 1; 1; 5; 5; 19])]
);;

let tag_fig_pff_1l = List.map
    Figure_as_functional_parameter_tuple_tag_by_figure_set_fence_tag_provider_v.provide
    tag_pff_1l;;

test_number 3 (
( tag_fig_pff_1l : Figure_symbol_t.figure_symbol Tag_t.tag list )=
  [(Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_functional_parameter_tuple_symbol
       (Figure_functional_parameter_tuple_symbol_t.Figure_functional_parameter_tuple_aopef_symbol
         (Figure_functional_parameter_tuple_aopef_symbol_t.Figure_functional_parameter_tuple_aopef_constructor
           "ne s 1 1"))),
    [1; 5; 5; 6]);
   (Figure_symbol_t.Figure_set_body_symbol
     (Figure_set_body_symbol_t.Figure_functional_parameter_tuple_symbol
       (Figure_functional_parameter_tuple_symbol_t.Figure_functional_parameter_tuple_aopef_symbol
         (Figure_functional_parameter_tuple_aopef_symbol_t.Figure_functional_parameter_tuple_aopef_constructor
           "ne s 1 2"))),
    [2; 5; 5; 6])]
);;

let tag_fig_fpt_l = List_v.map 
      Figure_deepfence_by_figure_tag_provider_v.provide 
      tag_fig_pff_1l;;

test_number 4 (
(tag_fig_fpt_l : Figure_symbol_t.figure_symbol Tag_t.tag list list ) =
  [[(Figure_symbol_t.Figure_deepfence_symbol
      (Figure_deepfence_symbol_t.Figure_units_symbol
        (Figure_units_symbol_t.Figure_units_length_symbol
          Figure_units_length_symbol_t.Bohr)),
     [1; 1; 1; 5; 5; 6]);
    (Figure_symbol_t.Figure_deepfence_symbol
      (Figure_deepfence_symbol_t.Figure_units_symbol
        (Figure_units_symbol_t.Figure_units_length_symbol
          Figure_units_length_symbol_t.Bohr)),
     [1; 2; 1; 5; 5; 6])];
   [(Figure_symbol_t.Figure_deepfence_symbol
      (Figure_deepfence_symbol_t.Figure_units_symbol
        (Figure_units_symbol_t.Figure_units_length_symbol
          Figure_units_length_symbol_t.Bohr)),
     [1; 1; 2; 5; 5; 6]);
    (Figure_symbol_t.Figure_deepfence_symbol
      (Figure_deepfence_symbol_t.Figure_units_symbol
        (Figure_units_symbol_t.Figure_units_length_symbol
          Figure_units_length_symbol_t.Bohr)),
     [1; 2; 2; 5; 5; 6])]]
);;

let tag_fig_pff_l = List.map
      Figure_as_functional_parameter_tuple_tag_by_figure_set_fence_tag_provider_v.provide
      tag_pff_l;;

let dfe_uni = List_v.map 
      Figure_deepfence_by_figure_tag_provider_v.provide 
      tag_fig_pff_l
;;

let boo = dfe_uni = provide tag_fig;;

test_number 5 (
boo
);;
