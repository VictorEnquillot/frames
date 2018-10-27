open Make_test_v;;

testing "Domainset_formula_v with
   Domainset_formula_u_figureset_1.ml";;

(* toplevel 
   #use "Domainset_formula_u_figureset_1.ml";;
*)

let sym_dos = Domainset_symbol_v.make "figureset";;
let soi_dos = [2];;
let tag_dos = Tag_v.make sym_dos soi_dos;;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store_force soi_dos gss_dos;;
let for_dos = Domainset_formula_v.retrieve tag_dos;;

test_number 1 (
tag_dos
(* : Domainset_symbol_t.domainset_symbol Tag_t.tag *)
= 
(Domainset_symbol_t.Figureset, [2]) 
);;

test_number 2 (
for_dos
(* : Category_symbol_t.category_symbol Tag_t.tag list *)
=
  [(Category_symbol_t.Symbol, [1; 2])]
);;

