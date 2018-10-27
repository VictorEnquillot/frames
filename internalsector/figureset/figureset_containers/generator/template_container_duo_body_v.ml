(** {3 This_container_v.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : FFIG:This_container_v";
   "Needs : FFIG:Buldr_tag_v";
   "Needed-by : FFIG:Elementary_body_coordinate_tuple_container_v";
   "What-is-it : This_container is Duo of Buldr_tag";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name con_ttt =
  Duo_v.name 
    Buldr_tag_v.name
    con_ttt
;;

let string_off con_ttt =
  Duo_v.name 
    Buldr_tag_v.string_off
    con_ttt
;;

let longname con_ttt =
  Duo_v.name 
    Buldr_tag_v.longname
    con_ttt
;;

let fullname con_ttt =
  Duo_v.name 
    Buldr_tag_v.fullname
    con_ttt
;;

(** {6 Filling} *)

let fill tag_bui_1 tag_bui_2 =
  Duo_v.make tag_bui_1 tag_bui_2
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
  Duo_v.duo_off_list tag_bui_l
;;

(** {6 Builder Tag of Container} *)

let buldr_tag_duo_off_this_container con_ttt =
  con_ttt
;;

let buldr_tag_list_off_this_container con_ttt =
  Duo_v.list_off_duo con_ttt
;;

(** {6 Builder Sibling Tag of Container} *)

let buldr_bui_1_tag_off_this_container con_ttt =
  Duo_v.left_off_duo con_ttt
;;

let buldr_bui_2_tag_off_this_container con_ttt =
  Duo_v.right_off_duo con_ttt
;;

(** {6 Builder Main Tag of Container} *)

let mainb_tag_duo_off_this_container con_ttt =
  let tag_bbb_d = buldr_tag_duo_off_this_container con_ttt in
  Duo_v.map 
    (Tag_v.map_entity Mainb_symbol_v.mainb_symbol_of_buldr_symbol)
    tag_bbb_d
;;

let mainb_tag_tuple_off_this_container con_ttt =
  let tag_mbu_d = mainb_tag_duo_off_this_container con_ttt in
  Tuple_t.Duo tag_mbu_d
;;

let mainb_tag_list_off_this_container con_ttt =
  let tag_mbu_l = buldr_tag_list_off_this_container con_ttt in
  List.map 
    (Tag_v.map_entity Mainb_symbol_v.mainb_symbol_of_buldr_symbol)
    tag_mbu_l
;;

(** {6 Closure Tag} *)

let elementary_units_tag_duo_off_this_container con_ttt =
  let tag_bbb_d = buldr_tag_duo_off_this_container con_ttt in
  let con_bbb_d = Duo_v.map Buldr_container_v.container_of_tag tag_bbb_d in
  Duo_v.map Buldr_container_v.elementary_units_tag_off_buldr_container con_bbb_d
;;

let elementary_units_tag_tuple_off_this_container con_ttt =
  let tag_uni_d = units_tag_duo_off_this_container con_ttt in
  Tuple_t.Duo tag_uni_d
;;

let elementary_units_tag_list_off_this_container con_ttt =
  let tag_uni_d = units_tag_duo_off_this_container con_ttt in
  Duo_v.list_off_duo tag_uni_d
;;

let elementary_units_tag_bui_1_off_this_container con_ctc =
  let tag_bui_1 = buldr_bui_1_tag_off_this_container con_ctc in
  let con_bui_1 = Buldr_container_v.container_of_tag tag_bui_1 in
  Buldr_container_v.elementary_units_tag_off_buldr_container con_bui_1
;;

let elementary_units_tag_bui_2_off_this_container con_ctc =
  let tag_bui_2 = buldr_bui_2_tag_off_this_container con_ctc in
  let con_bui_2 = Buldr_container_v.container_of_tag tag_bui_2 in
  Buldr_container_v.elementary_units_tag_off_buldr_container con_bui_2
;;
