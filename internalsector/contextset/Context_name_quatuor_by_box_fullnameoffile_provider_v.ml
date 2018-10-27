(** {3 Context_name_quatuor_by_box_fullnameoffile_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Context_name_quatuor_by_box_fullnameoffile_provider_v";
   "Needs : CONS:Box_fullnameoffile_list_by_unit_provider_v";
   "Needs : CONS:Context_name_by_context_fullnameoffile_provider_v";
   "Needs : CONS:Context_name_trio_by_fullnameofdirectory_provider_v";
   "Definition : a Context quatuor has the same order as a Sole_index : (Box, Base, Domain, Sector)";
   "Example : (\"external\", \"skeleton\", \"nwchem\", \"cc_pvtz\") ";
   "Author : François Colonna 14 septembre 2016 at 10:15:39+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build fno_box =
  let nam_fun = "build" in

  let fno_box_l = Box_fullnameoffile_list_by_unit_provider_v.provide () in
  if List.mem fno_box fno_box_l
  then
    begin
      let fnd = Filename.dirname fno_box in
      let nam_box = Context_name_by_context_fullnameoffile_provider_v.provide fno_box in
      let nam_con_t = Context_name_trio_by_fullnameofdirectory_provider_v.provide fnd in
      Quatuor_v.make_of_element_of_trio nam_box nam_con_t 
    end
  else
    Error_messages_v.print_fatal_error __FILE__ nam_fun
      (Format.sprintf "Current fullnameoffile :@.      >%s<@.   were a Databox file" fno_box) 
      (Format.sprintf "List of Databox files is:@.    %s" 
	 (List_v.name_in_column (fun s->s) fno_box_l)
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
(* done with do_provider_without_register.sh Context_name_quatuor_by_box_fullnameoffile_provider_v.ml force on samedi 8 octobre 2016, 18:52:45 (UTC+0200) *)
