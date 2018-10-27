open Make_test_v;;

testing "Domainset_formula_v with 
   Domainset_formula_u_figureset.ml";;

(* toplevel 
   #use "Domainset_formula_u_figureset.ml";;

*)

let nam_dos = "figureset";;

let sym_dos = Domainset_symbol_v.make nam_dos;;
let idx_dos = Domainset_symbol_v.list_index_of_domainset_symbol sym_dos;;
let soi_dos = Sole_index_v.make idx_dos [];;

let tag_dos = Tag_v.make sym_dos soi_dos;;

let tag_cat_l = Domainset_formula_v.category_tag_list_off_domainset_tag tag_dos;;

test_number 1 (
tag_cat_l
(* : Category_symbol_t.category_symbol Tag_t.tag list *)
=
[(Category_symbol_t.Any, [1; 2]); 
 (Category_symbol_t.Formula, [2; 2]);
 (Category_symbol_t.Mark, [3; 2]); 
 (Category_symbol_t.Path, [4; 2]);
 (Category_symbol_t.Property, [5; 2]);
 (Category_symbol_t.Provider, [6; 2]); 
 (Category_symbol_t.Symbol, [7; 2]);
 (Category_symbol_t.Tag, [8; 2]); 
 (Category_symbol_t.Value, [9; 2]);
 (Category_symbol_t.Empty, [10; 2])]
);;

let ent_l = Register_v.entry_list Generatorset_symbol_by_sole_index_register_v.register;;

test_number 2 (
ent_l
(* : (Sole_index_t.sole_index * Generatorset_symbol_t.generatorset_symbol) list *)
=
  [([6; 2], Generatorset_symbol_t.Category_symbol Category_symbol_t.Provider);
   ([1; 2], Generatorset_symbol_t.Category_symbol Category_symbol_t.Any);
   ([3; 2], Generatorset_symbol_t.Category_symbol Category_symbol_t.Mark);
   ([9; 2], Generatorset_symbol_t.Category_symbol Category_symbol_t.Value);
   ([2], Generatorset_symbol_t.Domainset_symbol Domainset_symbol_t.Figureset);
   ([10; 2], Generatorset_symbol_t.Category_symbol Category_symbol_t.Empty);
   ([7; 2], Generatorset_symbol_t.Category_symbol Category_symbol_t.Symbol);
   ([8; 2], Generatorset_symbol_t.Category_symbol Category_symbol_t.Tag);
   ([5; 2], Generatorset_symbol_t.Category_symbol Category_symbol_t.Property);
   ([4; 2], Generatorset_symbol_t.Category_symbol Category_symbol_t.Path);
   ([2; 2], Generatorset_symbol_t.Category_symbol Category_symbol_t.Formula)]
);;
