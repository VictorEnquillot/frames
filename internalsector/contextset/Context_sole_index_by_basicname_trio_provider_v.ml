(** {3 Context_sole_index_by_basicname_trio_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Context_sole_index_by_basicname_trio_provider_v";
   "Needs : CONS:Context_sole_index_by_context_name_provider_v";
   "What-is-it : the Database Sole_index for any Basicname trio (Sector, Domain, Database)";
   "Author : François Colonna 31 mars 2017 at 11:37:41+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_bas, bna_dom, bna_sec) =
  let (nam_bas, nam_dom, nam_sec) = 
    Trio_v.map Basicname_v.string_off 
      (bna_bas, bna_dom, bna_sec) 
  in
  Context_sole_index_by_context_name_trio_provider_v.provide (nam_bas, nam_dom, nam_sec)
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
(* done with do_provider_without_register.sh Context_sole_index_by_basicname_trio_provider_v.ml force on samedi 8 octobre 2016, 18:52:47 (UTC+0200) *)
