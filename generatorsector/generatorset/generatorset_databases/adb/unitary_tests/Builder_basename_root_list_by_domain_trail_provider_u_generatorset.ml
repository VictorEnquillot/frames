open Make_test_v;;

testing "Builder_basename_root_list_by_domain_trail_provider_v with
   Builder_basename_root_list_by_domain_trail_provider_u_generatorset.ml";; 

(* toplevel 
   #use "Builder_basename_root_list_by_domain_trail_provider_u_generatorset.ml";; 

*)

let tra_dos = Trail_v.make "domain" "generatorset" [];;

let nam_bui_tl = Builder_basename_root_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
List.nth nam_bui_tl 0
(* : string Root_t.root *)
  =
[]
);;

