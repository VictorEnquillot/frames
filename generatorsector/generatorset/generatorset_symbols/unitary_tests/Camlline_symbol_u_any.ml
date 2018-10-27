open Make_test_v;;

testing "Camlline_symbol_u with
   Camlline_symbol_u_any.ml";;

(* toplevel
   #use "Camlline_symbol_u_any.ml";;

*)

let sym_cal = Camlline_symbol_v.pipe_esstring_arrow_es;;

test_number 1 (
sym_cal
(* : Camlline_symbol_t.camlline_symbol *)
=
  Camlline_symbol_t.Camlline_for_symbol_symbol
   (Camlline_for_symbol_symbol_t.Camlline_for_symbol_uno_symbol
     (Camlline_for_symbol_uno_symbol_t.Camlline_for_symbol_uno_son_symbol
       (Camlline_for_symbol_uno_son_symbol_t.Camlline_for_symbol_uno_son_bare_symbol
         Camlline_for_symbol_uno_son_bare_symbol_t.Pipe_esstring_arrow_es)))
);;

let nam_cal = Camlline_symbol_v.name sym_cal;;

test_number 2 (
nam_cal
= 
"pipe_esstring_arrow_es"
);;

