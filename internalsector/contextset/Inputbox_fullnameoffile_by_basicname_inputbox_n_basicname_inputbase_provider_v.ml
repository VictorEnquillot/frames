(** {3 Inputbox_fullnameoffile_by_basicname_inputbox_n_basicname_inputbase_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Inputbox_fullnameoffile_by_basicname_inputbox_n_basicname_inputbase_provider_v";
   "Needs : CONS:Inputbox_fullnameoffile_by_inputbox_name_n_inputbase_name_provider_v";
   "Author : François Colonna 28 mars 2017 at 11:45:28+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build (bna_ibo, bna_iba) =
  let nam_ibo = Basicname_v.string_off bna_ibo in
  let nam_iba = Basicname_v.string_off bna_iba in	 
  Inputbox_fullnameoffile_by_inputbox_name_n_inputbase_name_provider_v.provide (nam_ibo, nam_iba)
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
