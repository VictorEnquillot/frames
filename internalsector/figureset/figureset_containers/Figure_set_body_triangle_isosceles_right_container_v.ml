(** {3 Figure_set_body_triangle_isosceles_right_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
  [
   "Current : FFIG:Figure_set_body_triangle_isosceles_right_container_v";
   "Needs : FFIG:Figure_set_fence_point_tag_v";
   "Needs : FFIG:Figure_set_fence_point for son list predicate";
   "Needs : DFIG:Figure_any_category_by_sole_index_extractor_v";
   "Needs : DFIG:Figure_fence_by_figure_tag_provider_v";
   "Definition : for any Entity its B-Tree is the Tree of the Entity Tags necessary to build its value";
   "Definition : the Context gathers entities at the top of the B-Tree of a Domain (Domain, Database, Databox)";
   "Definition : the Body gathers entities of the B-Tree of a Domain being neither Context nor Fence";
   "Definition : the Fence is the Tag list of the Leaf entities of the B-Tree of a Domain";
   "Definition : a Builder (for an Entity of a Domain) is a son of its Builder-Subtree";
   "Definition : a Containee is a Builder expressed in the lowest subtype compatible with the Datastructure of the Container";
   "Definition : a Container is the Datastructure of the Containee of an Entity";
   "Definition : a Containee is an element of the Datastructure of the Container of an Entity";
   "Definition : a Building is the same Datastructure as Container filled with Builders"; 
   "Definition : a Stalk is a type with only one constructor of nothing";
   "Definition : a Bud type is a type with only one constructor of string";
   "Definition : a Stem type has only constructor of string";
   "Definition : a Branch type has only constructors of nothing";
   "Definition : a Trunc type has only constructors of constructor";
   "Remark : here Figure_set_fence_point is also Containee_up";
   "What-is-it : it is a Body Bud container as a Trio of Figure_set_fence_point : Figure_set_fence_point fpa and Figure_set_fence_point fpb";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_container} *)

let name con_fir =
  Trio_v.name 
    Figure_set_fence_point_tag_v.name
    con_fir
;;

let string_off con_fir =
  Trio_v.name 
    Figure_set_fence_point_tag_v.string_off
    con_fir
;;

let longname con_fir =
  Trio_v.name 
    Figure_set_fence_point_tag_v.longname
    con_fir
;;

let fullname con_fir =
  Trio_v.name 
    Figure_set_fence_point_tag_v.fullname
    con_fir
;;

(** {6 Coercing Up Tag} *)

let coerce_up_tag tag_fir =
  Tag_v.map_entity 
    Figure_symbol_v.figure_symbol_of_figure_set_body_triangle_isosceles_right_symbol 
    tag_fir
;;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let builder_tag_list_of_tag tag_fir =
  let tag_fig = coerce_up_tag tag_fir in
  Figure_son_tag_list_by_figure_father_tag_provider_v.provide tag_fig
;;

(** {9 Builder Tag Datastructures} *)

let builder_tag_trio tag_fir =
  let tag_bui_l = builder_tag_list_of_tag tag_fir in
  Trio_v.trio_of_list tag_bui_l
;;

(** {9 Builder Tag Tuple} *)

let builder_tag_tuple tag_fir =
  let tag_bui_d = builder_tag_trio tag_fir in
  Tuple_v.tuple_of_trio tag_bui_d
;;

(** {9 Building as Builder Tag trio} *)

let building_of_tag tag_fir =
  builder_tag_trio tag_fir
;;

(** {6 Container} *)

(** {9 Coercing Up Containee_up Tag to Builder Tag} *)

let builder_tag_of_containee_tag tag_cnu =
  Tag_v.map_entity 
    Figure_symbol_v.figure_symbol_of_figure_set_fence_point_symbol
    tag_cnu
;;

(** {9 Coercing Down Builder Tag to Containee_up Tag} *)

let containee_tag_off_builder_tag tag_bui =
  Tag_v.map_entity 
    Figure_symbol_v.figure_set_fence_point_symbol_off_figure_symbol
    tag_bui
;;

(** {9 Containee_up Tag list} *)

let containee_tag_list_of_tag tag_fir =
  let tag_bui_l = builder_tag_list_of_tag tag_fir in
  List.map containee_tag_off_builder_tag tag_bui_l 
;;

(** {9 Containee_up Tag Trio} *)

let containee_tag_trio tag_fir =
  let tag_cnu_l = containee_tag_list_of_tag tag_fir in
  Trio_v.trio_of_list tag_cnu_l
;;

(** {9 Extracting Containees off Containee_up} *)

(* No matter here *)

(** {9 Container_of_tag : Containee Datastructure} *)

let container_of_tag tag_fir =
  containee_tag_trio tag_fir 
;;

(** {9 Extracting Containees off Tag} *)

let first_containee_tag tag_fir =
  let con_fir = container_of_tag tag_fir in
  Trio_v.first_off_trio con_fir
;;

let second_containee_tag tag_fir =
  let con_fir = container_of_tag tag_fir in
  Trio_v.second_off_trio con_fir
;;

let third_containee_tag tag_fir =
  let con_fir = container_of_tag tag_fir in
  Trio_v.third_off_trio con_fir
;;

(** {6 Fence *)

let fence_as_list_of_tag tag_fir =
  let tag_fig = coerce_up_tag tag_fir in
  Figure_fence_by_figure_tag_provider_v.provide tag_fig
;;

let fence_as_trio tag_fir =
  let fen_fir = fence_as_list_of_tag tag_fir in
  Trio_v.trio_of_list fen_fir
;;

let fence_as_tuple_of_tag tag_fir =
  let fen_l = fence_as_list_of_tag tag_fir in
  Tuple_v.tuple_of_list fen_l
;;

let fence_as_tuple_list_of_tag tag_fir =
  let fen_l = fence_as_list_of_tag tag_fir in
  Tuple_list_v.make fen_l
;;

(* generated by ./do_container_as_trio_body_bud_1containee_v.sh figure_set_body_triangle_isosceles_right fir figure_set_fence_point fpa fpb fpc *)
(* using ./template_container_as_trio_body_bud_1containee_v.ml *)
(* done on vendredi 2 décembre 2016, 14:43:51 (UTC+0100) *)

