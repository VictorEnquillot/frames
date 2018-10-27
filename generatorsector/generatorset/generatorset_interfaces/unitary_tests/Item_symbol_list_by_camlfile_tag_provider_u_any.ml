open Make_test_v;;

testing "item_symbol_list_by_usagefile_quitup_provider_v.ml";;

(* toplevel 
   #use "Item_symbol_list_by_usagefile_quitup_provider_u_chemicalset_symbol_atom_zerotied.ml";; 
*)



let sym_dos = Domain_symbol_v.make "chemicalset";;
let sym_dos = Tag_v.make sym_dos;;
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;

let sym_ent = Entity_symbol_v.make "atom";;
let gss_ent = Generatorset_symbol_v.generatorset_symbol_of_entity_symbol sym_ent;;
Generatorset_symbol_by_sole_index_provider_v.store soi_ent gss_ent;;


let sym_cof = Contentfile_symbol_t.make "type";;
let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof gss_cof;;

let sym_usf = Contentfile_symbol_t.make "implementation";;
let gss_usf = Generatorset_symbol_v.generatorset_symbol_of_usagefile_symbol sym_usf;;
Generatorset_symbol_by_sole_index_provider_v.store soi_usf gss_usf;;

let ite_l = Item_symbol_list_by_camlfile_tag_provider_u_any.provide tag_usf;;

test_number 1 (
ite_l
=
[]
);;
