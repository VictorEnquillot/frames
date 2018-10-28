open Make_test_v;;

testing "Entity_basic_basename_list_by_domain_trail_provider_v with
   Entity_basic_basename_list_by_domain_trail_provider_u_generatorset.ml";; 

(* toplevel 
   #use "Entity_basic_basename_list_by_domain_trail_provider_u_generatorset.ml";; 

*)
let nam_dos = "generatorset";;
let tra_dos = Trail_v.make "domain" nam_dos [];;

let nam_bui_l = Entity_basic_basename_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
nam_bui_l
=  
 ["x"; "y"; "z"; "float"]
);;