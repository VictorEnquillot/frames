open Make_test_v;;

testing "entity_proformula_by_entity_tritup_provider_v with
   Entity_proformula_by_entity_tritup_provider_u_formula_block.ml";;

(* toplevel 
   #use "Entity_proformula_by_entity_tritup_provider_u_formula_block.ml";; 
*)

let sym_dos = Domain_symbol_v.make "chemicalset";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let sym_enp = Entity_symbol_v.top_has_notopsonleaf "block"
let gss_enp = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp;;
Generatorset_symbol_by_sole_index_provider_v.store soi_enp gss_enp;;
let tag_enp = Tag_v.make sym_enp soi_enp;;

let sym_ent_l = Entity_proformula_by_entity_tritup_provider_v.provide tag_enp;;

test_number 1 (
sym_ent_l
=
[Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_v.top_has_notopsonleaf "atom");
   Entity_symbol_t.Entity_external_symbol
    (Entity_external_symbol_t.Entity_external_datastructure_symbol
      Entity_external_datastructure_symbol_t.List_caml)]
);;

