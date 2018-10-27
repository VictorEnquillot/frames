open Make_test_v;;

testing "Mp3_header tag_v with
   mp3_header_tag_u_any.ml";;

(* toplevel 
   #use "mp3_header_tag_u_any.ml";; 

 *)

let nam_dos = "musicset";;
let idx_dos = 1;;
let soi_dos = Sole_index_v.make idx_dos [];;

let str_mh1 = "mp3_header_1";;
let sym_mh1 = Mp3_header_symbol_v.make str_mh1 "";;
let idx_mh1 = 2;;
let soi_mh1 = Sole_index_v.make idx_mh1 soi_dos;;
let tag_mh1 = Mp3_header_tag_v.make sym_mh1 soi_mh1;;
let nam_mh1 = Mp3_header_tag_v.name tag_mh1;;

test_number 1 (
tag_mh1
(* : Mp3_header_symbol_t.mp3_header_symbol Tag_t.tag *)
=
  (Mp3_header_symbol_t.Mp3_header_1, [2; 1])
);;

test_number 2 (
nam_mh1
(* : string *)
= 
"(Mp3_header_1, [2; 1])"
);;

