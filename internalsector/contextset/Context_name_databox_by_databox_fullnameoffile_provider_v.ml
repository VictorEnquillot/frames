(** {3 Context_name_databox_by_databox_fullnameoffile_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Context_name_databox_by_databox_fullnameoffile_provider_v";
   "Needs : CONS:Databox_fullnameoffile_list_by_unit_provider_v";
   "Needs : CONS:Context_name_by_context_nameoffile_provider_v";
   "Needed-by : PARNWC:Nwchemdata_parser_v";
   "What-is-it : the context name databox_name";
   "How-is-it-done : by splitting the path into Context_name";
   "Example : NWCS \".../frames/externalsector/skeletondata/nwchemdata/nwchemdatafiles/cc_pvtz.nwc\"";
   "Author : François Colonna 12 septembre 2016 at 08:15:49+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build fno_dbo =
  let nam_fun = "build" in

  let fno_dbo_l = Databox_fullnameoffile_list_by_unit_provider_v.provide () in
  if List.mem fno_dbo fno_dbo_l
  then
    begin
      let wor_l = String_v.split_of_character_of_string '/' fno_dbo in
      let nof_dbo = List_v.last_element_off_list wor_l in
      Context_name_by_context_nameoffile_provider_v.provide nof_dbo
    end
  else
    Error_messages_v.print_fatal_error __FILE__ nam_fun
      (Format.sprintf "Current fullnameoffile :@.      >%s<@.   were a Databox file" fno_dbo) 
      (Format.sprintf "List of Databox files is:@.    %s" 
	 (List_v.name_in_column (fun s->s) fno_dbo_l)
      ) 
      "Check"
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
(* done with do_provider_without_register.sh Context_name_databox_by_databox_fullnameoffile_provider_v.ml force on samedi 8 octobre 2016, 18:52:44 (UTC+0200) *)
