open Make_test_v;;

testing "Item_symbol_list_by_usagefile_quitup_provider_v with
   Item_symbol_list_by_usagefile_quitup_provider_u_chemicalset_symbol_atom_zerotied.ml";;

(* toplevel 
   #use "Item_symbol_list_by_usagefile_quitup_provider_u_chemicalset_symbol_atom_zerotied.ml";; 
*)

let sym_dos = Domain_symbol_v.make "chemicalset";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let sym_enp = Entity_symbol_v.top_has_notopsonleaf "atom_zerotied"
let gss_enp = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp;;
Generatorset_symbol_by_sole_index_provider_v.store soi_enp gss_enp;;
let tag_enp = Tag_v.make sym_enp soi_enp;;

let sym_cof = Contentfile_symbol_v.make "value_alone";;
let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof gss_cof;;
let tag_cof = Tag_v.make sym_cof soi_cof;;

let sym_usf = Usagefile_symbol_v.make "implementation";;
let gss_usf = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf;;
Generatorset_symbol_by_sole_index_provider_v.store soi_usf gss_usf;;
let tag_usf = Tag_v.make sym_usf soi_usf;;

let ite_l = Item_symbol_list_by_usagefile_quitup_provider_v.provide tag_usf;;

test_number 1 (
tag_enp
(*: Entity_propert.entity_proper_symbol Tag_t.tag *)
=
(Entity_symbol_v.top_has_notopsonleaf "atom_zerotied", [3; 1; 1])
);;

test_number 2 (
tag_cof
(* : Contentfile_symbol_t.contentfile_symbol Tag_t.tag *)
=
(Contentfile_symbol_t.Value_alone, [2; 3; 1; 1])
);;

test_number 3 (
tag_usf
(* : Usagefile_symbol_t.usagefile_symbol Tag_t.tag *)
=
(Usagefile_symbol_t.Implementation, [1; 2; 3; 1; 1])
);;

test_number 4 (
ite_l
(* : Item_symbol_list_by_usagefile_quitup_provider_v.Item_symbol_t.item_symbol list *)
=
[Item_symbol_v.heading; 
 Item_symbol_v.aliasing;
 Item_symbol_v.making; 
 Item_symbol_v.naming;
 Item_symbol_v.extracting; 
 Item_symbol_v.querying;
 Item_symbol_v.upgrading_grandson; 
 Item_symbol_v.abbreviating;
 Item_symbol_v.ending]
);;
