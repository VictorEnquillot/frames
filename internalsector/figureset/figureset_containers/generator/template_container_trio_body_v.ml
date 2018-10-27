(** {3 This_container_v.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : FFIG:This_container_v";
   "Needs : FFIG:Buldr_tag_v";
   "Needed-by : FFIG:Elementary_body_coordinate_tuple_container_v";
   "What-is-it : This_container is Trio of Buldr_tag";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name con_ttt =
  Trio_v.name 
    Buldr_tag_v.name
    con_ttt
;;

let string_off con_ttt =
  Trio_v.name 
    Buldr_tag_v.string_off
    con_ttt
;;

let longname con_ttt =
  Trio_v.name 
    Buldr_tag_v.longname
    con_ttt
;;

let fullname con_ttt =
  Trio_v.name 
    Buldr_tag_v.fullname
    con_ttt
;;

(** {6 Filling} *)

let fill tag_bui_1 tag_bui_2 tag_bui_3 =
  Trio_v.make tag_bui_1 tag_bui_2 tag_bui_3
;;

(** {6 Building} *)

let build tag_ttt =
  let tag_ele_son_l =
    Elementary_any_category_by_sole_index_extractor_v.son_elementary_tag_list_of_string_predicate_of_father_tag 
      "is_buldr_symbol_off_elementary_symbol"
      tag_ttt 
  in

  List.map 
    (Tag_v.map_entity (* coerce down *)
       Elementary_symbol_v.buldr_symbol_off_elementary_symbol)
    tag_ele_son_l
;;

(** {6 Retrieving} *)

let container_of_tag tag_ttt =
  let tag_bui_l = build tag_ttt in
  Trio_v.trio_off_list tag_bui_l
;;

(** {6 Builder Tag of Container} *)

let buldr_tag_trio_off_this_container con_ttt =
  con_ttt
;;

let buldr_tag_tuple_off_this_container con_ttt =
  Tuplet_t.trio con_ttt
;;

let buldr_tag_list_off_this_container con_ttt =
  Trio_v.list_off_trio con_ttt
;;

(** {6 Fence Elementary_units Tag} *)

let elementary_units_tag_trio_off_this_container con_ttt =
  let tag_bbb_t = buldr_tag_trio_off_this_container con_ttt in
  let con_bbb_t = Trio_v.map Buldr_container_v.container_of_tag tag_bbb_t in
  Trio_v.map Buldr_container_v.elementary_units_tag_off_buldr_container con_bbb_t
;;

let elementary_units_tag_tuple_off_this_container con_ttt =
  let tag_uni_t = units_tag_trio_off_this_container con_ttt in
  Tuple_t.Trio tag_uni_t
;;

let elementary_units_tag_list_off_this_container con_ttt =
  let tag_uni_t = units_tag_trio_off_this_container con_ttt in
  Trio_v.list_off_trio tag_uni_t
;;

