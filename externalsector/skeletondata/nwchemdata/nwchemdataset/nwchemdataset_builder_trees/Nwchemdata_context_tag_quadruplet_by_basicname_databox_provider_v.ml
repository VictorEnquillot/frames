(** {3 Nwchemdata_context_tag_quadruplet_by_basicname_databox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BNWC:Nwchemdata_context_tag_quadruplet_by_basicname_databox_provider_v";
   "Needs : BNWC:Nwchemdata_context_databox_tag_by_basicname_databox_provider_v Check_consistency_by_basicname_quatuor_provider_v";
   "What-is-it : the Nwchem Context Quadruplet from Nwchemdata_context_databox_tag. Coerced Up";
   "Abbreviation : dcs = nwchemdata_context_sector";
   "Abbreviation : dba = nwchemdata_context_database";
   "Abbreviation : dbo = nwchemdata_context_databox";
   "Abbreviation : dcd = nwchemdata_context_domain";
   "Author : François Colonna 25 septembre 2016 at 20:23:17+02:00";
 ]
;;

(*  Context Wye-Tree        *)

(*  Ncstor Tag        dcs   *)
(*      |                   *)
(*  Domain Tag        dcd   *)
(*      |                   *)
(*  Database Tag      dba   *)
(*      |                   *)
(*  Databox Tag       dbo   *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_dbo =
  let tag_ncs = Nwchemdata_context_sector_tag_by_unit_provider_v.provide () in
  let tag_ncd = Nwchemdata_context_domain_tag_by_unit_provider_v.provide () in
  let tag_dba = Nwchemdata_context_database_tag_by_unit_provider_v.provide () in
  let tag_nbo = Nwchemdata_context_databox_tag_by_basicname_databox_provider_v.provide bna_dbo in
  
  let tag_qua = Quadruplet_v.make tag_nbo tag_dba tag_ncd tag_ncs in

  let nam_qua = Quadruplet_v.map 
      Nwchemdata_context_databox_tag_v.string_off 
      Nwchemdata_context_database_tag_v.string_off 
      Nwchemdata_context_domain_tag_v.string_off 
      Nwchemdata_context_sector_tag_v.string_off 
      tag_qua 
  in
  let bna_qua = Basicname_quatuor_by_context_name_quatuor_provider_v.provide nam_qua in
  Check_consistency_by_basicname_quatuor_provider_v.provide bna_qua;
  tag_qua
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
(* done with do_provider_without_register.sh Nwchemdata_context_tag_quadruplet_by_basicname_databox_provider_v.ml force on lundi 10 octobre 2016, 15:52:08 (UTC+0200) *)
