open Make_test_v;;

testing "Mp3_header_formula_v with
   mp3_header_formula_u_any.ml";;

(* toplevel 
   #use "mp3_header_formula_u_any.ml";; 

 *)

let str_mph = "Mp3_header_2";;
let sym_mph = Mp3_header_symbol_v.make str_mph "";;
let soi_mph = Sole_index_v.make 1 [1];;
let tag_mph = Tag_v.make sym_mph soi_mph;;
let for_mph = Mp3_header_formula_v.make tag_mph;;

test_number 1 (
tag_mph
(* : Mp3_header_symbol_t.mp3_header_symbol Tag_t.tag *)
=
  Mp3_header_field_onebit_symbol_t.mp3_header_field_onebit_symbol Tag_t.tag =
  (Mp3_header_field_onebit_symbol_t.Error_protection, [1; 1])
);;

test_number 2 (
for_mph 
(* :  Mp3_header_formula_t.mp3_header_formula *)
 =
Mp3_header_field_onebit_formula_t.mp3_header_field_onebit_formula =
  Mp3_header_field_onebit_formula_t.Error_protection
   (Singlet_t.Singlet (Basic_type_t.Onebit, [1; 1; 1]))
);;
