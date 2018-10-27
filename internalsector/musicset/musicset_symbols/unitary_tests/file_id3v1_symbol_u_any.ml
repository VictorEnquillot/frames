open Make_test_v;;

testing "File_id3v1_symbol_v with
   file_id3v1_symbol_u_any.ml";;

(* toplevel 
   #use "file_id3v1_symbol_u_any.ml";;
 
 *)

let sym_fv1 = File_id3v1_symbol_v.make "file_id3v1_mp3_header_1" "";;
let nam_fv1 = File_id3v1_symbol_v.name sym_fv1;;

test_number 1 (
sym_fv1
(* : string *)
= 
 File_id3v1_symbol_t.File_id3v1_mp3_header_1
);;

test_number 2 (
nam_fv1
(* : string *)
= 
 "File_id3v1_mp3_header_1"
);;

