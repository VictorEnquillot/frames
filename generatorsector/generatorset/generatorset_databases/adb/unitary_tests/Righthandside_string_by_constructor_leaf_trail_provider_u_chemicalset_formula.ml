open Make_test_v;;

testing "Righthandside_string_by_constructor_leaf_trail_provider_v with
   Righthandside_string_by_constructor_leaf_trail_provider_u_chemicalset_formula.ml";; 

(* toplevel 
   #use "Righthandside_string_by_constructor_leaf_trail_provider_u_chemicalset_formula.ml";; 

*)

let tra_dos = Trail_v.make "domain" "chemicalset" [];;
let tra_cat = Trail_v.make "category" "formula" tra_dos;;

let select_entity_off_doublet ent dep1 dep2 dou =
  let (e, s) = dou in
  let dep = List.length (String_v.split_of_character_of_string '_' e) in
  String.length e >= (String.length ent) 
    && (String.sub e 0 (String.length ent) = ent)
    && dep >= dep1 
    && dep <= dep2 
;;

let select_entity_off_triplet ent dep1 dep2 tri =
  let (k, e, s) = tri in
  (k = "type")
    && (select_entity_off_doublet ent dep1 dep2 (e, s))
;;

let nam_ent_n_str_con_dol = Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v.provide tra_cat;;

let tra_ent_mld = Trail_v.make "entity" "molecule_linear_diatomic" tra_cat;;
let rhs_str_mld = Righthandside_string_by_constructor_leaf_trail_provider_v.provide tra_ent_mld;;

let tra_ent_gro = Trail_v.make "entity" "grouping_fromid" tra_cat;;
let rhs_str_gro = Righthandside_string_by_constructor_leaf_trail_provider_v.provide tra_ent_gro;;

let tra_ent_gua = Trail_v.make "entity" "guanidine" tra_cat;;
let rhs_str_gua = Righthandside_string_by_constructor_leaf_trail_provider_v.provide tra_ent_gua;;

test_number 1 (
 List.filter (select_entity_off_doublet "block_none_single" 0 7 ) nam_ent_n_str_con_dol
(* : (string, string) Doublet_t.doublet list *)
=
[("block_none_single_ax1en_diatomic",
  "capped_list atom_core:tag atom_onetied:tag");
 ("block_none_single_ax2e0_linear",
  "capped_list atom_core:tag atom_onetied:tag");
 ("block_none_single_ax2e1_bent",
  "capped_list atom_core:tag atom_onetied:tagz_ccl_s");
 ("block_none_single_ax2e2_bent",
  "capped_list atom_core:tag atom_onetied:tag");
 ("block_none_single_ax2e3_linear",
  "capped_list atom_core:tag atom_onetied:tag");
 ("block_none_single_ax3e0_trigonalplanar",
  "capped_list atom_core:tag atom_onetied:tag");
 ("block_none_single_ax3e1_trigonalpyramidal",
  "capped_list atom_core:tag atom_onetied:tag");
 ("block_none_single_ax4e1_tetrahedral",
  "capped_list atom_core:tag atom_onetied:tag")]
);;

test_number 2 (
rhs_str_mld
(* : string *)
=
"singlet fragment:tag"
);;

test_number 3 (
rhs_str_gro
(* : string *)
=
"capped_list fragment:tag grouping:tag"
);;

test_number 4 (
String_v.is_empty_of_string (rhs_str_gua)
);;
