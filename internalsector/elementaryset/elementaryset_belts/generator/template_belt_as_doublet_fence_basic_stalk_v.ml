(** {3 This_belt_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : VELE:This_belt_v";
   "What-is-it : it is a Tag coupled with a Readee_basic_thty";
   "Remark: it is analogous to Elementary_fence_units_actual_action_belt_v";
   "Remark: where fence_units_action is replaced by fence_basic_thty";
   "Remark: where measure_action (readee_units) is replaced by readee_basic_thty";
 ]
;;

(** {6 Naming} *)

let name bel_ttt =
  Doublet_v.name This_tag_v.name Readee_basic_thty_v.name bel_ttt
;;

let string_off bel_ttt =
  Doublet_v.name This_tag_v.string_off Readee_basic_thty_v.string_off bel_ttt
;;

let longname bel_ttt =
  Doublet_v.name This_tag_v.longname Readee_basic_thty_v.longname bel_ttt
;;

let fullname bel_ttt =
  Doublet_v.name This_tag_v.fullname Readee_basic_thty_v.fullname bel_ttt
;;

(** {6 Extraction from Database : Readee_basic_thty} *)

let readee_of_tag tag_ttt =
  let tag_efe = Tag_v.map_entity
      Elementary_fence_symbol_v.elementary_fence_symbol_of_this_symbol
      tag_ttt
  in
  Readee_by_elementary_fence_tag_provider_v.provide 
    tag_efe
;;

let readee_basic_thty_of_tag tag_ttt =
  let rea = readee_of_tag tag_ttt in
  Readee_v.readee_basic_thty_off_readee rea
;;

(** {6 Tagged_measure Triplet} *)

let belt_of_tag tag_ttt =
  let pbs = readee_basic_thty_of_tag tag_ttt in
  Doublet_v.make tag_ttt pbs
;;

let tagged_readee_basic_thty_doublet_of_tag tag_ttt =
  let pbs = readee_basic_thty_of_tag tag_ttt in
  Doublet_v.make tag_ttt pbs
;;

(** {6 Extracting Readee off Belt} *)

let readee_basic_thty_off_belt bel_ttt =
  Doublet_v.right_off_doublet bel_ttt
;;

let readee_basic_off_belt bel_ttt =
  let pbs = readee_basic_thty_off_belt bel_ttt in
  Readee_basic_v.readee_basic_of_readee_basic_thty pbs
;;

let readee_off_belt bel_ttt =
  let pba = readee_basic_off_belt bel_ttt in
  Readee_v.readee_of_readee_basic pba
;;

let readee_list_off_belt bel_ttt =
  let rea = readee_off_belt bel_ttt in
  [rea]
;;

(** {6 Closure : list of Readee} *)

let closure_off_belt bel_ttt =
  let rea = readee_off_belt bel_ttt in
  [rea]
;;

let closure_of_tag tag_ttt =
  let bel_ttt = belt_of_tag tag_ttt in
  closure_off_belt bel_ttt
;;

(** {6 Tagged_readee Doublet} *)

let tagged_readee_doublet_of_tag tag_ttt =
  let plu_ttt = readee_of_tag tag_ttt in
  Doublet_v.make tag_ttt plu_ttt
;;

(** {6 String} *)

let string_of_tag tag_ttt  =
  let pbs = readee_basic_thty_of_tag tag_ttt in
  Readee_basic_thty_v.string_off pbs 
;;

(** {6 Thty} *)

let thty_of_tag tag_ttt  =
  let pbs = readee_basic_thty_of_tag tag_ttt in
  Readee_basic_thty_v.thty_off pbs 
;;

(** {6 Basic} *)

let this_symbol_of_tag tag_ttt =
  Tag_v.entity_off_tag tag_ttt
;;

let this_symbol_off_belt bel_ttt =
  let tag_ttt = Doublet_v.left_off_doublet bel_ttt in
  this_symbol_of_tag tag_ttt
;;

(** {6 Text} *)

let text_of_tag tag_ttt =
  let str = string_of_tag tag_ttt in
  Format.sprintf "thty %s" str
;;
