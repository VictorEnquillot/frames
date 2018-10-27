(** {3 Check_consistency_by_base_name_n_domain_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Check_consistency_by_base_name_n_domain_name_provider_v";
   "Needs : CONS:Domain_name_by_base_name_provider_v";
   "Author : François Colonna 07 octobre 2016 at 13:15:17+02:00";
   "Author : François Colonna 24 avril 2017 at 11:06:05+02:00 Pb with local inputbase";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (nam_bas, nam_dom) =
  match (nam_bas, nam_dom) with
  | ("db1points", "coordinate") 
  | ("db2points", "coordinate") 
  | ("db1points", "figure") 
  | ("db2points", "figure") 
  | ("nwchem", "parameter") 
  | ("g9x", "parameter") 
  | ("molpro", "parameter")
  | ("nwchem", "skeleton") 
  | ("g9x", "skeleton") 
  | ("molpro", "skeleton")
  | ("local", "user")
  | ("local", "property")
  | ("local", "operator") -> ()
  | _ -> 
      Error_messages_v.print_fatal_error nam_mod "build"
	(Format.sprintf "Base_name >%s< and Domain_name >%s< were a consistent Doublet" nam_bas nam_dom)
	"it is NOT"
	"Check or add it"
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
(* done with do_provider_without_register.sh Check_consistency_by_base_name_n_domain_name_provider_v.ml force on samedi 8 octobre 2016, 18:52:42 (UTC+0200) *)
