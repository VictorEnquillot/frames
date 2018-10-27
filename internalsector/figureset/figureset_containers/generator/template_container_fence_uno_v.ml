(** {3 This_container_v} *)

(** {6 Documenting_for_container_v} *)

let documentation () = 
  [
   "Current : FFIG:This_container_v";
   "Needs : FFIG:Units_container_v";
   "Needs : FFIG:Units_tag_v";
   "Needed-by : ";
   "What-is-it : a Uno Units_tag";
   "How-is-it-done : from Elementary_coordinate_tag Tree";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name con_ttt =
  Uno_v.name 
    Units_tag_v.name
    con_ttt
;;

let string_off con_ttt =
  Uno_v.name 
    Units_tag_v.string_off
    con_ttt
;;

let longname con_ttt =
  Uno_v.name 
    Units_tag_v.longname
    con_ttt
;;

let fullname con_ttt =
  Uno_v.name 
    Units_tag_v.fullname
    con_ttt
;;

(** {6 Filling} *)

let fill tag_uni =
  Uno_v.make tag_uni
;;

(** {6 Building} *)

let build tag_ttt =
  let tag_ele_son_l =
    Elementary_any_category_by_sole_index_extractor_v.son_elementary_tag_list_of_string_predicate_of_father_tag 
      "is_units_symbol_off_elementary_symbol"
      tag_ttt 
  in

  List.map 
    (Tag_v.map_entity (* coerce down *)
       Elementary_symbol_v.elementary_units_symbol_off_elementary_symbol)
    tag_ele_son_l
;;

(** {6 Retrieving} *)

let container_of_tag tag_ttt =
  let tag_uni_l = build tag_ttt in
  Uno_v.uno_of_list tag_uni_l
;;

(** {6 Closure Tag off Container} *)

let elementary_units_tag_off_this_container con_ttt =
  Uno_v.element_off_uno con_ttt
;;

let elementary_units_tag_list_off_this_container con_ttt =
  Uno_v.list_of_uno con_ttt
;;

(** {6 Specific Closure Tag} *)

let elementary_units_length_tag_off_this_container con_ttt =
  let tag_uni = units_tag_off_this_container con_ttt in
  Tag_v.map_entity Units_symbol_v.elementary_units_length_symbol_off_units_symbol tag_uni
;;

