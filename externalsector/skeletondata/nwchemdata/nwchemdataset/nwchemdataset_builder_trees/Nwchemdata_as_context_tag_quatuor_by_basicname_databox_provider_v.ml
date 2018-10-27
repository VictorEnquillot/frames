(** {3 Nwchemdata_as_context_tag_quatuor_by_basicname_databox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BNWC:Nwchemdata_as_context_tag_quatuor_by_basicname_databox_provider_v";
   "Needs : BNWC:Nwchemdata_as_context_databox_tag_by_basicname_databox_provider_v Check_consistency_by_basicname_quatuor_provider_v";
   "What-is-it : the Nwchem Context Quatuor from Nwchemdata_context_databox_tag. Coerced Up";
   "Abbreviation : ncs = sector";
   "Abbreviation : dba = nwchemdata_context_database";
   "Abbreviation : dbo = nwchemdata_context_databox";
   "Abbreviation : ncd = nwchemdata_context_domain";
   "Author : François Colonna 01 avril 2017 at 11:58:35+02:00";
 ]
;;

(*  Context Wye-Tree        *)

(*  Sector Tag        ncs   *)
(*      |                   *)
(*  Domain Tag        dcd   *)
(*      |                   *)
(*  Database Tag      dba   *)
(*      |                   *)
(*  Databox Tag       dbo   *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_dbo =
  let tag_nwc_ncs = Nwchemdata_as_context_sector_tag_by_unit_provider_v.provide () in
  let tag_nwc_ncd = Nwchemdata_as_context_domain_tag_by_unit_provider_v.provide () in
  let tag_nwc_nba = Nwchemdata_as_context_database_tag_by_unit_provider_v.provide () in
  let tag_nwc_nbo = Nwchemdata_as_context_databox_tag_by_basicname_databox_provider_v.provide bna_dbo in
  
  let tag_nwc_qua = Quatuor_v.make tag_nwc_nbo tag_nwc_nba tag_nwc_ncd tag_nwc_ncs in
  
  let nam_qua = Quatuor_v.map 
      Nwchemdata_tag_v.string_off 
      tag_nwc_qua 
  in
  let bna_qua = Basicname_quatuor_by_context_name_quatuor_provider_v.provide nam_qua in
  Check_consistency_by_basicname_quatuor_provider_v.provide bna_qua;
  tag_nwc_qua
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
(* done with do_provider_without_register.sh Nwchemdata_as_context_tag_quatuor_by_basicname_databox_provider_v.ml force on lundi 10 octobre 2016, 15:52:06 (UTC+0200) *)
