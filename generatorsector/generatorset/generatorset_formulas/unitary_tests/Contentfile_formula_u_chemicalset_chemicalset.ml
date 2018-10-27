open Make_test_v;;

testing "Contentfile_formula_v with
   Contentfile_formula_u_chemicalset_chemicalset.ml";;

(* toplevel 
   #use "Contentfile_formula_u_chemicalset_chemicalset.ml";;
*)

let sym_dos = Domainset_symbol_v.make "chemicalset";;
let soi_dos = [1];;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store_force soi_dos gss_dos;;
let tag_dos = Tag_v.make sym_dos soi_dos;;
let for_dos = Domainset_formula_v.retrieve tag_dos;;

let tag_cat = Doublet_list_v.find_if_left Category_symbol_v.is_symbol_off_category_symbol for_dos;; 
let for_cat = Category_formula_v.retrieve tag_cat;;

let tag_enp = Doublet_list_v.find_if_left (fun e -> Entity_symbol_v.string_off e = "atom_zerotied") for_cat;; 
let for_enp = Entity_formula_v.retrieve tag_enp;;

let tag_cof = Doublet_list_v.find_if_left 
    Contentfile_symbol_v.is_type_alone for_enp;; 
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

test_number 1 (
tag_cof
(* : Contentfile_symbol_t.contentfile_symbol * Sole_index_t.sole_index *)
=
(Contentfile_symbol_t.Type_alone, [1; 25; 1; 1])
);;

test_number 2 (
for_cof 
(* : Usagefile_symbol_t.usagefile_symbol Tag_t.tag list *)
=
[(Usagefile_symbol_t.Implementation, [1; 1; 25; 1; 1]);
 (Usagefile_symbol_t.Interface, [2; 1; 25; 1; 1])]
);;

