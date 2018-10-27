open Make_test_v;;

testing "Entity_fictive_nullary_v with
   entity_fictive_nullary_u_figureset_tag_triangle_isoceles_equilateral.ml";;

(* toplevel 
   #use "entity_fictive_nullary_u_figureset_tag_triangle_isoceles_equilateral.ml";;

*)

let nam_dos = "figureset";;
let nam_cat = "tag";;
let nam_usf = "implementation";;
let nam_cof = "value_alone";;
let nam_enp = "triangle_isoceles_equilateral";;

let sym_enp = Entity_proper_symbol_v.top_has_notopsonleaf nam_enp;;
let sym_enp = Entity_proper_symbol_v.top_has_sometopsonleaf nam_enp;;

let sym_dos = Domainset_symbol_v.make nam_dos "";;
let idx_dos = Domainset_symbol_v.list_index_of_domainset_symbol sym_dos;;
let soi_dos = Sole_index_v.make idx_dos [];;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store soi_dos gss_dos;;
let tag_dos = Tag_v.make sym_dos soi_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let idx_cat = Category_symbol_v.list_index_of_category_symbol sym_cat;;
let soi_cat = Sole_index_v.make idx_cat soi_dos;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_register_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let idx_enp = Entity_proper_symbol_v.list_index_of_entity_proper_symbol sym_enp;;
let soi_enp = Sole_index_v.make idx_enp soi_cat;;
let gss_enp = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp;;
Generatorset_symbol_by_sole_index_register_v.store soi_enp gss_enp;;
let tag_enp = Tag_v.make sym_enp soi_enp;;

let sym_cof = Contentfile_symbol_v.make nam_cof;;
let idx_cof = Contentfile_symbol_v.list_index_of_contentfile_symbol sym_cof;;
let soi_cof = Sole_index_v.make idx_cof soi_enp;;
let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_register_v.store soi_cof gss_cof;;
let tag_cof = Tag_v.make sym_cof soi_cof;;

let sym_usf = Usagefile_symbol_v.make nam_usf;;
let idx_usf = Usagefile_symbol_v.list_index_of_usagefile_symbol sym_usf;;
let soi_usf = Sole_index_v.make idx_usf soi_cof;;
let gss_usf = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf;;
Generatorset_symbol_by_sole_index_register_v.store soi_usf gss_usf;;
let tag_usf = Tag_v.make sym_usf soi_usf;;

let nam_ite = "making";;
let sym_ite = Item_symbol_v.make nam_ite;;
let idx_ite = Item_symbol_v.list_index_of_item_symbol sym_ite;;
let soi_ite = Sole_index_v.make idx_ite soi_usf;;
let gss_ite = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite;;
Generatorset_symbol_by_sole_index_register_v.store soi_ite gss_ite;;

let tag_ite = Tag_v.make sym_ite soi_ite;;

test_number 1 (
tag_ite
(* Item_symbol_t.item_symbol Tag_t.tag *)
  =
(Item_symbol_t.Item_oneparagraph_symbol Item_oneparagraph_symbol_t.Making,
 [3; 1; 3; 4; 8; 1])
);;

test_number 2 (
tag_usf
(* : Usagefile_symbol_t.usagefile_symbol Tag_t.tag *)
=
(Usagefile_symbol_t.Implementation, [1; 3; 4; 8; 1])
);;

test_number 3 (
tag_enp 
(* : Entity_proper_symbol_t.entity_proper_symbol Tag_t.tag *)
=
  (Entity_proper_symbol_t.Entity_proper_top_symbol
    (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_isoceles_equilateral"),
   [4; 8; 1])
);;

test_number 4 (
Entity_fictive_nullary_v.usagefile_tag_off_entity_fictive_nullary tag_ite
(* : Usagefile_symbol_t.usagefile_symbol Tag_t.tag *)
=
tag_usf
);;

test_number 5 (
Entity_fictive_nullary_v.entity_proper_tag_off_entity_fictive_nullary tag_ite
(* : Entity_proper_symbol_t.entity_proper_symbol Tag_t.tag *)
=
tag_enp
);;

