open Make_test_v;;

testing "Entity_formula_v with
   Entity_proper_formula_u_figureset_formula_figureset.ml";;

(* toplevel 
   #use "Entity_proper_formula_u_figureset_formula_figureset.ml";;

*)

let nam_cod = "Entity_proper_formula_u_figureset_formula_figureset.ml";;

let nam_dos = "figureset";;
let nam_cat = "formula";;
let nam_enp = "figureset";;

let sym_dos = Domainset_symbol_v.make nam_dos;;
let idx_dos = Domainset_symbol_v.list_index_of_domainset_symbol sym_dos;;
let soi_dos = Sole_index_v.make idx_dos [];;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store_force soi_dos gss_dos;;

let tag_dos = Tag_v.make sym_dos soi_dos;;
let for_dos = Domainset_formula_v.retrieve tag_dos;;

test_number 1 (
tag_dos
(* : Domainset_symbol_t.domainset_symbol Tag_t.tag *)
=
(Domainset_symbol_t.Figureset, [2])
);;

let sel_cat = (fun c -> Category_symbol_v.name c = nam_cat);;
let tag_cat = Doublet_list_v.find_if_left sel_cat for_dos;; 

test_number 2 (
tag_cat
(* : Category_symbol_t.category_symbol * Sole_index_t.sole_index *)
=
(Category_symbol_t.Formula, [2; 2])
);;

let for_cat = Category_formula_v.retrieve tag_cat;;
let tag_ent_l = Category_formula_v.entity_proper_tag_list_off_category_formula for_cat;;
let sel_enp = (fun e -> Entity_symbol_v.string_off e = nam_enp)
let tag_enp = Doublet_list_v.find_if_left sel_enp tag_ent_l;;

test_number 3 (
tag_enp
(* : Entity_symbol_t.Entity_proper_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Entity_symbol_t.Entity_proper_top_symbol
  (Entity_proper_top_symbol_t.Top_has_notopsonleaf "figureset"),
 [1; 2; 2])
);;

let for_enp = Entity_formula_v.retrieve tag_enp;;

test_number 4 (
for_enp 
(* : Contentfile_symbol_t.contentfile_symbol Tag_t.tag list *)
=
[(Contentfile_symbol_t.Type_alone, [1; 1; 2; 2]);
 (Contentfile_symbol_t.Value_alone, [2; 1; 2; 2])]
);;
