
(** {3 The functionalities for a Tag for a Mp3_file.} *)

let nam_cod = "mp3_file_tag_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name tag_mpf =
  Tag_v.name Mp3_file_symbol_v.name tag_mpf
;;


(** {6 Upgrading} *)


let mp3_file_tag_of_file_id3v1_tag tag_fii = 
  Tag_v.map_left Mp3_file_symbol_v.mp3_file_symbol_of_file_id3v1_symbol tag_fii
;;

let mp3_file_tag_of_file_id3v2_tag tag_fii = 
  Tag_v.map_left Mp3_file_symbol_v.mp3_file_symbol_of_file_id3v2_symbol tag_fii
;;


(** {6 Abbreviating} *)



(** {6 Making} *)


let make sym_mpf soi_mpf =
  Tag_v.make sym_mpf soi_mpf
;;


(** {6 Extracting} *)


let file_id3v1_tag_off_mp3_file_tag tag_mpf = 
  Tag_v.map_left Mp3_file_symbol_v.file_id3v1_symbol_off_mp3_file_symbol tag_mpf
;;

let file_id3v2_tag_off_mp3_file_tag tag_mpf = 
  Tag_v.map_left Mp3_file_symbol_v.file_id3v2_symbol_off_mp3_file_symbol tag_mpf
;;


(** {6 Querying} *)


let is_file_id3v1_tag_off_mp3_file_tag tag_mpf =
  Tag_v.map_left Mp3_file_symbol_v.is_file_id3v1_symbol_off_mp3_file_symbol tag_mpf
;;

let is_file_id3v2_tag_off_mp3_file_tag tag_mpf =
  Tag_v.map_left Mp3_file_symbol_v.is_file_id3v2_symbol_off_mp3_file_symbol tag_mpf
;;



(** created by ./generator mp3_file implementation tag at 11:39 15 Jun 2012. *)



