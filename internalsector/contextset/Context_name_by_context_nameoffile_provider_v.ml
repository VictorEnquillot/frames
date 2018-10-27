(** {3 Context_name_by_context_nameoffile_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Context_name_by_context_nameoffile_provider_v";
   "Register : CONS:Context_name_by_context_nameoffile_register_v";
   "Needed-by :"; 
   "Definition : a Context_name is the name of any element of any Context (Sector, Domain, Database, Datafile)"; 
   "Definition : a Context name for a domain is the domain_name without set"; 
   "Definition : a Context name for any nameoffile is the nameoffile without file extension"; 
   "Definition : a Context name has the same case as its directory or file"; 
   "Example : \"point_a\"   = provide \"Point_a.db1\"";
   "Author : François Colonna 13 septembre 2016 at 15:37:49+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build nof = 
  if (String.get nof ((String.length nof)-4) = '.')
  then
    String_v.substring nof 0 ((String.length nof)-4)
  else
    Error_messages_v.print_fatal_error nam_mod "build"
      "File suffix were \".\" and 3 characters"
      nof
      "Check"
;;

(** {6 Storing} *)

let store nof val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Context_name_by_context_nameoffile_register_v.store nam_mod nof val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store nof =
  let val_ = build nof in
  store nof val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve nof =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Context_name_by_context_nameoffile_register_v.retrieve nam_mod nof in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace nof =
  if Context_name_by_context_nameoffile_register_v.is_stored nof
  then retrieve nof
  else build_n_store nof
;;

(** {6 Providing} *)

let provide nof =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace nof in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Context_name_by_context_nameoffile_provider_v.ml force on samedi 8 octobre 2016, 18:52:17 (UTC+0200) *)
