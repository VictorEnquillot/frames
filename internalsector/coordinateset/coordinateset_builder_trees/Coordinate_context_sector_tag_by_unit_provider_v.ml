(** {3 Coordinate_context_sector_tag_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BCOO:Coordinate_context_sector_tag_by_unit_provider_v";
   "Needs : BCOO:Coordinate_basicname_sector_by_unit_provider_v";
   "Needs : CONS:Context_sole_index_by_sector_name_provider_v";
   "Author : François Colonna 29 mars 2017 at 17:39:26+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build () =
  let bna_cbs = Coordinate_basicname_sector_by_unit_provider_v.provide () in
  let nam_cbs = Basicname_v.string_off bna_cbs in
  let soi_cbs = Context_sole_index_by_sector_name_provider_v.provide nam_cbs in
  let sym_ncs = 
    Coordinate_context_sector_symbol_v.coordinate_context_sector_constructor 
      nam_cbs 
  in
  Tag_v.make sym_ncs soi_cbs
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
(* done with do_provider_without_register.sh Coordinate_context_sector_tag_by_unit_provider_v.ml force on lundi 10 octobre 2016, 09:13:02 (UTC+0200) *)
