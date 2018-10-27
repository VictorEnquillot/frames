(** {3 Coordinate_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VPRO:Coordinate_tag_by_basicname_variable_external_n_basicname_inputbox_provider_v";
   "Needs : BINP:Make_argument_by_basicname_variable_n_basicname_inputbox_provider_v";
   "Needed-by : Property_target_body_implicit_tounit_value_v";
   "Definition : Localinput_set_fence_variable_name_entity_string_off is the name of a variable entity in Input_file";
   "What-is-it : ";
   "How-is-it-done : ";
   "Author : François Colonna 23 avril 2017 at 16:21:19+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build (bna_var_ext, bna_ibo) = (* Ex.: "Aopef_hes11" *)

  let bna_var = Basicname_v.basicname_variable_of_basicname_variable_external bna_var_ext in
  let mak_arg = 
    Make_argument_by_basicname_variable_n_basicname_inputbox_provider_v.provide
      (bna_var, bna_ibo)
  in 

  let bna_ext_nam = 
    Basicname_external_name_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
      (bna_var_ext, bna_ibo)
  in
  let nam_ext = Basicname_v.string_off bna_ext_nam in

  Coordinate_symbol_v.make mak_arg nam_ext
;;
  
(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh on lundi 18 avril 2016, 11:52:26 (UTC+0200) *)
