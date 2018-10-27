(** {3 Context_name_trio_by_fullnameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Context_name_trio_by_fullnameofdirectory_provider_v";
   "Needs : CONS:Context_name_by_context_nameofdirectory_provider_v";
   "Needs : CONS:Check_consistency_by_context_name_trio_provider_v";
   "Definition : a Context trio has the same order as a Sole_index : (Base, Domain, Sector)";
   "Author : François Colonna 23 septembre 2016 at 12:34:02+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build fnd =
  let nam_fun = "build" in

  if not (Sys.file_exists fnd)
  then 
    Error_messages_v.print_fatal_error __LOC__ nam_fun
      (Format.sprintf "File >%s< exists" fnd)
      "it does NOT"
      "Check name"
  else
    begin
      let wor_l = String_v.split_of_character_of_string '/' fnd in
      let ind_fra = 
	try 
	  List_v.index_of_element_of_list "frames" wor_l
	with Failure _ ->
	  Error_messages_v.print_fatal_error __FILE__ nam_fun
	    "word \"frames\" were an element of Current directory path" 
            fnd
	    "Check"
      in
      let wor_sl = List_v.sublist_of_int_of_length_of_list (ind_fra+1) 3 wor_l in
      let nam_con_rl = List.map 
	  Context_name_by_context_nameofdirectory_provider_v.provide 
	  wor_sl
      in
      let nam_con_l = List.rev nam_con_rl in
      let nam_con_t = List_v.trio_of_list nam_con_l in
      Check_consistency_by_context_name_trio_provider_v.provide nam_con_t;
      nam_con_t
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
(* done with do_provider_without_register.sh Context_name_trio_by_fullnameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:52:46 (UTC+0200) *)
