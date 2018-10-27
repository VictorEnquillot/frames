(** {3 Elementary_symbol_subtree_by_databox_name_n_databse_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BELE:Elementary_symbol_subtree_by_databox_name_n_database_name_provider_v";
   "Needs : BELE:Elementary_symbol_subtree_by_nwchemdata_context_databox_name_provider_v";
   "Needs : BELE:Elementary_symbol_subtree_by_db1pointsdata_context_databox_name_provider_v";
   "What-is-it : the Full Elementary Builder-Tree from (Databox_name, Database_name)";
   "How-is-it-done : by dispatching between the different databases";
   "Abbreviation : ebo = elementary_context_databox";
   "Author : François Colonna 05 octobre 2016 at 09:22:15+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build (nam_ebo, nam_eba) =
  match nam_eba with
  | "nwchem" ->
      Elementary_symbol_subtree_by_nwchemdata_context_databox_name_provider_v.provide nam_ebo

  | "db1points" ->
      Elementary_symbol_subtree_by_db1pointsdata_context_databox_name_provider_v.provide nam_ebo

  | _ ->
      Error_messages_v.print_fatal_error nam_mod "build"
	"Database name were \"nwchem\" \"db1points\""
	nam_eba
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
(* done with do_provider_without_register.sh Elementary_symbol_subtree_by_databox_name_n_database_name_provider_v.ml force on lundi 10 octobre 2016, 09:13:02 (UTC+0200) *)
