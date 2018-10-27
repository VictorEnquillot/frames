open Make_test_v;;

testing "Mp3_header_field_onebit_formula_v with
   mp3_header_field_onebit_formula_u_any.ml";;

(* toplevel 
   #use "mp3_header_field_onebit_formula_u_any.ml";; 

 *)

let str_hf1 = "Error_protection";;
let sym_hf1 = Mp3_header_field_onebit_symbol_v.make str_hf1 "";;
let soi_hf1 = Sole_index_v.make 1 [1];;
let tag_hf1 = Tag_v.make sym_hf1 soi_hf1;;
let for_hf1 = Mp3_header_field_onebit_formula_v.make tag_hf1;;

test_number 1 (
tag_hf1
(* : Mp3_header_field_onebit_symbol_t.mp3_header_field_onebit_symbol Tag_t.tag *)
=
  (Mp3_header_field_onebit_symbol_t.Error_protection, [1; 1])
);;

test_number 2 (
for_hf1 
(* :  Mp3_header_field_onebit_formula_t.mp3_header_field_onebit_formula *)
 =
  Mp3_header_field_onebit_formula_t.Error_protection
   (Singlet_t.Singlet (Basic_type_t.Onebit, [1; 1; 1]))
);;
