
(** {3 The functionalities for a Tag for a Id3v2_tag.} *)

let nam_cod = "id3v2_tag_tag_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name tag_idt =
  Tag_v.name Id3v2_tag_symbol_v.name tag_idt
;;


(** {6 Upgrading} *)


let id3v2_tag_tag_of_id3v2_base_tag_tag tag_ibt = 
  Tag_v.map_left Id3v2_tag_symbol_v.id3v2_tag_symbol_of_id3v2_base_tag_symbol tag_ibt
;;

let id3v2_tag_tag_of_id3v2_tag_unique_tag tag_itu = 
  Tag_v.map_left Id3v2_tag_symbol_v.id3v2_tag_symbol_of_id3v2_tag_unique_symbol tag_itu
;;

let id3v2_tag_tag_of_id3v2_tag_multiple_tag tag_itm = 
  Tag_v.map_left Id3v2_tag_symbol_v.id3v2_tag_symbol_of_id3v2_tag_multiple_symbol tag_itm
;;

let id3v2_tag_tag_of_id3v2_tag_specific_tag tag_its = 
  Tag_v.map_left Id3v2_tag_symbol_v.id3v2_tag_symbol_of_id3v2_tag_specific_symbol tag_its
;;

let id3v2_tag_tag_of_id3v2_3_tag_specific_tag tag_3ts = 
  Tag_v.map_left Id3v2_tag_symbol_v.id3v2_tag_symbol_of_id3v2_3_tag_specific_symbol tag_3ts
;;

let id3v2_tag_tag_of_id3v2_4_tag_specific_tag tag_4ts = 
  Tag_v.map_left Id3v2_tag_symbol_v.id3v2_tag_symbol_of_id3v2_4_tag_specific_symbol tag_4ts
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_idt soi_idt =
  Tag_v.make sym_idt soi_idt
;;


(** {6 Extracting} *)


let id3v2_base_tag_tag_off_id3v2_tag_tag tag_idt = 
  Tag_v.map_left Id3v2_tag_symbol_v.id3v2_base_tag_symbol_off_id3v2_tag_symbol tag_idt
;;

let id3v2_tag_unique_tag_off_id3v2_tag_tag tag_idt = 
  Tag_v.map_left Id3v2_tag_symbol_v.id3v2_tag_unique_symbol_off_id3v2_tag_symbol tag_idt
;;

let id3v2_tag_multiple_tag_off_id3v2_tag_tag tag_idt = 
  Tag_v.map_left Id3v2_tag_symbol_v.id3v2_tag_multiple_symbol_off_id3v2_tag_symbol tag_idt
;;

let id3v2_tag_specific_tag_off_id3v2_tag_tag tag_idt = 
  Tag_v.map_left Id3v2_tag_symbol_v.id3v2_tag_specific_symbol_off_id3v2_tag_symbol tag_idt
;;

let id3v2_3_tag_specific_tag_off_id3v2_tag_tag tag_idt = 
  Tag_v.map_left Id3v2_tag_symbol_v.id3v2_3_tag_specific_symbol_off_id3v2_tag_symbol tag_idt
;;

let id3v2_4_tag_specific_tag_off_id3v2_tag_tag tag_idt = 
  Tag_v.map_left Id3v2_tag_symbol_v.id3v2_4_tag_specific_symbol_off_id3v2_tag_symbol tag_idt
;;


(** {6 Querying} *)


let is_id3v2_base_tag_tag_off_id3v2_tag_tag tag_idt =
  Tag_v.map_left Id3v2_tag_symbol_v.is_id3v2_base_tag_symbol_off_id3v2_tag_symbol tag_idt
;;

let is_id3v2_tag_unique_tag_off_id3v2_tag_tag tag_idt =
  Tag_v.map_left Id3v2_tag_symbol_v.is_id3v2_tag_unique_symbol_off_id3v2_tag_symbol tag_idt
;;

let is_id3v2_tag_multiple_tag_off_id3v2_tag_tag tag_idt =
  Tag_v.map_left Id3v2_tag_symbol_v.is_id3v2_tag_multiple_symbol_off_id3v2_tag_symbol tag_idt
;;

let is_id3v2_tag_specific_tag_off_id3v2_tag_tag tag_idt =
  Tag_v.map_left Id3v2_tag_symbol_v.is_id3v2_tag_specific_symbol_off_id3v2_tag_symbol tag_idt
;;

let is_id3v2_3_tag_specific_tag_off_id3v2_tag_tag tag_idt =
  Tag_v.map_left Id3v2_tag_symbol_v.is_id3v2_3_tag_specific_symbol_off_id3v2_tag_symbol tag_idt
;;

let is_id3v2_4_tag_specific_tag_off_id3v2_tag_tag tag_idt =
  Tag_v.map_left Id3v2_tag_symbol_v.is_id3v2_4_tag_specific_symbol_off_id3v2_tag_symbol tag_idt
;;



(** created by ./generator id3v2_tag implementation tag at 11:39 15 Jun 2012. *)



