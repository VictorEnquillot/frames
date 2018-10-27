open Make_test_v;;

testing "Contentfile_symbol_list_by_entity_tritup_provider_v with
   Contentfile_symbol_list_by_entity_tritup_provider_u_chemicalset.ml";;

(* toplevel 
   #use "Contentfile_symbol_list_by_entity_tritup_provider_u_chemicalset.ml";; 

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

 
test_number 1 (
tag_enp 
(* : Entity_propert.entity_proper_symbol Tag_t.tag *)
 =
  (Entity_symbol_v.top_has_notopsonleaf "atom_zerotied", [3; 1; 1])
);;

test_number 2 (
tag_cof
=
Contentfile_symbol_t.Unconstrained
);;
