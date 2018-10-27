open Make_test_v;;

testing "File_id3v1_tag_v with
   file_id3v1_tag_u_any.ml";;

(* toplevel 
   #use "file_id3v1_tag_u_any.ml";;
 
 *)

let nam_dos = "musicset";;
let idx_dos = 1;;
let soi_dos = Sole_index_v.make idx_dos [];;

let str_i2t = "file_id3v1_mp3_header_1";;
let sym_i2t = File_id3v1_symbol_v.make str_i2t "";;
let idx_i2t = 3;;
let soi_i2t = Sole_index_v.make idx_i2t soi_dos;;
let tag_i2t = File_id3v1_tag_v.make sym_i2t soi_i2t;;
let nam_i2t = File_id3v1_tag_v.name tag_i2t;;

test_number 1 (
tag_i2t
(* File_id3v1_symbol_t.file_id3v1_symbol Tag_t.tag *)
=
  (File_id3v1_symbol_t.File_id3v1_mp3_header_1, [3; 1])
);;

test_number 2 (
nam_i2t
(* : string *)
= 
"(File_id3v1_mp3_header_1, [3; 1])"
);;

