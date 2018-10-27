(** {3 Localinput_lexer_scanbuf_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : LANLOI:Localinput_lexer_scanbuf_by_basicname_inputbox_provider_v";
   "Needs : CONS:Inputbox_fullnameoffile_by_inputbox_nameoffile_provider_v";
   "Needed-by :"; 
   "Author : François Colonna 29 mars 2017 at 09:43:09+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Building} *)

let build bna_ibo =
  let nam_fun = "build" in

  let nam_ibo = Basicname_v.string_off bna_ibo in
  let nof_ibo = nam_ibo ^ ".loc" in
  let fno_ibo = 
    Inputbox_fullnameoffile_by_inputbox_nameoffile_provider_v.provide 
      nof_ibo 
  in

  if not (Sys.file_exists fno_ibo)
  then 
    Error_messages_v.print_lexical_error __LOC__ nam_fun
      (Format.sprintf "Localinput_file >%s< exists" fno_ibo)
      "it does NOT"
      "check"
  else
     File_v.scanbuf_of_fullname fno_ibo
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
(* done with do_provider_without_register.sh Localinput_lexer_scanbuf_by_basicname_inputbox_provider_v.ml  on jeudi 23 février 2017, 10:58:00 (UTC+0100) *)
