open Make_test_v;;

testing "Entity_basic_basename_list_by_domain_trail_provider_v with
   Entity_basic_basename_list_by_domain_trail_provider_u_figureset.ml";; 

(* toplevel 
   #use "Entity_basic_basename_list_by_domain_trail_provider_u_figureset.ml";; 

*)

let nam_dom = "figure";;
let tra_dom = Trail_v.make "domain" nam_dom [];;
let ban_bui_l = Builder_basename_list_by_domain_trail_provider_v.provide tra_dom;;
let ban_cnl_l = Constructor_notleaf_basename_list_by_domain_trail_provider_v.provide tra_dom;;

let nam_bui_l = Entity_basic_basename_list_by_domain_trail_provider_v.provide tra_dom;;

test_number 1 (
nam_bui_l
=  
 ["x"; "y"; "z"; "float"]
);;
