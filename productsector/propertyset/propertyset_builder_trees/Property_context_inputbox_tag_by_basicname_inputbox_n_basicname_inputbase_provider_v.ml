(** {3 Property_context_inputbox_tag_by_basicname_inputbox_n_basicname_inputbase_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Property_context_inputbox_tag_by_basicname_inputbox_n_basicname_inputbase_provider_v";
   "Needs : BPRO:Property_basicname_quatuor_by_basicname_inputbox_n_basicname_inputbase_provider_v";
   "Needs : BPRO:Sector_ordinal_by_basicname_sector_provider_v";
   "Needs : BPRO:Domain_ordinal_by_domain_name_provider_v";
   "Needs : BPRO:Inputbase_ordinal_by_basicname_inputbase_provider_v";
   "Needs : BPRO:Inputbox_ordinal_by_basicname_inputbox_provider_v";
   "Author : François Colonna 10 octobre 2016 at 12:10:10+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_ibo, bna_iba) =
  let (bna_dbo, bna_dba, bna_dom, bna_sec) =
    Property_basicname_quatuor_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide
      (bna_ibo, bna_iba) 
  in

  let ord_sec = Sector_ordinal_by_basicname_sector_provider_v.provide bna_sec in
  let ord_dom = Domain_ordinal_by_basicname_domain_provider_v.provide bna_dom in
  let ord_iba = Inputbase_ordinal_by_basicname_inputbase_provider_v.provide bna_iba in
  let ord_ibo = Inputbox_ordinal_by_basicname_inputbox_provider_v.provide bna_ibo in
  let soi_ibo = [ord_ibo; ord_iba; ord_dom; ord_sec] in

  let nam_ibo = Basicname_v.string_off bna_ibo in
  let sym_ibo = 
    Property_context_inputbox_symbol_v.property_context_inputbox_constructor 
      nam_ibo
  in
  Tag_v.make sym_ibo soi_ibo
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
(* done with do_provider_without_register.sh Property_context_inputbox_tag_by_basicname_inputbox_n_basicname_inputbase_provider_v.ml force on mardi 15 novembre 2016, 16:37:13 (UTC+0100) *)
