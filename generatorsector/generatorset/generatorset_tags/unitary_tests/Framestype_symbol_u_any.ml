open Make_test_v;;

testing "Framestype_symbol_u_any.ml";;

(* toplevel
   #use "Framestype_symbol_u_any.ml";;
*)


let sym_feu = Feus_t.Framestype_essential_unconstrained_polyconstructor "atom_zerotied_cation_plusone";;
let sym_fes = Fes_t.Framestype_essential_unconstrained_symbol sym_feu;;
let sym_frt = Fts_t.Framestype_essential_symbol sym_fes ;;

test_number 1 (
Fts_v.name sym_frt 
(* : string *)
= 
"atom_zerotied_cation_plusone_symbol"
);;

test_number 2 (
Fes_v.name sym_fes 
(* : string *)
= 
"atom_zerotied_cation_plusone_symbol"
);;

test_number 3 (
Feus_v.name sym_feu 
(* : string *)
= 
"atom_zerotied_cation_plusone_symbol"
);;

test_number 4 (
Fts_v.module_suffix "type" sym_frt  
(* : string *)
= 
"t"
);;

test_number 5 (
Fes_v.module_suffix "value" sym_fes 
(* : string *)
= 
"v"
);;

test_number 6 (
Feus_v.module_suffix "value" 
(* : string *)
= 
"v"
);;

