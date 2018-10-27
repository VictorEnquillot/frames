(** {3 Skeleton_symbol_by_sole_index_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DSKE:Skeleton_symbol_by_sole_index_provider_v";
   "Needs : DSKE:Skeleton_symbol_by_sole_index_register_filler_v";
   "Needed-by : DSKE:";
   "What-is-it : the provider of Skeleton_symbol by any sole_index";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build soi_ske =
  Skeleton_symbol_by_sole_index_register_filler_v.fill soi_ske;

  if Register_v.is_stored Skeleton_symbol_by_sole_index_register_v.register soi_ske 
  then Skeleton_symbol_by_sole_index_register_v.retrieve nam_mod soi_ske
  else 
    Error_messages_v.print_fatal_error __LOC__ "provide"
      (Format.sprintf "to find a Skeleton Symbol associated with sole_index %s" (Sole_index_v.name soi_ske))
      "Not Stored" 
      (Format.sprintf "Skeleton_tag_all_list_by_skeleton_context_databox_tag_provider_v should have create this entry@.\
      with :@.    Skeleton_symbol_by_sole_index_provider_v.store soi_x sym_x.\
       @.    Here is a dump of Skeleton_symbol_by_sole_index_register_v.register:@. %s@.    Register length =%i" 
	 (Skeleton_symbol_by_sole_index_register_v.dump ()) 
	 (Register_v.length Skeleton_symbol_by_sole_index_register_v.register) 
      )
;;

(** {6 Providing} *)

let provide soi_ske =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build soi_ske in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_dddd_symbol_by_sole_index_provider.sh on jeudi 19 mai 2016, 18:29:53 (UTC+0200) *)

(* done with /home/colonna/sources/ocaml_top/setup/utilities/template_dddd_symbol_by_sole_index_provider_v.ml *)
