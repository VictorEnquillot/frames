open Make_test_v;;

testing "Contentfile_symbol_list_by_entity_tritup_provider_v with
   Contentfile_symbol_list_by_entity_tritup_provider_u_figure_formula.ml";;

(* toplevel 
   #use "Contentfile_symbol_list_by_entity_tritup_provider_u_figure_formula.ml";; 

*)

let nam_dos = "figure";;
let nam_cat = "formula";;
let nam_enp = "molecule_linear_diatomic";;

let sym_dos = Domain_symbol_v.make nam_dos "";;

let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_provider_v.store soi_dos gss_dos;;
let sym_dos = Tag_v.make sym_dos;;

let sym_cat = Category_symbol_v.make nam_cat;;
let gss_cat = Generatorset_symbol_v.generatorset_symbol_of_category_symbol sym_cat;;
Generatorset_symbol_by_sole_index_provider_v.store soi_cat gss_cat;;
let tag_cat = Tag_v.make sym_cat soi_cat;;

let sym_enp = Entity_symbol_v.top_has_sometopsonleaf nam_enp;;
let gss_enp = Generatorset_symbol_v.generatorset_symbol_of_entity_proper_symbol sym_enp;;
Generatorset_symbol_by_sole_index_provider_v.store soi_enp gss_enp;;
let tag_enp = Tag_v.make sym_enp soi_enp;;

let sym_cof_l = Contentfile_symbol_list_by_entity_tritup_provider_v.provide tag_enp;;

test_number 1 (
tag_enp 
(* : Entity_propert.entity_proper_symbol Tag_t.tag *)
 =
  (Entity_propert.Entity_proper_top_symbol
    (Entity_proper_top_symbol_t.Top_has_sometopsonleaf
      "molecule_linear_diatomic"),
   [4; 2; 7])
);;

test_number 2 (
tag_cof
=
Contentfile_symbol_t.Unconstrained
);;
