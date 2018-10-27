(** {3 Elementary_coordinate_subitem_container_v} *)

(** {6 Documenting_for_container_v} *)

let documentation () = 
  [
   "Needs : FFIG:Units_tag_v";
   "Current : FFIG:Elementary_coordinate_subitem_container_v";
   "Needed-by : ";
   "What-is-it : a Uno Units_tag";
   "How-is-it-done : from Elementary_coordinate_tag Tree";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name con_sss =
  Uno_v.name 
    Units_tag_v.name
    con_sss
;;

let string_off con_sss =
  Uno_v.name 
    Units_tag_v.string_off
    con_sss
;;

let longname con_sss =
  Uno_v.name 
    Units_tag_v.longname
    con_sss
;;

let fullname con_sss =
  Uno_v.name 
    Units_tag_v.fullname
    con_sss
;;

(** {6 Filling} *)

let fill tag_uni =
  Uno_v.make tag_uni
;;

(** {6 Building} *)

let build tag_sss =
  let tag_ele_son_l =
    Elementary_any_category_by_sole_index_extractor_v.son_elementary_tag_list_of_string_predicate_of_father_tag 
      "is_units_symbol_off_elementary_symbol"
      tag_sss 
  in

  List.map 
    (Tag_v.map_entity (* coerce down *)
       Elementary_symbol_v.elementary_units_symbol_off_elementary_symbol)
    tag_ele_son_l
;;

(** {6 Retrieving} *)

let container_of_tag tag_sss =
  let tag_uni_l = build tag_sss in
  Uno_v.uno_of_list tag_uni_l
;;

(** {6 Builder_tag} *)

let elementary_units_tag_off_elementary_coordinate_subitem_container con_sss =
  Uno_v.element_off_uno con_sss
;;

let elementary_units_tag_off_elementary_coordinate_subitem_tag tag_sss =
  let con_sss = container_of_tag tag_sss in
  Uno_v.element_off_uno con_sss
;;

let elementary_units_angle_tag_off_elementary_coordinate_subitem_container con_sss =
  let tag_uni = units_tag_off_elementary_coordinate_subitem_container con_sss in
  Tag_v.map_entity Units_symbol_v.elementary_units_angle_symbol_off_units_symbol tag_uni
;;

let elementary_units_angle_tag_off_elementary_coordinate_subitem_tag tag_sss =
  let con_sss = container_of_tag tag_sss in
  units_angle_tag_off_elementary_coordinate_subitem_container con_sss 
;;

let elementary_units_length_tag_off_elementary_coordinate_subitem_container con_sss =
  let tag_uni = units_tag_off_elementary_coordinate_subitem_container con_sss in
  Tag_v.map_entity Units_symbol_v.elementary_units_length_symbol_off_units_symbol tag_uni
;;

let elementary_units_length_tag_off_elementary_coordinate_subitem_tag tag_sss =
  let con_sss = container_of_tag tag_sss in
  units_length_tag_off_elementary_coordinate_subitem_container con_sss 
;;

