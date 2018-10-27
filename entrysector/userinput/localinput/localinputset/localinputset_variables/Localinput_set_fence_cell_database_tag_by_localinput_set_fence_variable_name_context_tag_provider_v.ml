(** {3 Localinput_set_fence_cell_database_tag_by_localinput_set_fence_variable_name_context_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Localinput_set_fence_cell_database_tag_by_localinput_set_fence_variable_name_context_tag_provider_v";
   "Needs : VARLOI:Localinput_set_body_handle_command_creation_define_tag_by_localinput_set_fence_variable_name_entity_tag_provider_v";
   "Needed-by :"; 
   "What-is-it : for a given Variable_name Target Tag it provides its Operator Tag";
   "How-is-it-done : by getting the Command Define Tag Subtree";
   "How-is-it-done : and extracting Leaf Localinput_set_fence_cell_database_constructor from it";
   "Author : François Colonna 21 avril 2017 at 10:38:39+02:00";
 ]
;;
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_lnc =

  let nam_var = Localinput_set_fence_variable_name_context_tag_v.string_off tag_lnc in
  let soi_lnc = Tag_v.sole_index_off_tag tag_lnc in
  let nam_ibo = Inputbox_name_by_any_sole_index_provider_v.provide soi_lnc in

  let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo in
  let bna_var = Basicname_v.basicname_inputbox_of_string nam_var in

  let tag_loi_lcd_st = 
    Localinput_as_set_body_handle_command_creation_define_tag_subtree_by_basicname_variable_n_basicname_inputbox_provider_v.provide
      (bna_var, bna_ibo)
  in
  
  let tag_loi_fcd = Tree_v.only_node_of_node_predicate_off_tree 
      (fun (s, i) -> Localinput_symbol_v.is_localinput_set_fence_cell_database_constructor s )
      tag_loi_lcd_st 
  in
  
(* Coerce Down *)
  Localinput_set_fence_cell_database_tag_v.localinput_set_fence_cell_database_tag_off_localinput_tag tag_loi_fcd 
;;

let build_n_store tag_lnc =
  build tag_lnc 
;;

(** {6 Providing} *)

let provide_without_trace tag_lnc =
  build_n_store tag_lnc
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
