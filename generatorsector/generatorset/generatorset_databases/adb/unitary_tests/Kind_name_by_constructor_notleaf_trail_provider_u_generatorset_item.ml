open Make_test_v;;

testing "Kind_name_by_constructor_notleaf_trail_provider_v with
   Kind_name_by_constructor_notleaf_trail_provider_u_generatorset_item.ml";; 

(* toplevel 
   #use "Kind_name_by_constructor_notleaf_trail_provider_u_generatorset_item.ml";; 

*)

let tra_dos = Trail_v.make "domain" "generatorset_item" [];;

let tra_cat = Trail_v.make "category" "symbol" tra_dos;;
let tra_con = Trail_v.make "entity" "point" tra_dos;;
let nam_kin = Kind_name_by_constructor_notleaf_trail_provider_v.provide tra_con;;

test_number 1 (
nam_kin
=
 "type"
);;

