(** {3 Context_name_by_context_fullnameoffile_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Context_name_by_context_fullnameoffile_provider_v";
   "Needs : CONS:Context_nameoffile_by_context_fullnameoffile_provider_v";
   "Needs : CONS:Context_name_by_context_nameoffile_provider_v";
   "Needed-by : PARLOI:Localinput_parser_v";
   "Needed-by : PARNWC:Nwchemdata_parser_v";
   "What-is-it : the Context name (same case, no extension) from fullnameoffile";
   "Example : \"Point_a\" = provide \".../Point_a.db1\"";
   "Author : François Colonna 12 septembre 2016 at 09:51:41+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build fno_con =
  if not (Sys.file_exists fno_con)
  then 
    Error_messages_v.print_fatal_error __LOC__ "build"
      (Format.sprintf "File >%s< exists" fno_con)
      "it does NOT"
      "Check name"
  else
    begin
      let nof_con = Context_nameoffile_by_context_fullnameoffile_provider_v.provide fno_con in
      Context_name_by_context_nameoffile_provider_v.provide nof_con
    end
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
(* done with do_provider_without_register.sh Context_name_by_context_fullnameoffile_provider_v.ml force on samedi 8 octobre 2016, 18:52:44 (UTC+0200) *)
