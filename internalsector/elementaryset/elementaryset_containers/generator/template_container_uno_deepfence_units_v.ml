(** {3 This_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
[
  "Current : FMMM:This_container_v";
  "Needed-by: FMMM:This_formula_v";
  "What-is-it : a Uno of itself";
  "How-is-it-done: ";
  "Remark : it is a Deepfence";
]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name con_ttt =
  Uno_v.name 
    This_tag_v.string_off
    con_ttt
;;

let string_off con_ttt =
  ""
;;

let longname con_ttt =
  name con_ttt
;;

let fullname con_ttt =
  name con_ttt
;;

(** {6 Builder Tag Containers} *)

let builder_tag_list tag_ttt =
  [tag_ttt]
;;

let container_of_tag tag_ttt =
  let tag_ttt_l = builder_tag_list tag_ttt in
  Uno_v.uno_of_list tag_ttt_l
;;

let builder_tag_tuple tag_ttt =
  let con_ttt = container_of_tag tag_ttt in
  Tuple_v.tuple_of_uno con_ttt
;;

(** {6 Extracting Individual Builder Tag off Tag} *)

let elementary_deepfence_units_tag_off_elementary_deepfence_units_tag tag_ttt =
  let con_ttt = container_of_tag tag_ttt in
  Uno_v.element_off_uno con_ttt
;;

(** {6 Fence Tag off Tag} *)

let fence_as_list tag_ttt =
  [Tag_v.entity_off_tag tag_ttt]
;;

let fence_as_tuple tag_ttt =
  let fen_l = fence_as_list tag_ttt in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list tag_ttt =
  let fen_l = fence_as_list tag_ttt in
  Tuple_list_v.make fen_l
;;

(** {6 Deepfence Tag off Tag} *)

let deepfence_as_list tag_ttt =
  fence_as_list tag_ttt
;;

let deepfence_as_tuple tag_ttt =
  let dfe_l = deepfence_as_list tag_ttt in
  Tuple_v.tuple_of_list dfe_l
;;

let deepfence_as_tuple_list tag_ttt =
  let dfe_l = deepfence_as_list tag_ttt in
  Tuple_list_v.make dfe_l
;;
