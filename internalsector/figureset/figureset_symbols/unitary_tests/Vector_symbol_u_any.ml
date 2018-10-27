open Make_test_v;;

testing "Segment_symbol_v with
   segment_symbol_u_any.ml";;

(* toplevel 
   #use "Segment_symbol_u_any.ml";;
 
 *)

let nam_vec = "segment_constructor";;
let sto_vec = "";;
let sym_vec = Segment_symbol_v.make nam_vec sto_vec;;

test_number 1 (
sym_vec
(* : Segment_symbol_t.segment_symbol *)
= 
Segment_symbol_t.Segment_constructor ""
);;

let nam_vec = Segment_symbol_v.name sym_vec;;

test_number 2 (
nam_vec
(* : string *)
= 
"segment_constructor"
);;

let lna_vec = Segment_symbol_v.longname sym_vec;;

test_number 3 (
lna_vec
(* : string *)
= 
"Segment_symbol_t.Segment_constructor"
);;

let fna_vec = Segment_symbol_v.fullname sym_vec;;

test_number 4 (
fna_vec
(* : string *)
= 
"Segment_symbol_t.Segment_constructor \"\""
);;

