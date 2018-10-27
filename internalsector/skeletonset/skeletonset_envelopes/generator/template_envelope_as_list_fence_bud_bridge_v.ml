(** {3 Thup_thty_envelope_v.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VMMM:Thup_thty_envelope_v";
   "Needs : VMMM:Measure_by_elementary_units_tag_provider_v";
   "Needs : VMMM:Thup_thty_container_v";
   "Needs : DMMM:Database_name_n_databox_name_by_maint_tag_provider_v";
   "Needs : VMMM:Brdup_thty_tag";
   "Needs : DMMM:Elementary_tag_all_list_by_database_name_n_databox_name_provider_v";
   "Remark : a Maint Fence Envelope is the same as its Bridge Envelope";
   "What-is-it : Thup_thty_envelope is a list of Envelopee";
   "How-is-it-done : by defining its Bridge to Elementaryset Brdup_thty_tag";
   "How-is-it-done : applying recursively all Envelope function to the Bridge element";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Fence} *)

let fence_as_list_of_tag tag_yyy =
  let tag_ske = 
    Thup_thty_tag_v.maint_tag_of_thup_thty_tag
      tag_yyy
  in
  [tag_ske]
;;

let fence_coerced_down_of_tag tag_yyy =
  [tag_yyy] 
;;

(** {6 Bridge} *)

let bridge_of_tag tag_yyy =
  let sof_yyy = Thup_thty_tag_v.string_off tag_yyy in

  let tag_ske = 
    Thup_thty_tag_v.maint_tag_of_thup_thty_tag
      tag_yyy
  in
  let (nam_dba, nam_dbo) =
    Database_name_n_databox_name_by_maint_tag_provider_v.provide
      tag_ske
  in
  let tag_ele_l = 
    Elementary_tag_all_list_by_database_name_n_databox_name_provider_v.provide 
      (nam_dba, nam_dbo) 
  in

  let pre_tag_yyy_sof sof (s, i) = 
    (Elementary_symbol_v.is_brdup_thty_symbol_off_elementary_symbol s)
      && 
    (Elementary_symbol_v.string_off s = sof)
  in

  List_v.only_element_of_predicate_off_list 
    (pre_tag_yyy_sof sof_yyy) 
    tag_ele_l
;;

let bridge_as_brdup_thty_tag_of_tag tag_yyy =
  let tag_ele_yyy = bridge_of_tag tag_yyy in
  Tag_v.map_entity 
    Elementary_symbol_v.brdup_thty_symbol_off_elementary_symbol
    tag_ele_yyy 
;;

(** {6 Envelope} *)

let envelope_of_tag tag_yyy =
  let bri_yyy = bridge_as_brdup_thty_tag_of_tag tag_yyy in
  Brdup_thty_envelope_v.envelope_of_tag bri_yyy
;;

(** {6 Border} *)

let border_of_tag tag_yyy =
  let bri_yyy = bridge_as_brdup_thty_tag_of_tag tag_yyy in
  Brdup_thty_envelope_v.border_of_tag bri_yyy
;;

(** {6 Closure} *)

let closure_of_tag tag_yyy =
  let bor_yyy = border_of_tag tag_yyy in
  List.flatten 
    (List_v.map 
       Elementary_border_envelope_v.closure_of_tag
       bor_yyy
    )
;;

(** {6 Float List} *)

let float_list_of_tag tag_yyy  =
  let bor_yyy = border_of_tag tag_yyy in
  List.map
    Elementary_border_envelope_v.float_of_tag
    bor_yyy
;;

(** {6 Units List} *)

let elementary_fence_units_actual_tag_list_of_tag tag_yyy =
  let bor_yyy = border_of_tag tag_yyy in
  List.map
    Elementary_border_envelope_v.elementary_fence_units_actual_tag_of_tag 
    bor_yyy
;;

(** {6 Text} *)

let text_of_tag tag_yyy =
  let bor_yyy = border_of_tag tag_yyy in
  List.map
    Elementary_border_envelope_v.text_of_tag 
    bor_yyy
;;

