open Make_test_v;;

testing "Camlfile_implementation_symbol_u_chemicalset_tag_atom_zerotied.ml";;

(* toplevel
   #use "Camlfile_implementation_symbol_u_chemicalset_tag_atom_zerotied.ml";;
*)


let sym_cit =  Cis_t.Camlfile_implementation_symbol_type "atom_zerotied";;

test_number 1 (
sym_cit
=  Cis_t.Camlfile_implementation_symbol_type "atom_zerotied"
);;

test_number 2 (
Cis_v.name sym_cit
=
"atom_zerotied"
);;
