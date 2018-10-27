(** {3 Coordinate_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VPRO:Coordinate_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v";
   "Register : VPRO:Coordinate_tag_by_basicname_variable_external_n_basicname_inputbox_register_v";
   "Needs : VPRO:Coordinate_symbol_by_basicname_variable_external_n_basicname_inputbox_provider_v";
   "Needed-by : Property_target_body_implicit_tounit_value_v";
   "Definition : Localinput_set_fence_variable_name_entity_string_off is the name of a variable entity in Input_file";
   "What-is-it : ";
   "How-is-it-done : ";
   "Author : François Colonna 22 mai 2017 at 16:03:53+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Building} *)

let build (bna_var_ext, bna_ibo) = 

  let sym_coo = 
    Coordinate_symbol_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
      (bna_var_ext, bna_ibo)
  in

  let bna_dbo =
    Basicname_domain_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
      (bna_var_ext, bna_ibo)
  in

  let bna_dba =
    Basicname_database_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
      (bna_var_ext, bna_ibo)
  in

  let tag_coo_l =
    Coordinate_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide 
      (bna_dbo, bna_dba)
  in
      
  let pre_tag_coo (s, i) = (s = sym_coo) in
  
  try List_v.only_element_of_predicate_off_list pre_tag_coo tag_coo_l
  with Failure "No_element:List_v.only_element_of_predicate_off_list" ->
    let sym_coo_l = List.map Tag_v.entity_off_tag tag_coo_l in
    Error_messages_v.print_fatal_error __LOC__ "build"
      (Format.sprintf "Coordinate Symbol >%s< were defined in Inputbox >%s< of Database >%s<" 
         (Coordinate_symbol_v.fullname sym_coo) (Basicname_v.name bna_dbo) (Basicname_v.name bna_dba))
      (Format.sprintf "list of Coordinate Symbol is :@. %s"
         (List_v.name_in_column (Coordinate_symbol_v.fullname) sym_coo_l))
      (Format.sprintf "Check Input file >%s.loc<" (Basicname_v.name bna_ibo))
;;

(** {6 Storing} *)

let store (bna_var_ext, bna_ibo) tag_coo =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Coordinate_tag_by_basicname_variable_external_n_basicname_inputbox_register_v.store_verbose nam_mod (bna_var_ext, bna_ibo) tag_coo;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store (bna_var_ext, bna_ibo) =
  let tag_coo = build (bna_var_ext, bna_ibo) in
  store (bna_var_ext, bna_ibo) tag_coo;
  tag_coo
;;

(** {6 Retrieving} *)

let retrieve (bna_var_ext, bna_ibo) =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result =
    if (Management_v.is_set_trace_of_module_name_of_function_name nam_mod nam_fun) 
    then Coordinate_tag_by_basicname_variable_external_n_basicname_inputbox_register_v.retrieve_with_trace (bna_var_ext, bna_ibo) 
    else Coordinate_tag_by_basicname_variable_external_n_basicname_inputbox_register_v.retrieve (bna_var_ext, bna_ibo)
  in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing} *)

let provide_without_trace (bna_var_ext, bna_ibo) =
  if Coordinate_tag_by_basicname_variable_external_n_basicname_inputbox_register_v.is_stored (bna_var_ext, bna_ibo)
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

(* done with do_provider_with_register.sh on lundi 18 avril 2016, 11:53:19 (UTC+0200) *)
