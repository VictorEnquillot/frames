(** {3 Parameter_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VPRO:Parameter_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v";
   "Register : VPRO:Parameter_tag_by_basicname_variable_external_n_basicname_inputbox_register_v";
   "Needs : VPRO:Parameter_symbol_by_basicname_variable_external_n_basicname_inputbox_provider_v";
   "Needed-by : Property_target_body_implicit_tounit_value_v";
   "Definition : Localinput_set_fence_variable_name_entity_string_off is the name of a variable entity in Input_file";
   "What-is-it : ";
   "How-is-it-done : ";
   "Author : François Colonna 03 janvier 2017 at 09:27:43+01:00";
   "Author : François Colonna 23 avril 2017 at 16:50:17+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Building} *)

let build (bna_var, bna_ibo) = (* Ex.: "Aopef_hes11" *)

  let sym_par = 
    Parameter_symbol_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
      (bna_var, bna_ibo)
  in
  
  let bna_dba =
    Basicname_database_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
      (bna_var, bna_ibo)
  in
  
  let bna_dbo =
    Basicname_domain_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
      (bna_var, bna_ibo)
  in

  let tag_par_l =
    Parameter_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide 
      (bna_dbo, bna_dba)
  in
      
  try List_v.only_element_of_predicate_off_list 
      (fun (s, i) -> (s = sym_par))
      tag_par_l
  with Failure "No_element:List_v.only_element_of_predicate_off_list" ->
    let sym_par_l = List.map Tag_v.entity_off_tag tag_par_l in
    Error_messages_v.print_fatal_error __LOC__ "build"
      (Format.sprintf "Parameter Symbol >%s< were defined in Inputbox >%s< of Database >%s<" 
         (Parameter_symbol_v.fullname sym_par) (Basicname_v.name bna_dbo) (Basicname_v.name bna_dba))
      (Format.sprintf "list of Parameter Symbol is :@. %s"
         (List_v.name_in_column (Parameter_symbol_v.fullname) sym_par_l))
      (Format.sprintf "Check Input file >%s.loc<" (Basicname_v.string_off bna_ibo))
;;

(** {6 Storing} *)

let store (bna_var, bna_ibo) tag_par =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Parameter_tag_by_basicname_variable_external_n_basicname_inputbox_register_v.store_verbose nam_mod (bna_var, bna_ibo) tag_par;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store (bna_var, bna_ibo) =
  let tag_par = build (bna_var, bna_ibo) in
  store (bna_var, bna_ibo) tag_par;
  tag_par
;;

(** {6 Retrieving} *)

let retrieve (bna_var, bna_ibo) =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result =
    if (Management_v.is_set_trace_of_module_name_of_function_name nam_mod nam_fun) 
    then Parameter_tag_by_basicname_variable_external_n_basicname_inputbox_register_v.retrieve_with_trace (bna_var, bna_ibo) 
    else Parameter_tag_by_basicname_variable_external_n_basicname_inputbox_register_v.retrieve (bna_var, bna_ibo)
  in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing} *)

let provide_without_trace (bna_var, bna_ibo) =
  if Parameter_tag_by_basicname_variable_external_n_basicname_inputbox_register_v.is_stored (bna_var, bna_ibo)
  then retrieve (bna_var, bna_ibo)
  else build_n_store (bna_var, bna_ibo)
;;

(** {6 Providing} *)

let provide (bna_var, bna_ibo) =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace (bna_var, bna_ibo) in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_with_register.sh on lundi 18 avril 2016, 11:53:19 (UTC+0200) *)
