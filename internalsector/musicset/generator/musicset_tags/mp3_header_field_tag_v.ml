
(** {3 The functionalities for a Tag for a Mp3_header_field.} *)

let nam_cod = "mp3_header_field_tag_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name tag_mhf =
  Tag_v.name Mp3_header_field_symbol_v.name tag_mhf
;;


(** {6 Upgrading} *)


let mp3_header_field_tag_of_mp3_header_field_onebit_tag tag_hf1 = 
  Tag_v.map_left Mp3_header_field_symbol_v.mp3_header_field_symbol_of_mp3_header_field_onebit_symbol tag_hf1
;;

let mp3_header_field_tag_of_version_tag tag_ven = 
  Tag_v.map_left Mp3_header_field_symbol_v.mp3_header_field_symbol_of_version_symbol tag_ven
;;

let mp3_header_field_tag_of_mp3_header_field_twobits_tag tag_hf2 = 
  Tag_v.map_left Mp3_header_field_symbol_v.mp3_header_field_symbol_of_mp3_header_field_twobits_symbol tag_hf2
;;

let mp3_header_field_tag_of_mp3_header_field_fourbits_tag tag_hf4 = 
  Tag_v.map_left Mp3_header_field_symbol_v.mp3_header_field_symbol_of_mp3_header_field_fourbits_symbol tag_hf4
;;

let mp3_header_field_tag_of_mp3_header_field_elevenbits_tag tag_hfe = 
  Tag_v.map_left Mp3_header_field_symbol_v.mp3_header_field_symbol_of_mp3_header_field_elevenbits_symbol tag_hfe
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_mhf soi_mhf =
  Tag_v.make sym_mhf soi_mhf
;;


(** {6 Extracting} *)


let mp3_header_field_onebit_tag_off_mp3_header_field_tag tag_mhf = 
  Tag_v.map_left Mp3_header_field_symbol_v.mp3_header_field_onebit_symbol_off_mp3_header_field_symbol tag_mhf
;;

let version_tag_off_mp3_header_field_tag tag_mhf = 
  Tag_v.map_left Mp3_header_field_symbol_v.version_symbol_off_mp3_header_field_symbol tag_mhf
;;

let mp3_header_field_twobits_tag_off_mp3_header_field_tag tag_mhf = 
  Tag_v.map_left Mp3_header_field_symbol_v.mp3_header_field_twobits_symbol_off_mp3_header_field_symbol tag_mhf
;;

let mp3_header_field_fourbits_tag_off_mp3_header_field_tag tag_mhf = 
  Tag_v.map_left Mp3_header_field_symbol_v.mp3_header_field_fourbits_symbol_off_mp3_header_field_symbol tag_mhf
;;

let mp3_header_field_elevenbits_tag_off_mp3_header_field_tag tag_mhf = 
  Tag_v.map_left Mp3_header_field_symbol_v.mp3_header_field_elevenbits_symbol_off_mp3_header_field_symbol tag_mhf
;;


(** {6 Querying} *)


let is_mp3_header_field_onebit_tag_off_mp3_header_field_tag tag_mhf =
  Tag_v.map_left Mp3_header_field_symbol_v.is_mp3_header_field_onebit_symbol_off_mp3_header_field_symbol tag_mhf
;;

let is_version_tag_off_mp3_header_field_tag tag_mhf =
  Tag_v.map_left Mp3_header_field_symbol_v.is_version_symbol_off_mp3_header_field_symbol tag_mhf
;;

let is_mp3_header_field_twobits_tag_off_mp3_header_field_tag tag_mhf =
  Tag_v.map_left Mp3_header_field_symbol_v.is_mp3_header_field_twobits_symbol_off_mp3_header_field_symbol tag_mhf
;;

let is_mp3_header_field_fourbits_tag_off_mp3_header_field_tag tag_mhf =
  Tag_v.map_left Mp3_header_field_symbol_v.is_mp3_header_field_fourbits_symbol_off_mp3_header_field_symbol tag_mhf
;;

let is_mp3_header_field_elevenbits_tag_off_mp3_header_field_tag tag_mhf =
  Tag_v.map_left Mp3_header_field_symbol_v.is_mp3_header_field_elevenbits_symbol_off_mp3_header_field_symbol tag_mhf
;;



(** created by ./generator mp3_header_field implementation tag at 11:39 15 Jun 2012. *)



