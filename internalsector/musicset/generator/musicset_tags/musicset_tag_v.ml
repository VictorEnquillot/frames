
(** {3 The functionalities for a Tag for a Musicset.} *)

let nam_cod = "musicset_tag_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name tag_mut =
  Tag_v.name Musicset_symbol_v.name tag_mut
;;


(** {6 Upgrading} *)


let musicset_tag_of_mp3_file_tag tag_mpf = 
  Tag_v.map_left Musicset_symbol_v.musicset_symbol_of_mp3_file_symbol tag_mpf
;;

let musicset_tag_of_file_id3v1_tag tag_fii = 
  Tag_v.map_left Musicset_symbol_v.musicset_symbol_of_file_id3v1_symbol tag_fii
;;

let musicset_tag_of_file_id3v2_tag tag_fii = 
  Tag_v.map_left Musicset_symbol_v.musicset_symbol_of_file_id3v2_symbol tag_fii
;;

let musicset_tag_of_id3_tag_tag tag_idt = 
  Tag_v.map_left Musicset_symbol_v.musicset_symbol_of_id3_tag_symbol tag_idt
;;

let musicset_tag_of_id3v1_tag_tag tag_idt = 
  Tag_v.map_left Musicset_symbol_v.musicset_symbol_of_id3v1_tag_symbol tag_idt
;;

let musicset_tag_of_id3v1_tag_128_tag tag_it1 = 
  Tag_v.map_left Musicset_symbol_v.musicset_symbol_of_id3v1_tag_128_symbol tag_it1
;;

let musicset_tag_of_id3v1_tag_227_tag tag_it2 = 
  Tag_v.map_left Musicset_symbol_v.musicset_symbol_of_id3v1_tag_227_symbol tag_it2
;;

let musicset_tag_of_id3v2_tag_tag tag_idt = 
  Tag_v.map_left Musicset_symbol_v.musicset_symbol_of_id3v2_tag_symbol tag_idt
;;

let musicset_tag_of_id3v2_base_tag_tag tag_ibt = 
  Tag_v.map_left Musicset_symbol_v.musicset_symbol_of_id3v2_base_tag_symbol tag_ibt
;;

let musicset_tag_of_id3v2_tag_unique_tag tag_itu = 
  Tag_v.map_left Musicset_symbol_v.musicset_symbol_of_id3v2_tag_unique_symbol tag_itu
;;

let musicset_tag_of_id3v2_tag_multiple_tag tag_itm = 
  Tag_v.map_left Musicset_symbol_v.musicset_symbol_of_id3v2_tag_multiple_symbol tag_itm
;;

let musicset_tag_of_id3v2_tag_specific_tag tag_its = 
  Tag_v.map_left Musicset_symbol_v.musicset_symbol_of_id3v2_tag_specific_symbol tag_its
;;

let musicset_tag_of_id3v2_3_tag_specific_tag tag_3ts = 
  Tag_v.map_left Musicset_symbol_v.musicset_symbol_of_id3v2_3_tag_specific_symbol tag_3ts
;;

let musicset_tag_of_id3v2_4_tag_specific_tag tag_4ts = 
  Tag_v.map_left Musicset_symbol_v.musicset_symbol_of_id3v2_4_tag_specific_symbol tag_4ts
;;

let musicset_tag_of_mp3_header_tag tag_mph = 
  Tag_v.map_left Musicset_symbol_v.musicset_symbol_of_mp3_header_symbol tag_mph
;;

let musicset_tag_of_mp3_header_field_tag tag_mhf = 
  Tag_v.map_left Musicset_symbol_v.musicset_symbol_of_mp3_header_field_symbol tag_mhf
;;

let musicset_tag_of_mp3_header_field_onebit_tag tag_hf1 = 
  Tag_v.map_left Musicset_symbol_v.musicset_symbol_of_mp3_header_field_onebit_symbol tag_hf1
;;

let musicset_tag_of_version_tag tag_ven = 
  Tag_v.map_left Musicset_symbol_v.musicset_symbol_of_version_symbol tag_ven
;;

let musicset_tag_of_mp3_header_field_twobits_tag tag_hf2 = 
  Tag_v.map_left Musicset_symbol_v.musicset_symbol_of_mp3_header_field_twobits_symbol tag_hf2
;;

let musicset_tag_of_mp3_header_field_fourbits_tag tag_hf4 = 
  Tag_v.map_left Musicset_symbol_v.musicset_symbol_of_mp3_header_field_fourbits_symbol tag_hf4
;;

let musicset_tag_of_mp3_header_field_elevenbits_tag tag_hfe = 
  Tag_v.map_left Musicset_symbol_v.musicset_symbol_of_mp3_header_field_elevenbits_symbol tag_hfe
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_mut soi_mut =
  Tag_v.make sym_mut soi_mut
;;


(** {6 Extracting} *)


let mp3_file_tag_off_musicset_tag tag_mut = 
  Tag_v.map_left Musicset_symbol_v.mp3_file_symbol_off_musicset_symbol tag_mut
;;

let file_id3v1_tag_off_musicset_tag tag_mut = 
  Tag_v.map_left Musicset_symbol_v.file_id3v1_symbol_off_musicset_symbol tag_mut
;;

let file_id3v2_tag_off_musicset_tag tag_mut = 
  Tag_v.map_left Musicset_symbol_v.file_id3v2_symbol_off_musicset_symbol tag_mut
;;

let id3_tag_tag_off_musicset_tag tag_mut = 
  Tag_v.map_left Musicset_symbol_v.id3_tag_symbol_off_musicset_symbol tag_mut
;;

let id3v1_tag_tag_off_musicset_tag tag_mut = 
  Tag_v.map_left Musicset_symbol_v.id3v1_tag_symbol_off_musicset_symbol tag_mut
;;

let id3v1_tag_128_tag_off_musicset_tag tag_mut = 
  Tag_v.map_left Musicset_symbol_v.id3v1_tag_128_symbol_off_musicset_symbol tag_mut
;;

let id3v1_tag_227_tag_off_musicset_tag tag_mut = 
  Tag_v.map_left Musicset_symbol_v.id3v1_tag_227_symbol_off_musicset_symbol tag_mut
;;

let id3v2_tag_tag_off_musicset_tag tag_mut = 
  Tag_v.map_left Musicset_symbol_v.id3v2_tag_symbol_off_musicset_symbol tag_mut
;;

let id3v2_base_tag_tag_off_musicset_tag tag_mut = 
  Tag_v.map_left Musicset_symbol_v.id3v2_base_tag_symbol_off_musicset_symbol tag_mut
;;

let id3v2_tag_unique_tag_off_musicset_tag tag_mut = 
  Tag_v.map_left Musicset_symbol_v.id3v2_tag_unique_symbol_off_musicset_symbol tag_mut
;;

let id3v2_tag_multiple_tag_off_musicset_tag tag_mut = 
  Tag_v.map_left Musicset_symbol_v.id3v2_tag_multiple_symbol_off_musicset_symbol tag_mut
;;

let id3v2_tag_specific_tag_off_musicset_tag tag_mut = 
  Tag_v.map_left Musicset_symbol_v.id3v2_tag_specific_symbol_off_musicset_symbol tag_mut
;;

let id3v2_3_tag_specific_tag_off_musicset_tag tag_mut = 
  Tag_v.map_left Musicset_symbol_v.id3v2_3_tag_specific_symbol_off_musicset_symbol tag_mut
;;

let id3v2_4_tag_specific_tag_off_musicset_tag tag_mut = 
  Tag_v.map_left Musicset_symbol_v.id3v2_4_tag_specific_symbol_off_musicset_symbol tag_mut
;;

let mp3_header_tag_off_musicset_tag tag_mut = 
  Tag_v.map_left Musicset_symbol_v.mp3_header_symbol_off_musicset_symbol tag_mut
;;

let mp3_header_field_tag_off_musicset_tag tag_mut = 
  Tag_v.map_left Musicset_symbol_v.mp3_header_field_symbol_off_musicset_symbol tag_mut
;;

let mp3_header_field_onebit_tag_off_musicset_tag tag_mut = 
  Tag_v.map_left Musicset_symbol_v.mp3_header_field_onebit_symbol_off_musicset_symbol tag_mut
;;

let version_tag_off_musicset_tag tag_mut = 
  Tag_v.map_left Musicset_symbol_v.version_symbol_off_musicset_symbol tag_mut
;;

let mp3_header_field_twobits_tag_off_musicset_tag tag_mut = 
  Tag_v.map_left Musicset_symbol_v.mp3_header_field_twobits_symbol_off_musicset_symbol tag_mut
;;

let mp3_header_field_fourbits_tag_off_musicset_tag tag_mut = 
  Tag_v.map_left Musicset_symbol_v.mp3_header_field_fourbits_symbol_off_musicset_symbol tag_mut
;;

let mp3_header_field_elevenbits_tag_off_musicset_tag tag_mut = 
  Tag_v.map_left Musicset_symbol_v.mp3_header_field_elevenbits_symbol_off_musicset_symbol tag_mut
;;


(** {6 Querying} *)


let is_mp3_file_tag_off_musicset_tag tag_mut =
  Tag_v.map_left Musicset_symbol_v.is_mp3_file_symbol_off_musicset_symbol tag_mut
;;

let is_file_id3v1_tag_off_musicset_tag tag_mut =
  Tag_v.map_left Musicset_symbol_v.is_file_id3v1_symbol_off_musicset_symbol tag_mut
;;

let is_file_id3v2_tag_off_musicset_tag tag_mut =
  Tag_v.map_left Musicset_symbol_v.is_file_id3v2_symbol_off_musicset_symbol tag_mut
;;

let is_id3_tag_tag_off_musicset_tag tag_mut =
  Tag_v.map_left Musicset_symbol_v.is_id3_tag_symbol_off_musicset_symbol tag_mut
;;

let is_id3v1_tag_tag_off_musicset_tag tag_mut =
  Tag_v.map_left Musicset_symbol_v.is_id3v1_tag_symbol_off_musicset_symbol tag_mut
;;

let is_id3v1_tag_128_tag_off_musicset_tag tag_mut =
  Tag_v.map_left Musicset_symbol_v.is_id3v1_tag_128_symbol_off_musicset_symbol tag_mut
;;

let is_id3v1_tag_227_tag_off_musicset_tag tag_mut =
  Tag_v.map_left Musicset_symbol_v.is_id3v1_tag_227_symbol_off_musicset_symbol tag_mut
;;

let is_id3v2_tag_tag_off_musicset_tag tag_mut =
  Tag_v.map_left Musicset_symbol_v.is_id3v2_tag_symbol_off_musicset_symbol tag_mut
;;

let is_id3v2_base_tag_tag_off_musicset_tag tag_mut =
  Tag_v.map_left Musicset_symbol_v.is_id3v2_base_tag_symbol_off_musicset_symbol tag_mut
;;

let is_id3v2_tag_unique_tag_off_musicset_tag tag_mut =
  Tag_v.map_left Musicset_symbol_v.is_id3v2_tag_unique_symbol_off_musicset_symbol tag_mut
;;

let is_id3v2_tag_multiple_tag_off_musicset_tag tag_mut =
  Tag_v.map_left Musicset_symbol_v.is_id3v2_tag_multiple_symbol_off_musicset_symbol tag_mut
;;

let is_id3v2_tag_specific_tag_off_musicset_tag tag_mut =
  Tag_v.map_left Musicset_symbol_v.is_id3v2_tag_specific_symbol_off_musicset_symbol tag_mut
;;

let is_id3v2_3_tag_specific_tag_off_musicset_tag tag_mut =
  Tag_v.map_left Musicset_symbol_v.is_id3v2_3_tag_specific_symbol_off_musicset_symbol tag_mut
;;

let is_id3v2_4_tag_specific_tag_off_musicset_tag tag_mut =
  Tag_v.map_left Musicset_symbol_v.is_id3v2_4_tag_specific_symbol_off_musicset_symbol tag_mut
;;

let is_mp3_header_tag_off_musicset_tag tag_mut =
  Tag_v.map_left Musicset_symbol_v.is_mp3_header_symbol_off_musicset_symbol tag_mut
;;

let is_mp3_header_field_tag_off_musicset_tag tag_mut =
  Tag_v.map_left Musicset_symbol_v.is_mp3_header_field_symbol_off_musicset_symbol tag_mut
;;

let is_mp3_header_field_onebit_tag_off_musicset_tag tag_mut =
  Tag_v.map_left Musicset_symbol_v.is_mp3_header_field_onebit_symbol_off_musicset_symbol tag_mut
;;

let is_version_tag_off_musicset_tag tag_mut =
  Tag_v.map_left Musicset_symbol_v.is_version_symbol_off_musicset_symbol tag_mut
;;

let is_mp3_header_field_twobits_tag_off_musicset_tag tag_mut =
  Tag_v.map_left Musicset_symbol_v.is_mp3_header_field_twobits_symbol_off_musicset_symbol tag_mut
;;

let is_mp3_header_field_fourbits_tag_off_musicset_tag tag_mut =
  Tag_v.map_left Musicset_symbol_v.is_mp3_header_field_fourbits_symbol_off_musicset_symbol tag_mut
;;

let is_mp3_header_field_elevenbits_tag_off_musicset_tag tag_mut =
  Tag_v.map_left Musicset_symbol_v.is_mp3_header_field_elevenbits_symbol_off_musicset_symbol tag_mut
;;



(** created by ./generator musicset implementation tag at 11:39 15 Jun 2012. *)



