open Make_test_v;;

testing "Musicset_formula_v with
   musicset_formula_u_any.ml";;

(* toplevel 
   #use "musicset_formula_u_any.ml";;
 
 *)

let str_mus = "Error_protection";;
let sym_mus = Musicset_symbol_v.make str_mus "";;
let soi_mus = Sole_index_v.make 1 [1];;
let tag_mus = Tag_v.make sym_mus soi_mus;;
let for_mus = Musicset_formula_v.make tag_mus;;

test_number 1 (
tag_mus
(* : Musicset_symbol_t.musicset_symbol Tag_t.tag *)
=
  Musicset_field_onebit_symbol_t.musicset_field_onebit_symbol Tag_t.tag =
  (Musicset_field_onebit_symbol_t.Error_protection, [1; 1])
);;

test_number 2 (
for_mus 
(* :  Musicset_formula_t.musicset_formula *)
 =
Musicset_field_onebit_formula_t.musicset_field_onebit_formula =
  Musicset_field_onebit_formula_t.Error_protection
   (Singlet_t.Singlet (Basic_type_t.Onebit, [1; 1; 1]))
);;
