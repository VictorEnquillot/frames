open Make_test_v;;

testing "Kind_basename_list_by_category_trail_provider_v with
   Kind_basename_list_by_category_trail_provider_u_generatorset.ml";; 

(* toplevel 
   #use "Kind_basename_list_by_category_trail_provider_u_generatorset.ml";; 

*)

let tra_dos = Trail_v.make "domain" "generatorset" [];;

let nam_cat = "formula";;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let ban_kin_l = Kind_basename_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
ban_kin_l
=
["builders"]
);;

let nam_cat = "symbol";;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let ban_kin_l = Kind_basename_list_by_category_trail_provider_v.provide tra_cat;;

test_number 2 (
ban_kin_l
=
["constructors"; "description"]
);;

