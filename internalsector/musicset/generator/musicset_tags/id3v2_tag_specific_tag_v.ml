
(** {3 The functionalities for a Tag for a Id3v2_tag_specific.} *)

let nam_cod = "id3v2_tag_specific_tag_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name tag_its =
  Tag_v.name Id3v2_tag_specific_symbol_v.name tag_its
;;


(** {6 Upgrading} *)


let id3v2_tag_specific_tag_of_id3v2_3_tag_specific_tag tag_3ts = 
  Tag_v.map_left Id3v2_tag_specific_symbol_v.id3v2_tag_specific_symbol_of_id3v2_3_tag_specific_symbol tag_3ts
;;

let id3v2_tag_specific_tag_of_id3v2_4_tag_specific_tag tag_4ts = 
  Tag_v.map_left Id3v2_tag_specific_symbol_v.id3v2_tag_specific_symbol_of_id3v2_4_tag_specific_symbol tag_4ts
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_its soi_its =
  Tag_v.make sym_its soi_its
;;


(** {6 Extracting} *)


let id3v2_3_tag_specific_tag_off_id3v2_tag_specific_tag tag_its = 
  Tag_v.map_left Id3v2_tag_specific_symbol_v.id3v2_3_tag_specific_symbol_off_id3v2_tag_specific_symbol tag_its
;;

let id3v2_4_tag_specific_tag_off_id3v2_tag_specific_tag tag_its = 
  Tag_v.map_left Id3v2_tag_specific_symbol_v.id3v2_4_tag_specific_symbol_off_id3v2_tag_specific_symbol tag_its
;;


(** {6 Querying} *)


let is_id3v2_3_tag_specific_tag_off_id3v2_tag_specific_tag tag_its =
  Tag_v.map_left Id3v2_tag_specific_symbol_v.is_id3v2_3_tag_specific_symbol_off_id3v2_tag_specific_symbol tag_its
;;

let is_id3v2_4_tag_specific_tag_off_id3v2_tag_specific_tag tag_its =
  Tag_v.map_left Id3v2_tag_specific_symbol_v.is_id3v2_4_tag_specific_symbol_off_id3v2_tag_specific_symbol tag_its
;;



(** created by ./generator id3v2_tag_specific implementation tag at 11:39 15 Jun 2012. *)



