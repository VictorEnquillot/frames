(** {3 Nameoffile_list_by_fullnameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Nameoffile_list_by_fullnameofdirectory_provider_v";
   "Register : CONS:Nameoffile_list_by_fullnameofdirectory_register_v";
   "What-is-it : the list of any kind of file in a directory";
   "Definition : Nameoffile is the name without its path of any kind of file";
   "Author : François Colonna 10 juin 2016 at 12:08:26+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build fnd =
  let nam_fun = "build" in

  let nof_a = Sys.readdir fnd in
  let nof_l = Array.to_list nof_a in
  if nof_l = []
  then 
    begin
      Error_messages_v.print_fatal_error __LOC__ nam_fun
	(Format.sprintf "Directory >%s< had some files" fnd)
	"It is Empty"
	"check"
    end
  else
    List.sort String.compare nof_l
;;

(** {6 Storing} *)

let store fnd val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Nameoffile_list_by_fullnameofdirectory_register_v.store nam_mod fnd val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store fnd =
  let val_ = build fnd in
  store fnd val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve fnd =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Nameoffile_list_by_fullnameofdirectory_register_v.retrieve nam_mod fnd in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace fnd =
  if Nameoffile_list_by_fullnameofdirectory_register_v.is_stored fnd
  then retrieve fnd
  else build_n_store fnd
;;

(** {6 Providing} *)

let provide fnd =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace fnd in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Nameoffile_list_by_fullnameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:52:39 (UTC+0200) *)
