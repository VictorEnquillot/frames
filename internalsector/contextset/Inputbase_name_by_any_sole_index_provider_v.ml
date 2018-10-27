(** {3 Inputbase_name_by_any_sole_index_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Inputbase_name_by_any_sole_index_provider_v";
   "Needs : CONS:Context_inputbase_name_by_ordinal_provider_v";
   "What-is-it : the Inputbase_name obtained by any sole_index of length greater than 3";
   "Author : François Colonna 04 avril 2017 at 11:43:58+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build soi_any =
  let soi_iba = 
    Inputbase_sole_index_by_any_sole_index_provider_v.provide
      soi_any 
  in
  let ord_iba = List.hd soi_iba in
  Inputbase_name_by_ordinal_provider_v.provide ord_iba
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

