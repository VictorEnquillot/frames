open Make_test_v;;

testing "Contentfile_formula_v with
   Contentfile_formula_u_figureset_tag_figureset.ml";;

(* toplevel 
   #use "Contentfile_formula_u_figureset_tag_figureset.ml";;

*)

let nam_cod = "Contentfile_formula_u_figureset_tag_figureset.ml";;
let nam_dos = "figureset";;
let nam_cat = "tag";;
let nam_enp = "triangle_isoceles";;

let sym_dos = Domainset_symbol_v.make nam_dos;;
let idx_dos = Domainset_symbol_v.list_index_of_domainset_symbol sym_dos;;
let soi_dos = Sole_index_v.make idx_dos [];;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store soi_dos gss_dos;;
let tag_dos = Tag_v.make sym_dos soi_dos;;
let for_dos = Domainset_formula_v.retrieve tag_dos;;

let sel_cat = (fun c -> Category_symbol_v.name c = nam_cat);;
let tag_cat = Doublet_list_v.find_if_left sel_cat for_dos;;
let for_cat = Category_formula_v.retrieve tag_cat;;

let sel_enp = (fun e -> Entity_symbol_v.string_off e = nam_enp);;
let tag_enp = Doublet_list_v.find_if_left sel_enp for_cat;;
let for_enp = Entity_formula_v.retrieve tag_enp;;

let nam_cof = "type_alone";;
let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof for_enp;;
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

test_number 1 (
tag_dos
(* : Domainset_tag_t.domainset_tag Tag_t.tag *)
=
(Domainset_symbol_t.Figureset, [2])
);;

test_number 2 (
tag_cat
(* : Category_tag_t.category_tag * Sole_index_t.sole_index *)
=
(Category_symbol_t.Tag, [8; 2])
);;

test_number 3 (
tag_enp
(* : Entity_proper_tag_t.entity_proper_tag * Tag_t.Sole_index_t.sole_index *)
=
(Entity_symbol_t.Entity_proper_top_symbol
  (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_isoceles"),
 [3; 8; 2])
);;

test_number 4 (
tag_cof
(* : Contentfile_tag_t.contentfile_tag * Sole_index_t.sole_index *)
=
(Contentfile_symbol_t.Type_alone, [1; 1; 7; 5])
);;

test_number 5 (
for_cof 
(* : Usagefile_tag_t.usagefile_tag Tag_t.tag list *)
=
[(Usagefile_tag_t.Implementation, [1; 1; 1; 7; 5])]
);;

