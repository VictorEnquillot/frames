open Make_test_v;;

testing "Usagefile_symbol_list_by_contentfile_quatup_provider_v with
   Usagefile_symbol_list_by_contentfile_quatup_provider_u_any.ml";;

(* toplevel 
   #use "Usagefile_symbol_list_by_contentfile_quatup_provider_u_any.ml";; 

*)

let nam_dos = "moleculeset";;
let nam_cat = "symbol";;
let nam_enp = "moleculeset";;

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

let nam_cof = "type_alone";; 
let sym_cof = Contentfile_symbol_v.make nam_cof;;
let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof gss_cof;;
let tag_cof_tya = Tag_v.make sym_cof soi_cof;;

let sym_usf_l_tya = Usagefile_symbol_list_by_contentfile_quatup_provider_v.provide tag_cof_tya;;

let nam_cof = "type_n_value";; 
let sym_cof = Contentfile_symbol_v.make nam_cof;;
let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof gss_cof;;

let tag_cof_tnv = Tag_v.make sym_cof soi_cof;;
let sym_usf_l_tnv = Usagefile_symbol_list_by_contentfile_quatup_provider_v.provide tag_cof_tnv;;

let nam_cof = "value_alone";; 
let sym_cof = Contentfile_symbol_v.make nam_cof;;
let gss_cof = Generatorset_symbol_v.generatorset_symbol_of_contentfile_symbol sym_cof;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cof gss_cof;;

let tag_cof_vaa = Tag_v.make sym_cof soi_cof;;
let sym_usf_l_vaa = Usagefile_symbol_list_by_contentfile_quatup_provider_v.provide tag_cof_vaa;;

test_number 1 (
sym_usf_l_tya
(* Usagefile_symbol_t.usagefile_symbol list *)
   =
 [Usagefile_symbol_t.Implementation]
);;

test_number 2 ( 
sym_usf_l_tnv 
(* : Usagefile_symbol_t.usagefile_symbol list *)
  =
[Usagefile_symbol_t.Implementation; 
 Usagefile_symbol_t.Interface]
);;

test_number 3 ( 
sym_usf_l_vaa 
(* : Usagefile_symbol_t.usagefile_symbol list *)
  =
[Usagefile_symbol_t.Implementation; 
 Usagefile_symbol_t.Interface]
);;
