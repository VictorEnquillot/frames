open Make_test_v;;

testing "Contentfile_formula_v with
   Contentfile_formula_u_moleculeset_formula_moleculeset.ml";;

(* toplevel 
   #use "Contentfile_formula_u_moleculeset_formula_moleculeset.ml";;

*)

let nam_dos = "moleculeset";;
let nam_enp = "moleculeset";;
let nam_cat = "formula";;

let sel_cat =
  match nam_cat with
  | "symbol" -> Category_symbol_v.is_symbol_off_category_symbol
  | "formula" -> Category_symbol_v.is_formula_off_category_symbol
  | _ -> failwith ("nam_cat >"^nam_cat^"< is not defined")
;;
 
let sel_enp = (fun e -> Entity_symbol_v.string_off e = nam_enp)

let sym_dos = Domainset_symbol_v.make nam_dos;;
let idx_dos = Domainset_symbol_v.list_index_of_domainset_symbol sym_dos;;
let soi_dos = Sole_index_v.make idx_dos [];;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store_force soi_dos gss_dos;;

let tag_dos = Tag_v.make sym_dos soi_dos;;
let for_dos = Domainset_formula_v.retrieve tag_dos;;

let tag_cat = Doublet_list_v.find_if_left sel_cat for_dos;; 
let for_cat = Category_formula_v.retrieve tag_cat;;

let tag_enp = Doublet_list_v.find_if_left sel_enp for_cat;; 
let for_enp = Entity_formula_v.retrieve tag_enp;;

let tag_cof = Doublet_list_v.find_if_left 
    Contentfile_symbol_v.is_type_alone for_enp;; 
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

test_number 1 (
tag_cof
(* : Contentfile_symbol_t.contentfile_symbol * Sole_index_t.sole_index *)
=
(Contentfile_symbol_t.Type_alone, [1; 1; 2; 7])
);;

test_number 2 (
for_cof 
(* : Usagefile_symbol_t.usagefile_symbol Tag_t.tag list *)
=
[(Usagefile_symbol_t.Implementation, [1; 1; 1; 2; 7])]
);;

