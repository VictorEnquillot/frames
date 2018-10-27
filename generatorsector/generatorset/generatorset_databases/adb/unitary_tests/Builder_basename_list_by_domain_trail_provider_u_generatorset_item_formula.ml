open Make_test_v;;

testing "Builder_basename_list_by_domain_trail_provider_v with
   Builder_basename_list_by_domain_trail_provider_u_generatorset_item_formula.ml";; 

(* toplevel 
   #use "Builder_basename_list_by_domain_trail_provider_u_generatorset_item_formula.ml";; 

*)

let tra_dos = Trail_v.make "domain" "generatorset_item" [];;

let nam_bui_l = Builder_basename_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
nam_bui_l
=
[]
);;
