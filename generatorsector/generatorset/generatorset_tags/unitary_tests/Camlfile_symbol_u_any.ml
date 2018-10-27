open Make_test_v;;

testing "Camlfile_symbol_u_any.ml";;

(* toplevel
#use "Camlfile_symbol_u_any.ml";;
*)


let sym_cit =  Cis_t.Camlfile_implementation_symbol_type "atom_zerotied";;
let sym_cfi =  Contentfile_symbol_t.Camlfile_implementation_symbol sym_cit;;

test_number 1 (
sym_cit
=  
Cis_t.Camlfile_implementation_symbol_type "atom_zerotied"
);;
