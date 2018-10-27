open Make_test_v;;

testing "Camlparagraph_symbol_u with
   Camlparagraph_symbol_u_any.ml";;

(* toplevel
   #use "Camlparagraph_symbol_u_any.ml";;

*)

let sym_cap = Camlparagraph_symbol_v.let_make_argument_equal_function_for_symbol;;

test_number 1 (
sym_cap 
(* : Camlparagraph_symbol_t.camlparagraph_symbol *)
=
  Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
   (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
     (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_mixed_symbol
       Camlparagraph_for_symbol_let_mixed_symbol_t.Let_make_argument_equal_function_for_symbol))
);;

