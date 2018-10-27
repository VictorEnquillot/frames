(** {3 Coordinate_context_databox_tag_by_any_sole_index_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPAR:Coordinate_context_databox_tag_by_any_sole_index_provider_v";
   "Needs : BPAR:Coordinate_context_databox_symbol_by_any_sole_index_provider_v";
   "Needs : BPAR:Coordinate_context_databox_sole_index_by_any_sole_index_provider_v";
   "What-is-it : the Coordinate_context_databox Tag ";
   "Author : François Colonna 03 septembre 2016 at 17:37:03+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build soi_any =
  let sym_pbo = 
    Coordinate_context_databox_symbol_by_any_sole_index_provider_v.provide 
      soi_any 
  in
  let soi_pbo = 
    Coordinate_context_databox_sole_index_by_any_sole_index_provider_v.provide 
      soi_any
  in
  Tag_v.make sym_pbo soi_pbo
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
(* done with do_provider_without_register.sh Coordinate_context_databox_tag_by_any_sole_index_provider_v.ml force on mardi 15 novembre 2016, 16:37:12 (UTC+0100) *)
