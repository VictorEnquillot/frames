(** {3 Skeleton_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VPRO:Skeleton_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v";
   "Register : VPRO:Skeleton_tag_by_basicname_variable_external_n_basicname_inputbox_register_v";
   "Needs : VPRO:Skeleton_symbol_by_basicname_variable_external_n_basicname_inputbox_provider_v";
   "Needed-by : Property_target_body_implicit_tounit_value_v";
   "Definition : Localinput_set_fence_variable_name_entity_string_off is the name of a variable entity in Input_file";
   "What-is-it : ";
   "How-is-it-done : ";
   "Author : François Colonna 13th April 2016";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_var_ext, bna_ibo) = 
  
  Check_is_basicname_variable_external_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide 
    (bna_var_ext, bna_ibo);
  
  let sym_ske = 
    Skeleton_symbol_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
      (bna_var_ext, bna_ibo)
  in
  
  let bna_dbo =
    Basicname_databox_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
      (bna_var_ext, bna_ibo)
  in
  
  let bna_dba =
    Basicname_database_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
      (bna_var_ext, bna_ibo)
  in

  let tag_ske_l =
    Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide 
      (bna_dbo, bna_dba)
  in
  
  let pre_tag_ske (s, i) = (s = sym_ske) in
  
  try List_v.only_element_of_predicate_off_list pre_tag_ske tag_ske_l
  with Failure "No_element:List_v.only_element_of_predicate_off_list" ->
    let sym_ske_l = List.map Tag_v.entity_off_tag tag_ske_l in
    let nam_dba = Basicname_v.string_off bna_dba in
    let nam_dbo = Basicname_v.string_off bna_dbo in
    let nam_ibo = Basicname_v.string_off bna_ibo in
    Error_messages_v.print_fatal_error __LOC__ "build"
      (Format.sprintf "Skeleton Symbol >%s< were defined in Inputbox >%s< of Database >%s<" 
         (Skeleton_symbol_v.fullname sym_ske) nam_dbo nam_dba)
      (Format.sprintf "list of Skeleton Symbol is :@. %s"
         (List_v.name_in_column (Skeleton_symbol_v.fullname) sym_ske_l))
      (Format.sprintf "Check Input file >%s.loc<" nam_ibo)
;;

(** {6 Storing} *)

let store (bna_var_ext, bna_ibo) tag_ske =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Skeleton_tag_by_basicname_variable_external_n_basicname_inputbox_register_v.store nam_mod (bna_var_ext, bna_ibo) tag_ske;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store (bna_var_ext, bna_ibo) =
  let tag_ske = build (bna_var_ext, bna_ibo) in
  store (bna_var_ext, bna_ibo) tag_ske;
  tag_ske
;;

(** {6 Retrieving} *)

let retrieve (bna_var_ext, bna_ibo) =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Skeleton_tag_by_basicname_variable_external_n_basicname_inputbox_register_v.retrieve nam_mod (bna_var_ext, bna_ibo) in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace (bna_var_ext, bna_ibo) =
  if Skeleton_tag_by_basicname_variable_external_n_basicname_inputbox_register_v.is_stored (bna_var_ext, bna_ibo)
  then retrieve (bna_var_ext, bna_ibo)
  else build_n_store (bna_var_ext, bna_ibo)
;;

(** {6 Providing} *)

let provide (bna_var_ext, bna_ibo) =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace (bna_var_ext, bna_ibo) in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_with_register.sh Skeleton_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v.ml on jeudi 9 juin 2016, 15:45:35 (UTC+0200) *)
