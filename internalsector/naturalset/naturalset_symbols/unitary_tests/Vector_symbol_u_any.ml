open Make_test_v;;

testing "Vector_symbol_v with
   vector_symbol_u_any.ml";;

(* toplevel 
   #use "Vector_symbol_u_any.ml";;
 
 *)

let nam_vec = "vector_constructor";;
let sto_vec = "";;
let sym_vec = Vector_symbol_v.make nam_vec sto_vec;;

test_number 1 (
sym_vec
(* : Vector_symbol_t.vector_symbol *)
= 
Vector_symbol_t.Vector_constructor
);;

let nam_vec = Vector_symbol_v.name sym_vec;;

test_number 2 (
nam_vec
(* : string *)
= 
"vector_constructor"
);;

let lna_vec = Vector_symbol_v.longname sym_vec;;

test_number 3 (
lna_vec
(* : string *)
= 
"Vector_symbol_t.Vector_constructor"
);;

let fna_vec = Vector_symbol_v.fullname sym_vec;;

test_number 4 (
fna_vec
(* : string *)
= 
"Vector_symbol_t.Vector_constructor \"\""
);;

