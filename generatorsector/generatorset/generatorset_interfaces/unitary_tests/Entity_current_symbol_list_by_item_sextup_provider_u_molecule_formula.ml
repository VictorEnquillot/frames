open Make_test_v;;

testing "Entity_current_symbol_list_by_item_sextup_provider_v with
   Entity_current_symbol_list_by_item_sextup_provider_u_molecule_formula.ml";; 

(* toplevel 
   #use "Entity_current_symbol_list_by_item_sextup_provider_u_molecule_formula.ml";; 

*)

let nam_dos = "moleculeset";;
let nam_cat = "formula";;
let nam_enp = "molecule";;
let nam_usf = "implementation";;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let sym_enp = Entity_symbol_v.top_has_notopsonleaf nam_enp;;
let gss_enp = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp;;
Generatorset_symbol_by_sole_index_provider_v.store soi_enp gss_enp;;
let tag_enp = Tag_v.make sym_enp soi_enp;;

(* Value_alone *)

let nam_cof = "type_alone";;

let sym_cof = Contentfile_symbol_v.make nam_cof;;
let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof gss_cof;;
let tag_cof = Tag_v.make sym_cof soi_cof;;

let sym_usf = Usagefile_symbol_v.make nam_usf;;
let gss_usf = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf;;
Generatorset_symbol_by_sole_index_provider_v.store soi_usf gss_usf;;
let tag_usf = Tag_v.make sym_usf soi_usf;;

(* Retrieving *)

let sym_ite_ret = Item_symbol_v.make "retrieving";;
let gss_ite_ret = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_ret;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_ret gss_ite_ret;;
let tag_ite_ret = Tag_v.make sym_ite_ret soi_ite_ret;;

let pat_sym_ent_l_ret = Entity_current_symbol_list_by_item_sextup_provider_v.provide tag_ite_ret;;

test_number 1 (
tag_ite_ret 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_t.Item_oneparagraph_symbol Item_oneparagraph_symbol_t.Retrieving,
 [2; 1; 2; 1; 1; 3])
);;

test_number 2 (
pat_sym_ent_l_ret
(* : Entity_symbol_t.entity_symbol list list *)
=
[[Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "grouping"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "molecule"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]]
);;

(* Making *)

let sym_ite_mak = Item_symbol_v.make "making";;
let gss_ite_mak = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_mak;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_mak gss_ite_mak;;
let tag_ite_mak = Tag_v.make sym_ite_mak soi_ite_mak;;

let pat_sym_ent_l_mak = Entity_current_symbol_list_by_item_sextup_provider_v.provide tag_ite_mak;;

test_number 3 (
tag_ite_mak 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_t.Item_oneparagraph_symbol Item_oneparagraph_symbol_t.Making,
 [6; 1; 2; 1; 1; 3])
);;

test_number 4 (
pat_sym_ent_l_mak
(* : Entity_symbol_t.entity_symbol list list *)
=
[[Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "grouping"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))];
 [Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "molecule"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]]
);;

(* Type_alone *)

let sym_cof = Contentfile_symbol_v.make "type_alone";;
let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof gss_cof;;
let tag_cof = Tag_v.make sym_cof soi_cof;;

let gss_usf = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf;;
Generatorset_symbol_by_sole_index_provider_v.store soi_usf gss_usf;;
let tag_usf = Tag_v.make sym_usf soi_usf;;

(* Typing *)

let sym_ite_typ = Item_symbol_v.make "typing";;
let gss_ite_typ = Generatorset_symbol_v.generatorset_symbol_of_item_symbol sym_ite_typ;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ite_typ gss_ite_typ;;
let tag_ite_typ = Tag_v.make sym_ite_typ soi_ite_typ;;

let pat_sym_ent_l_typ = Entity_current_symbol_list_by_item_sextup_provider_v.provide tag_ite_typ;;

test_number 5 (
tag_ite_typ 
(* : Item_symbol_t.item_symbol Tag_t.tag *)
=
(Item_symbol_t.Item_oneparagraph_symbol Item_oneparagraph_symbol_t.Typing,
 [3; 1; 1; 1; 1; 3])
);;

test_number 6 (
pat_sym_ent_l_typ
(* : Entity_symbol_t.entity_symbol list list *)
=
[[Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))];

 [Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "grouping"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))];

 [Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_son_symbol
     (Entity_proper_son_symbol_t.Notonlyson "molecule"));
  Entity_symbol_t.Entity_proper_symbol
   (Entity_propert.Entity_proper_top_symbol
     (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset"))]]
);;
