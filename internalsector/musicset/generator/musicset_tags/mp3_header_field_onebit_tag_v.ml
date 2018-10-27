
(** {3 The functionalities for a Tag for a Mp3_header_field_onebit.} *)

let nam_cod = "mp3_header_field_onebit_tag_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name tag_hf1 =
  Tag_v.name Mp3_header_field_onebit_symbol_v.name tag_hf1
;;


(** {6 Upgrading} *)


let mp3_header_field_onebit_tag_of_version_tag tag_ven = 
  Tag_v.map_left Mp3_header_field_onebit_symbol_v.mp3_header_field_onebit_symbol_of_version_symbol tag_ven
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_hf1 soi_hf1 =
  Tag_v.make sym_hf1 soi_hf1
;;


(** {6 Extracting} *)


let version_tag_off_mp3_header_field_onebit_tag tag_hf1 = 
  Tag_v.map_left Mp3_header_field_onebit_symbol_v.version_symbol_off_mp3_header_field_onebit_symbol tag_hf1
;;


(** {6 Querying} *)


let is_version_tag_off_mp3_header_field_onebit_tag tag_hf1 =
  Tag_v.map_left Mp3_header_field_onebit_symbol_v.is_version_symbol_off_mp3_header_field_onebit_symbol tag_hf1
;;



(** created by ./generator mp3_header_field_onebit implementation tag at 11:39 15 Jun 2012. *)



