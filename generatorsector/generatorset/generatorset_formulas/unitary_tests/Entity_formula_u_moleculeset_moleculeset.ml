open Make_test_v;;

testing "Entity_formula_v with
   Entity_proper_formula_u_moleculeset_moleculeset.ml";;

(* toplevel 
   #use "Entity_proper_formula_u_moleculeset_moleculeset.ml";;
*)

let nam_enp = "moleculeset";;
let sym_dos = Domainset_symbol_v.make "moleculeset";;
let soi_dos = [3];;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store_force soi_dos gss_dos;;
let tag_dos = Tag_v.make sym_dos soi_dos;;
let for_dos = Domainset_formula_v.retrieve tag_dos;;

let tag_cat = Doublet_list_v.find_if_left Category_symbol_v.is_symbol_off_category_symbol for_dos;; 
let for_cat = Category_formula_v.retrieve tag_cat;;

let tag_enp = Doublet_list_v.find_if_left (fun e -> Entity_symbol_v.string_off e = nam_enp) for_cat;; 
let for_enp = Entity_formula_v.retrieve tag_enp;;

let knv_l = Register_v.entry_list Generatorset_symbol_by_sole_index_provider_v.generatorset_symbol_by_sole_index_register;;
let cou_knv = List.length knv_l;;

test_number 1 (
tag_enp
(* : Entity_symbol_t.Entity_proper_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Entity_symbol_t.Topentity "moleculeset", [1; 1; 3])
);;

test_number 2 (
for_enp 
(* : Contentfile_symbol_t.contentfile_symbol Tag_t.tag list *)
=
[(Contentfile_symbol_t.Type_alone, [1; 1; 1; 3]);
 (Contentfile_symbol_t.Value_alone, [2; 1; 1; 3])]
);;

