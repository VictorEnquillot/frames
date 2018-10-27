open Make_test_v;;

testing "Kind_name_by_entity_trail_provider_v with
   Kind_name_by_entity_trail_provider_u_moleculeset_formula_molecule_linear_diatomic.ml";;

(* toplevel 
   #use "Kind_name_by_entity_trail_provider_u_moleculeset_formula_molecule_linear_diatomic.ml";;

*)

let nam_dos = "moleculeset";;
let tra_cat = [("category", "formula"); ("domain", nam_dos)];;
let tra_ent_mld = Trail_v.make "entity" "molecule_linear_diatomic" tra_cat;;

test_number 1 (
Kind_name_by_entity_trail_provider_v.provide tra_ent_mld
(* : (string, string list) Doublet_list_t.doublet_list *)
=
"type"
);;

