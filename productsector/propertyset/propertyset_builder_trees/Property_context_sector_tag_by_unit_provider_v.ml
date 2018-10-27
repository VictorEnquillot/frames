(** {3 Property_basicname_sector_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Property_basicname_sector_by_unit_provider_v";
   "Needs : BPRO:Domain_name_n_sector_name_by_fullnameofdirectory_provider_v";
   "Author : François Colonna 03 avril 2017 at 10:03:58+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build () =
  let bna_sec = Property_basicname_sector_by_unit_provider_v.provide () in
  let soi_pcs = Context_sole_index_by_basicname_sector_provider_v.provide bna_sec in

  let nam_pcs = Basicname_v.string_off bna_sec in
  let sym_pcs = 
    Property_context_sector_symbol_v.property_context_sector_constructor 
      nam_pcs
  in
  Tag_v.make sym_pcs soi_pcs
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
(* done with do_provider_without_register.sh Property_basicname_sector_by_unit_provider_v.ml force on mardi 15 novembre 2016, 16:37:13 (UTC+0100) *)
