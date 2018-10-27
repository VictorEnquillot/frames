open Make_test_v;;

testing "Contentfile_formula_v with
   Contentfile_formula_u_figureset_formula_triangle_isoceles.ml";;

(* toplevel 
   #use "Contentfile_formula_u_figureset_formula_triangle_isoceles.ml";;

*)

let nam_cod = "Contentfile_formula_u_figureset_formula_triangle_isoceles.ml";;
let nam_dos = "figureset";;
let nam_cat = "formula";;
let nam_enp = "triangle_isoceles";;

let sym_dos = Domainset_symbol_v.make nam_dos;;
let idx_dos = Domainset_symbol_v.list_index_of_domainset_symbol sym_dos;;
let soi_dos = Sole_index_v.make idx_dos [];;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store soi_dos gss_dos;;
let formula_dos = Formula_v.make sym_dos soi_dos;;
let for_dos = Domainset_formula_v.retrieve formula_dos;;

let sel_cat = (fun c -> Category_symbol_v.name c = nam_cat);;
let formula_cat = Doublet_list_v.find_if_left sel_cat for_dos;;
let for_cat = Category_formula_v.retrieve formula_cat;;

let sel_enp = (fun e -> Entity_symbol_v.string_off e = nam_enp);;
let formula_enp = Doublet_list_v.find_if_left sel_enp for_cat;;
let for_enp = Entity_formula_v.retrieve formula_enp;;

let nam_cof = "type_alone";;
let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let formula_cof = Doublet_list_v.find_if_left sel_cof for_enp;;
let for_cof = Contentfile_formula_v.retrieve formula_cof;;

test_number 1 (
formula_dos
(* : Domainset_formula_t.domainset_formula Formula_t.formula *)
=
(Domainset_symbol_t.Figureset, [2])
);;

test_number 2 (
formula_cat
(* : Category_formula_t.category_formula * Sole_index_t.sole_index *)
=
(Category_symbol_t.Formula, [8; 2])
);;

test_number 3 (
formula_enp
(* : Entity_proper_formula_t.entity_proper_formula * Formula_t.Sole_index_t.sole_index *)
=
(Entity_symbol_t.Entity_proper_top_symbol
  (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_isoceles"),
 [3; 8; 2])
);;

test_number 4 (
formula_cof
(* : Contentfile_formula_t.contentfile_formula * Sole_index_t.sole_index *)
=
(Contentfile_symbol_t.Type_alone, [1; 3; 8; 2])
);;

test_number 5 (
for_cof 
(* : Usagefile_formula_t.usagefile_formula Formula_t.formula list *)
=
  [(Usagefile_symbol_t.Implementation, [1; 1; 3; 8; 2])]
);;

