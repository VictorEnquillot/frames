open Make_test_v;;

testing "Constructor_basename_list_by_domain_trail_provider_v with
   Constructor_basename_list_by_domain_trail_provider_u_generatorset_item.ml"


(* toplevel 
   #use "Constructor_basename_list_by_domain_trail_provider_u_generatorset_item.ml";;

*)

let nam_dos = "generatorset";;
let tra_dos = Trail_v.make "domain" nam_dos [];;
let ban_con_l = Constructor_basename_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
ban_con_l
(* : (string, string) Doublet_t.doublet list *)
=
[]
);;

