open Make_test_v;;

testing "entity_proformula_by_entity_tritup_provider_v with
   Entity_proformula_by_entity_tritup_provider_u_chemicalset_formula_block_none_single.ml";;

(* toplevel 
   #use "Entity_proformula_by_entity_tritup_provider_u_chemicalset_formula_block_none_single.ml";; 
*)

let sym_dos = Domain_symbol_v.make "chemicalset";;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let sym_enp = Entity_symbol_v.top_has_notopsonleaf "block_none_single"
let gss_enp = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp;;
Generatorset_symbol_by_sole_index_provider_v.store soi_enp gss_enp;;
let tag_enp = Tag_v.make sym_enp soi_enp;;
  
let tra_ent = Translating_tag_to_trail_v.entity_trail_of_entity_proper_tag tag_enp;;

let wor_l = Constructor_list_by_entity_trail_provider_v.provide tra_ent;;


let sym_ent_l = Entity_proformula_by_entity_tritup_provider_v.provide tag_enp;;

test_number 1 (
tra_ent
(* (string * string) list *)
=
  [("entity", "block_none_single"); ("category", "formula");
   ("domain", "chemicalset")]
);;

test_number 2 (
wor_l
(* : string list *)
=
["block_none_single_ax1"; "block_none_single_ax3"; "block_none_single_ax4"]
);;

test_number 3 (
sym_ent_l
=
[]
);;

