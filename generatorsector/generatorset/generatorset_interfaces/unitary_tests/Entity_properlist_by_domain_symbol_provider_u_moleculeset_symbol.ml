open Make_test_v;;

testing "Entity_proper_symbol_list_by_domain_symbol_provider_v with
   Entity_proper_symbol_list_by_domain_symbol_provider_u_moleculeset_symbol.ml";;

(* toplevel 
   #use "Entity_proper_symbol_list_by_domain_symbol_provider_u_moleculeset_symbol.ml";; 

*)

let nam_dos = "moleculeset";;
let nam_enp = "moleculeset";;

let sym_enp = Entity_symbol_v.top_has_notopsonleaf nam_enp;;

let sym_dos = Domain_symbol_v.make nam_dos "";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

(* Category Symbol *)

let nam_cat = "symbol";;
let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat_sym = Tag_v.make sym_cat soi_cat;;

let sym_enp_l_sym = Entity_proper_symbol_list_by_domain_symbol_provider_v.provide tag_cat_sym;;

test_number 1 (
sym_enp_l_sym
(* : Entity_propert.entity_proper_symbol list *)
=
[Entity_propert.Entity_proper_top_symbol
  (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset");
 Entity_symbol_t.Entity_proper "fragment";
 Entity_symbol_t.Entity_proper "grouping";
 Entity_symbol_t.Entity_proper "molecule";
 Entity_symbol_t.Entity_proper "molecule_forked";
 Entity_symbol_t.Entity_proper "molecule_linear";
 Entity_symbol_t.Entity_proper "molecule_linear_diatomic";
 Entity_symbol_t.Entity_proper "molecule_linear_overdiatomic";
 Entity_symbol_t.Entity_proper "molecule_polymer"]
);;


(* Category Formula *)

let nam_cat = "formula";;
let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat_for = Tag_v.make sym_cat soi_cat;;

let sym_enp_l_for = Entity_proper_symbol_list_by_domain_symbol_provider_v.provide tag_cat_for;;

test_number 2 (
sym_enp_l_for
(* : Entity_propert.entity_proper_symbol list *)
=
[Entity_propert.Entity_proper_top_symbol
  (Entity_proper_top_symbol_t.Top_has_notopsonleaf "moleculeset");
 Entity_symbol_t.Entity_proper "grouping";
 Entity_symbol_t.Entity_proper "grouping_fromid";
 Entity_symbol_t.Entity_proper "molecule";
 Entity_symbol_t.Entity_proper "molecule_forked";
 Entity_symbol_t.Entity_proper "molecule_forked_fromid";
 Entity_symbol_t.Entity_proper "molecule_linear";
 Entity_symbol_t.Entity_proper "molecule_linear_diatomic";
 Entity_symbol_t.Entity_proper "molecule_linear_overdiatomic";
 Entity_symbol_t.Entity_proper "molecule_polymer";
 Entity_symbol_t.Entity_proper "polypeptide_fromid";
 Entity_symbol_t.Entity_proper "molecule_polymer_fromid"]
);;
