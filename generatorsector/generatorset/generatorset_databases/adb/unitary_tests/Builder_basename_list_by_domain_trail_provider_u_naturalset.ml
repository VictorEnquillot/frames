open Make_test_v;;

testing "Builder_basename_list_by_domain_trail_provider_v with
   Builder_basename_list_by_domain_trail_provider_u_naturalset.ml";; 

(* toplevel 
   #use "Builder_basename_list_by_domain_trail_provider_u_naturalset.ml";; 

*)

let nam_dom = "natural";;
let tra_dom = Trail_v.make "domain" nam_dom [];;

let nam_bui_l = Builder_basename_list_by_domain_trail_provider_v.provide tra_dom;;

test_number 1 (
nam_bui_l
=  
 ["coordinate_cartesian"; "float"; "point"; "string"]
);;
