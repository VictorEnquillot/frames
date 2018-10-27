(** {3 Inputbasefiles_nameofdirectory_by_inputbase_fullnameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Inputbasefiles_nameofdirectory_by_inputbase_fullnameofdirectory_provider_v";
   "Needs : CONS:Inputbase_fullnameofdirectory_list_by_unit_provider_v";
   "Definition : Inputbasefiles_nameofdirectory is Inputbase_nameofdirectory suffixed by \"files\"";
   "Example : \"db1figureinputfiles\" \"db2figureinputfiles\" \"nwcheminputfiles\" ... ";
   "Author : François Colonna 22 août 2016 at 10:21:44+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Preparing} *)

let check_is_inputbase_fullnameofdirectory fnd_iba =
  let fnd_iba_l = Inputbase_fullnameofdirectory_list_by_unit_provider_v.provide () in
  if List.mem fnd_iba fnd_iba_l
  then ()
  else Error_messages_v.print_fatal_error nam_mod "check_is_inputbase_fullnameofdirectory"
      (Format.sprintf "Fullnameofdirectory >%s< is Inputbase Fullnameofdirectory" fnd_iba)
      (Format.sprintf "Inputbase Fullnameofdirectory list is :@.       %s"
	 (List_v.name_in_column (fun s->s) fnd_iba_l)
      )
      "Check"
;; 

(** {6 Building} *)

let build fnd_iba =
  check_is_inputbase_fullnameofdirectory fnd_iba;
  let nod_iba = Filename.basename fnd_iba in  
  nod_iba ^ "files"
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_without_register_v.ml *)
(* done with do_provider_without_register.sh Inputbasefiles_nameofdirectory_by_inputbase_fullnameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:53:00 (UTC+0200) *)
