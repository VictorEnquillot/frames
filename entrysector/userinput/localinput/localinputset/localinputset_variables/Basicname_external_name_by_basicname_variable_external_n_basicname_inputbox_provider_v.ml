(** {3 Basicname_external_name_by_basicname_variable_external_n_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Basicname_external_name_by_basicname_variable_external_n_basicname_inputbox_provider_v";
   "Needs : VARLOI:Localinput_as_set_body_handle_command_creation_define_tag_subtree_by_basicname_variable_external_n_basicname_inputbox_provider_v";
   "Needed-by :"; 
   "How-is-it-done : by getting the Command Define Tag Subtree";
   "How-is-it-done : and extracting Leaf Basicname_external_name_constructor from it";
   "What-is-it : for a given Basicname Variable_external it provides its Basicname External_name from its Define Handle";
   "Author : François Colonna 23 avril 2017 at 13:00:43+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

(* define Seg_bc                    -- Basicname_variable_external *)
(*        external                                                 *)
(*          type [ "figure" "set" "body" "segment" "constructor" ] *)
(*          external_name "BC"      -- Basicname_external_name     *)
(*          external_context Con_bc                                *)
(*          end -- external                                        *)
(*        end -- define                                            *)
 
let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_var_ext, bna_ibo) =

  let nam_var_ext = Basicname_v.string_off bna_var_ext in
  let bna_var = Basicname_v.basicname_variable_of_string nam_var_ext in

  let tag_loi_lcd_st = 
    Localinput_as_set_body_handle_command_creation_define_tag_subtree_by_basicname_variable_n_basicname_inputbox_provider_v.provide
      (bna_var, bna_ibo)
  in
  
  let tag_loi_fcn = Tree_v.only_node_of_node_predicate_off_tree
      (fun (s, i) -> Localinput_symbol_v.is_localinput_set_fence_cell_external_name_symbol_off_localinput_symbol s)
      tag_loi_lcd_st 
  in

  let nam_ext = Localinput_tag_v.string_off tag_loi_fcn in
  Basicname_v.basicname_external_name_of_string nam_ext
;;

let build_n_store tag_net =
  build tag_net 
;;

(** {6 Providing} *)

let provide_without_trace tag_net =
  build_n_store tag_net
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
