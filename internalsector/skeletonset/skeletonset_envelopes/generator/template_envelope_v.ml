(** {3 Thup_sibling_1_envelope_v.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VELE:Thup_sibling_1_envelope_v";
   "Needs : VELE:Measure_by_elementary_units_tag_provider_v";
   "Needs : VELE:Thup_sibling_1_container_v";
   "Needs : VELE:Brdup_sibling_1_tag";
   "Needs : DELE:Elementary_tag_all_list_by_database_name_n_databox_name_provider_v";
   "Remark : a Skeleton Fence Envelope is the same as its Bridge Envelope";
   "What-is-it : Thup_sibling_1_envelope is a list of Envelopee";
   "How-is-it-done : by defining its Bridge to Elementaryset Brdup_sibling_1_tag";
   "How-is-it-done : applying recursively all Envelope function to the Bridge element";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Bridge} *)

let bridge_as_elementary_tag_of_tag tag_ttt =
  let sof_pta = Thup_sibling_1_tag_v.string_off tag_ttt in

  let soi_ttt = Tag_v.sole_index_off_tag tag_ttt in
  let tag_sbo = 
    Skeleton_any_category_by_sole_index_extractor_v.skeleton_context_databox_tag_off_sole_index
      soi_ttt
  in
  let (nam_dba, nam_dbo) =
    Database_name_n_databox_name_by_skeleton_context_databox_tag_provider_v.provide
      tag_sbo 
  in
  let tag_ele_l = 
    Elementary_tag_all_list_by_database_name_n_databox_name_provider_v.provide 
      (nam_dba, nam_dbo) 
  in

  let pre_tag_pta_sof sof (s, i) = 
    (Elementary_symbol_v.is_brdup_sibling_1_symbol_off_elementary_symbol s)
      && 
    (Elementary_symbol_v.string_off s = sof)
  in

  List_v.only_element_of_predicate_off_list 
    (pre_tag_pta_sof sof_pta) 
    tag_ele_l
;;

let bridge_of_tag tag_ttt =
  let tag_ele_pta = bridge_as_elementary_tag_of_tag tag_ttt in
  Tag_v.map_entity 
    Elementary_symbol_v.brdup_sibling_1_symbol_off_elementary_symbol
    tag_ele_pta 
;;

(** {6 Envelope} *)

let envelope_of_tag tag_ttt =
  let bri_ttt = bridge_of_tag tag_ttt in
  Brdup_sibling_1_envelope_v.envelope_of_tag bri_ttt
;;

(** {6 Border} *)

let border_of_tag tag_ttt =
  let bri_ttt = bridge_of_tag tag_ttt in
  Brdup_sibling_1_envelope_v.border_of_tag bri_ttt
;;

(** {6 Closure} *)

let closure_of_tag tag_ttt =
  let bor_ttt = border_of_tag tag_ttt in
  List.flatten 
    (List_v.map 
       Elementary_border_envelope_v.closure_of_tag
       bor_ttt
    )
;;

(** {6 Float List} *)

let float_list_of_tag tag_ttt  =
  let bor_ttt = border_of_tag tag_ttt in
  List.map
    Elementary_border_envelope_v.float_of_tag
    bor_ttt
;;

(** {6 Units List} *)

let elementary_fence_units_actual_tag_list_of_tag tag_ttt =
  let bor_ttt = border_of_tag tag_ttt in
  List.map
    Elementary_border_envelope_v.elementary_fence_units_actual_tag_of_tag 
    bor_ttt
;;

(** {6 Text} *)

let text_of_tag tag_ttt =
  let bor_ttt = border_of_tag tag_ttt in
  List.map
    Elementary_border_envelope_v.text_of_tag 
    bor_ttt
;;

