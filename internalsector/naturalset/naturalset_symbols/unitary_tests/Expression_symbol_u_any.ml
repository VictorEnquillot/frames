open Make_test_v;;

testing "Expression_symbol_v with
   Expression_symbol_u_any.ml";;

(* toplevel 
   #use "Expression_symbol_u_any.ml";; 

 *)

let sym_eco = Expression_symbol_v.make "expression_composite" "";;

test_number 1 (
sym_eco
(* : Expression_symbol_t.expression_symbol *)
=
Expression_symbol_t.Expression_composite
);;

let nam_eco = Expression_symbol_v.name sym_eco;;

test_number 2 (
nam_eco 
(* : string *)
= 
"expression_composite"
);;

let str_eco = Expression_symbol_v.string_off sym_eco;;
test_number 3 (
str_eco
=
""
);;
