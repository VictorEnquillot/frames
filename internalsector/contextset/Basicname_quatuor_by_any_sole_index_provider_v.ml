(** {3 Basicname_quatuor_by_context_sole_index_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Basicname_quatuor_by_context_sole_index_provider_v";
   "Needs : CONS:Basicname_quatuor_by_context_ordinal_quatuor_provider_v";
   "Needed-by :"; 
   "Definition : a Context_name is the name of any element of any Context (Sector, Domain, Database, Datafile)"; 
   "What-is-it : it provides a Basicname quatuor from any sole_index";
   "Author : François Colonna 02 avril 2017 at 13:51:08+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build soi_any =
  if (List.length soi_any < 4) 
  then
    Error_messages_v.print_fatal_error __LOC__ "build"
      "Sole_index length were >= 4"
      (Format.sprintf "Sole index is : %s" (Sole_index_v.name soi_any))
      "Check"
  else
    begin
      let soi_con = List_v.sublist_of_int_of_length_of_list 0 4 soi_any in
      let qua_nam = Context_name_quatuor_by_context_sole_index_provider_v.provide soi_con in
      Basicname_quatuor_by_context_name_quatuor_provider_v.provide qua_nam
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
(* done with do_provider_without_register.sh Basicname_quatuor_by_context_sole_index_provider_v.ml force on samedi 8 octobre 2016, 18:52:46 (UTC+0200) *)
