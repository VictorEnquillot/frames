open Make_test_v;;

testing "Kind_name_by_entity_trail_provider_v with
   Kind_name_by_entity_trail_provider_u_chemicalset_formula.ml";; 

(* toplevel 
   #use "Kind_name_by_entity_trail_provider_u_chemicalset_formula.ml";; 

*)

let nam_dos = "chemicalset";;
let tra_cat = [("category", "formula"); ("domain", nam_dos)];;
let tra_ent_mld = Trail_v.make "entity" "molecule_linear_diatomic" tra_cat;;

let select_entity ent dep1 dep2 tri =
  let (k, e, s) = tri in
  let dep = List.length (String_v.split_of_character_of_string '_' e) in
  (k = "type")
  && String.length e >= (String.length ent) 
    && (String.sub e 0 (String.length ent) = ent)
    && dep >= dep1 
    && dep <= dep2 
;;

let wws_trl = Word_word_string_triplet_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
List.filter (select_entity "block_none_single" 0 7) wws_trl
 (* : (string * string, string) Doublet_list_t.doublet_list *)
  =
[("type", "block_none_single_ax1en_diatomic",
  "capped_list atom_core:tag atom_onetied:tag");
 ("type", "block_none_single_ax2e0_linear",
  "capped_list atom_core:tag atom_onetied:tag");
 ("type", "block_none_single_ax2e1_bent",
  "capped_list atom_core:tag atom_onetied:tagz_ccl_s");
 ("type", "block_none_single_ax2e2_bent",
  "capped_list atom_core:tag atom_onetied:tag");
 ("type", "block_none_single_ax2e3_linear",
  "capped_list atom_core:tag atom_onetied:tag");
 ("type", "block_none_single_ax3e0_trigonalplanar",
  "capped_list atom_core:tag atom_onetied:tag");
 ("type", "block_none_single_ax3e1_trigonalpyramidal",
  "capped_list atom_core:tag atom_onetied:tag");
 ("type", "block_none_single_ax4e1_tetrahedral",
  "capped_list atom_core:tag atom_onetied:tag")]
);;

test_number 2 (
Kind_name_by_entity_trail_provider_v.provide tra_ent_mld
  =
"type"
);;

