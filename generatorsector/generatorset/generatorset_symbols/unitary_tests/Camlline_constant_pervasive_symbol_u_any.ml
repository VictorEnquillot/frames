open Make_test_v;;

testing "Camlline_constant_pervasive_symbol_u_any.ml";;

(* toplevel
 
#use "Camlline_constant_pervasive_symbol_u_any.ml";;

*)

let sym_cal_a = Camlline_symbol_v.item_title;;
let sym_clc_a = Camlline_symbol_v.camlline_constant_symbol_off_camlline_symbol sym_cal_a;;
let sym_ccp_a = Camlline_constant_symbol_v.camlline_constant_pervasive_symbol_off_camlline_constant_symbol sym_clc_a;;

test_number 1 (
sym_cal_a
(* : Camlline_symbol_t.camlline_symbol *)
=
 Camlline_symbol_t.Camlline_constant_symbol
   (Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
     Camlline_constant_pervasive_symbol_t.Item_title)
);;

test_number 2 (
sym_clc_a
(* : Camlline_constant_symbol_t.camlline_constant_symbol *)
=
  Camlline_constant_symbol_t.Camlline_constant_pervasive_symbol
   Camlline_constant_pervasive_symbol_t.Item_title
);;

test_number 3 (
sym_ccp_a 
(* : Camlline_constant_pervasive_symbol_t.camlline_constant_pervasive_symbol *)
=
  Camlline_constant_pervasive_symbol_t.Item_title
);;
