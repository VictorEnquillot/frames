open Make_test_v;;

testing "Abbreviation_argument_u_any.ml";;

(* toplevel
   #use "Abbreviation_argument_u_any.ml";;
*)


let sym_ent_ato = Entity_symbol_v.topentity "atom";;
let sym_ent_atz = Entity_symbol_v.currententity "atom_zerotied";;
let sym_ent_azr = Entity_symbol_v.currententity "atom_zerotied_raregaz";;
let sym_ent_zc3 = Entity_symbol_v.currententity "atom_zerotied_cation_plusthree";;

test_number 1 (
Abbreviation_argument_v.abbreviation_argument_of_entity_symbol sym_ent_ato
=
"atm"
);;

test_number 2 (
Abbreviation_argument_v.abbreviation_argument_of_entity_symbol sym_ent_atz
=
"at0"
);;

test_number 3 (
Abbreviation_argument_v.abbreviation_argument_of_entity_symbol sym_ent_azr
=
"a0r"
);;

test_number 4 (
Abbreviation_argument_v.abbreviation_argument_of_entity_symbol sym_ent_zc3
=
"0c3"
);;
