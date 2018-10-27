open Make_test_v;;

testing "Domainset_formula_v with
   Domainset_formula_u_any.ml";;

(* toplevel 
   #use "Domainset_formula_u_any.ml";;
*)

let sym_dos_che = Domainset_symbol_v.make "chemicalset";;
let soi_dos_che = [1];;
let tag_dos_che = Tag_v.make sym_dos_che soi_dos_che;;
let gss_dos_che = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos_che;;
Generatorset_symbol_by_sole_index_register_v.store_force soi_dos_che gss_dos_che;;
let for_dos_che = Domainset_formula_v.retrieve tag_dos_che;;

test_number 1 (
tag_dos_che
(* : Domainset_symbol_t.domainset_symbol Tag_t.tag *)
= 
(Domainset_symbol_t.Chemicalset, [1]) 
);;

test_number 2 (
for_dos_che
(* : Category_symbol_t.category_symbol Tag_t.tag list *)
  =
[(Category_symbol_t.Symbol, [1; 1]); 
 (Category_symbol_t.Tag, [2; 1]);
 (Category_symbol_t.Formula, [3; 1]); 
 (Category_symbol_t.Value, [4; 1])]
);;

let sym_dos_geo = Domainset_symbol_v.make "figureset";;
let soi_dos_geo = [2];;
let tag_dos_geo = Tag_v.make sym_dos_geo soi_dos_geo;;
let gss_dos_geo = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos_geo;;
Generatorset_symbol_by_sole_index_register_v.store_force soi_dos_geo gss_dos_geo;;
let for_dos_geo = Domainset_formula_v.retrieve tag_dos_geo;;

test_number 3 (
tag_dos_geo
(* : Domainset_symbol_t.domainset_symbol Tag_t.tag *)
= 
(Domainset_symbol_t.Figureset, [2]) 
);;

test_number 4 (
for_dos_geo
(* : Category_symbol_t.category_symbol Tag_t.tag list *)
  =
[(Category_symbol_t.Symbol, [1; 2]); 
 (Category_symbol_t.Tag, [2; 2]);
 (Category_symbol_t.Formula, [3; 2]); 
 (Category_symbol_t.Value, [4; 2])]
);;

