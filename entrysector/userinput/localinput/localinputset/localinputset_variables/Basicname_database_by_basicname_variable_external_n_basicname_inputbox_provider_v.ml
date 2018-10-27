(** {3 Basicname_database_by_basicname_variable_external_n_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VARLOI:Basicname_database_by_basicname_variable_external_n_basicname_inputbox_provider_v";
   "Needs : DLOI:Basicname_external_context_by_basicname_variable_external_n_basicname_inputbox_provider_v";
   "Needs : DLOI:Basicname_database_by_basicname_variable_context_n_basicname_inputbox_provider_v";
   "Register : VARLOI:Basicname_database_by_basicname_variable_external_n_basicname_inputbox_register_v";
   "Needed-by :"; 
   "What-is-it : for a given Basicname Variable_external it provides its Basicname Database from its Basicname Variable_context";
   "How-is-it-done : by extracting its Basicname_external_context string_off from its Define B-Subtree";
   "How-is-it-done : and extracting Leaf Basicname_database_constructor from it";
   "Author : François Colonna 03 janvier 2017 at 09:20:16+01:00";
   "Author : François Colonna 19 avril 2017 at 12:13:51+02:00";
 ]
;;

(* define Con_bc                    -- Basicname_variable_context *)
(*        context *)
(*          database "segment_BC"    -- Basicname_database *)
(*          database "db1points" *)
(*          domain "figure" *)
(*          sector "internal" *)
(*          end -- context *)
(*        end -- define *)

(* define Seg_bc                    -- Basicname_variable_external *)
(*        external  *)
(*          type [ "figure" "set" "body" "segment" "constructor" ] *)
(*          external_name "BC" *)
(*          external_context Con_bc -- Basicname_external_context *)
(*          end -- external *)
(*        end -- define *)

(* Seg_bc *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_var_ext, bna_ibo) =

  let bna_ext_con = 
    Basicname_external_context_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
      (bna_var_ext, bna_ibo)
  in

  let bna_var_con = Basicname_v.basicname_variable_context_of_basicname_external_context bna_ext_con in
  Basicname_database_by_basicname_variable_context_n_basicname_inputbox_provider_v.provide
    (bna_var_con, bna_ibo)
;;

(** {6 Storing} *)

let store (bna_var_ext, bna_ibo) val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Basicname_database_by_basicname_variable_external_n_basicname_inputbox_register_v.store nam_mod (bna_var_ext, bna_ibo) val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store (bna_var_ext, bna_ibo) =
  let val_ = build (bna_var_ext, bna_ibo) in
  store (bna_var_ext, bna_ibo) val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve (bna_var_ext, bna_ibo) =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Basicname_database_by_basicname_variable_external_n_basicname_inputbox_register_v.retrieve nam_mod (bna_var_ext, bna_ibo) in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace (bna_var_ext, bna_ibo) =
  if Basicname_database_by_basicname_variable_external_n_basicname_inputbox_register_v.is_stored (bna_var_ext, bna_ibo)
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

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Basicname_database_by_basicname_variable_external_n_basicname_inputbox_provider_v.ml force on mardi 25 avril 2017, 15:57:14 (UTC+0200) *)
