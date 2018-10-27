(** {3 Parameter_symbol_subtree_by_basicname_databox_n_databse_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPAR:Parameter_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v";
   "Needs : BPAR:Parameter_symbol_subtree_by_nwchemdata_context_databox_tag_provider_v";
   "Needs : BPAR:Parameter_symbol_subtree_by_db1pointsdata_context_basicname_databox_provider_v";
   "What-is-it : the Full Parameter Builder-Tree from (Databox_name, Database_name)";
   "How-is-it-done : by dispatching between the different databases";
   "Abbreviation : ebo = parameter_context_databox";
   "Author : François Colonna 02 avril 2017 at 13:23:01+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build (bna_dbo, bna_dba) =
  let nam_dba = Basicname_v.string_off bna_dba in
  match nam_dba with
  | "nwchem" ->
      let tag_nbo = 
	Nwchemdata_context_databox_tag_by_basicname_databox_provider_v.provide
	  bna_dbo
      in
      Parameter_symbol_subtree_by_nwchemdata_context_databox_tag_provider_v.provide tag_nbo
  | _ ->
      Error_messages_v.print_fatal_error nam_mod "build"
	"Database name were \"nwchem\""
	nam_dba
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
(* done with do_provider_without_register.sh Parameter_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v.ml force on lundi 10 octobre 2016, 09:13:02 (UTC+0200) *)
