(** {3 Property_as_context_inputbase_tag_by_basicname_inputbase_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Property_as_context_inputbase_tag_by_basicname_inputbase_provider_v";
   "Needs : BPRO:Property_basicname_sector_by_unit_provider_v";
   "Needs : BPRO:Property_basicname_domain_by_unit_provider_v";
   "Needs : BPRO:Sector_ordinal_by_basicname_sector_provider_v";
   "Needs : BPRO:Domain_ordinal_by_domain_name_provider_v";
   "Needs : BPRO:Inputbase_ordinal_by_basicname_inputbase_provider_v";
   "Author : François Colonna 06 avril 2017 at 14:52:53+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_iba =
  let nam_iba = Basicname_v.string_off bna_iba in
  let bna_sec = Property_basicname_sector_by_unit_provider_v.provide () in
  let bna_dom = Property_basicname_domain_by_unit_provider_v.provide () in

  let ord_sec = Sector_ordinal_by_basicname_sector_provider_v.provide bna_sec in
  let ord_dom = Domain_ordinal_by_basicname_domain_provider_v.provide bna_dom in

  let ord_iba = Inputbase_ordinal_by_basicname_inputbase_provider_v.provide bna_iba in
  let soi_iba = [ord_iba; ord_dom; ord_sec] in

  let sym_pro_iba = 
    Property_symbol_v.property_context_inputbase_constructor 
      nam_iba
  in

  Tag_v.make sym_pro_iba soi_iba
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
(* done with do_provider_without_register.sh Property_as_context_inputbase_tag_by_basicname_inputbase_provider_v.ml force on mardi 15 novembre 2016, 16:37:10 (UTC+0100) *)
