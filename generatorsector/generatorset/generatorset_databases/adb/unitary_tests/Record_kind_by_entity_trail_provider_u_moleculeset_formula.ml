open Make_test_v;;

testing "Record_kind_by_entity_trail_provider_v with
   Record_kind_by_entity_trail_provider_u_moleculeset_formula.ml";; 

(* toplevel 
   #use "Record_kind_by_entity_trail_provider_u_moleculeset_formula.ml";; 

*)

let nam_dos = "moleculeset";;
let tra_cat = [("category", "formula"); ("domain", nam_dos)];;
let tra_ent_mol = Trail_v.make "entity" "molecule" tra_cat;;

test_number 1 (
Record_kind_by_entity_trail_provider_v.provide tra_ent_mol
(* : (string, string list) Doublet_list_t.doublet_list *)
=
"type"
);;

