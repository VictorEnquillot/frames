(** {3 This_container_v.}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : FFIG:This_container_v";
   "Needs : FFIG:Buldr_tag_v";
   "Needed-by : FFIG:Elementary_body_coordinate_tuple_container_v";
   "What-is-it : This_container is Uno of Buldr_tag";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name con_ttt =
  Uno_v.name 
    Buldr_tag_v.name
    con_ttt
;;

let string_off con_ttt =
  Uno_v.name 
    Buldr_tag_v.string_off
    con_ttt
;;

let longname con_ttt =
  Uno_v.name 
    Buldr_tag_v.longname
    con_ttt
;;

let fullname con_ttt =
  Uno_v.name 
    Buldr_tag_v.fullname
    con_ttt
;;

(** {6 Making} *)

let make tag_bui_1 =
  Uno_v.make tag_bui_1
;;

(** {6 Filling} *)

let fill tag_bui_1 =
  Uno_v.make tag_bui_1
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
  Uno_v.uno_of_list tag_bui_l
;;


(** {6 Builder Tag of Container} *)

let buldr_tag_uno_off_this_container con_ttt =
  con_ttt
;;

let buldr_tag_list_off_this_container con_ttt =
  Uno_v.list_of_uno con_ttt
;;

let buldr_bui_1_tag_off_this_container con_ttt =
  Uno_v.element_off_uno con_ttt
;;

(** {6 Builder Main Tag of Container} *)

let mainb_tag_uno_off_this_container con_ttt =
  let tag_bbb_d = buldr_tag_uno_off_this_container con_ttt in
  Uno_v.map 
    (Tag_v.map_entity Mainb_symbol_v.mainb_symbol_of_buldr_symbol)
    tag_bbb_d
;;

let mainb_tag_tuple_off_this_container con_ttt =
  let tag_mbu_d = mainb_tag_uno_off_this_container con_ttt in
  Tuple_t.Uno tag_mbu_d
;;

let mainb_tag_list_off_this_container con_ttt =
  let tag_mbu_l = buldr_tag_list_off_this_container con_ttt in
  List.map 
    (Tag_v.map_entity Mainb_symbol_v.mainb_symbol_of_buldr_symbol)
    tag_mbu_l
;;

(** {6 Closure Tag} *)

let elementary_units_tag_uno_off_this_container con_ttt =
  let tag_bbb_s = buldr_tag_uno_off_this_container con_ttt in
  let con_bbb_s = Uno_v.map Buldr_container_v.container_of_tag tag_bbb_s in
  Uno_v.map Buldr_container_v.elementary_units_tag_off_buldr_container con_bbb_s
;;

let elementary_units_tag_tuple_off_this_container con_ttt =
  let tag_uni_s = units_tag_uno_off_this_container con_ttt in
  Tuple_t.Uno tag_uni_s
;;

let elementary_units_tag_list_off_this_container con_ttt =
  let tag_uni_s = units_tag_uno_off_this_container con_ttt in
  Uno_v.list_of_uno tag_uni_s
;;

let elementary_units_tag_bui_1_off_this_container con_ctc =
  let tag_bui_1 = buldr_bui_1_tag_off_this_container con_ctc in
  let con_bui_1 = Buldr_container_v.container_of_tag tag_bui_1 in
  Buldr_container_v.elementary_units_tag_off_buldr_container con_bui_1
;;
