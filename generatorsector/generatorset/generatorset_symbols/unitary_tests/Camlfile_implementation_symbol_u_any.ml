open Make_test_v;;

testing "Camlfile_implementation_symbol_u_any.ml";;

(* toplevel
   #use "Camlfile_implementation_symbol_u_any.ml";;
*)


let sym_cit =  Cis_t.Camlfile_implementation_symbol_type "atom_zerotied";;

test_number 1 (
sym_cit
=  Cis_t.Camlfile_implementation_symbol_type "atom_zerotied"
);;

test_number 2 (
Cis_u.name sym_cit
=
"atom_zerotied"
);;
