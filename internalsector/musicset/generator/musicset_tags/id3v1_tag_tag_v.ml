
(** {3 The functionalities for a Tag for a Id3v1_tag.} *)

let nam_cod = "id3v1_tag_tag_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name tag_idt =
  Tag_v.name Id3v1_tag_symbol_v.name tag_idt
;;


(** {6 Upgrading} *)


let id3v1_tag_tag_of_id3v1_tag_128_tag tag_it1 = 
  Tag_v.map_left Id3v1_tag_symbol_v.id3v1_tag_symbol_of_id3v1_tag_128_symbol tag_it1
;;

let id3v1_tag_tag_of_id3v1_tag_227_tag tag_it2 = 
  Tag_v.map_left Id3v1_tag_symbol_v.id3v1_tag_symbol_of_id3v1_tag_227_symbol tag_it2
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_idt soi_idt =
  Tag_v.make sym_idt soi_idt
;;


(** {6 Extracting} *)


let id3v1_tag_128_tag_off_id3v1_tag_tag tag_idt = 
  Tag_v.map_left Id3v1_tag_symbol_v.id3v1_tag_128_symbol_off_id3v1_tag_symbol tag_idt
;;

let id3v1_tag_227_tag_off_id3v1_tag_tag tag_idt = 
  Tag_v.map_left Id3v1_tag_symbol_v.id3v1_tag_227_symbol_off_id3v1_tag_symbol tag_idt
;;


(** {6 Querying} *)


let is_id3v1_tag_128_tag_off_id3v1_tag_tag tag_idt =
  Tag_v.map_left Id3v1_tag_symbol_v.is_id3v1_tag_128_symbol_off_id3v1_tag_symbol tag_idt
;;

let is_id3v1_tag_227_tag_off_id3v1_tag_tag tag_idt =
  Tag_v.map_left Id3v1_tag_symbol_v.is_id3v1_tag_227_symbol_off_id3v1_tag_symbol tag_idt
;;



(** created by ./generator id3v1_tag implementation tag at 11:39 15 Jun 2012. *)



