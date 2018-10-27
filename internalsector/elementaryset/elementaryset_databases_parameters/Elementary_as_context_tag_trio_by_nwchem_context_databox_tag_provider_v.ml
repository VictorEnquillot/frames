(** {3 Elementary_as_context_tag_trio_by_nwchem_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_as_context_tag_trio_by_nwchem_context_databox_tag_provider_v";
   "Needs : DELE:Elementary_context_domain_tag_by_unit_provider_v";
   "Needs : DELE:Elementary_context_database_tag_by_parameters_general_provider_v";
   "Needs : DELE:Elementary_context_databox_skeletondata_tag_by_parameters_general_provider_v";
   "Needs : BNWC:Nwchem_context_databox_tag_v";
   "What-is-it : the Elementary Context Trio from Nwchem Databox_tag. Coerced Up";
   "Abbreviation : ndb = nwchem_context_database";
   "Abbreviation : ndf = nwchem_context_databox";
   "Abbreviation : edf = elementary_context_databox";
 ]
;;

(*  Context Wye-Tree        *)

(*  Domain Tag        ncd   *)
(*      |                   *)
(*  Database Tag      ndb   *)
(*      |                   *)
(*  Databox Tag Tree ndf_t *)

(** {6 Context Tags} *)

let build tag_ndf =

  let tag_ecd = Elementary_context_domain_tag_by_unit_provider_v.provide () in
  let tag_ele_ecd = Tag_v.map_entity (* Coerce Up *)
      Elementary_symbol_v.elementary_symbol_of_elementary_context_domain_symbol
      tag_ecd
  in

  let nam_dba = "nwchem" in
  let tag_edb = Elementary_context_database_tag_by_database_name_provider_v.provide nam_dba in
  let tag_ele_edb = Tag_v.map_entity (* Coerce Up *)
      Elementary_symbol_v.elementary_symbol_of_elementary_context_database_symbol
      tag_edb
  in

  let nam_dbo = Nwchem_context_databox_tag_v.string_off tag_ndf in
  let tag_eba = 
    Elementary_context_databox_skeletondata_tag_by_database_name_n_databox_name_provider_v.provide 
      (nam_dba, nam_dbo)
  in
  let tag_ele_edf = Tag_v.map_entity (* Coerce Up *)
      Elementary_symbol_v.elementary_symbol_of_elementary_context_databox_skeletondata_symbol
      tag_eba
  in
  
  Trio_v.make tag_ele_ecd tag_ele_edb tag_ele_edf
;;

let build_n_store tag_ndf =
  build tag_ndf 
;;

let provide_without_trace tag_ndf =
  build tag_ndf
;;

let provide_with_trace tag_ndf =
  let nam_mod = Management_v.current_module_name (documentation ()) in
  Management_v.entering_of_current_module_name nam_mod;

  let result = provide_without_trace tag_ndf in

  Management_v.exiting_of_current_module_name nam_mod;
  result
;;

let provide tag_ndf =
  if Parameters_general_provider_v.provide "trace-provide" = "true"
  then provide_with_trace tag_ndf
  else provide_without_trace tag_ndf
;;


