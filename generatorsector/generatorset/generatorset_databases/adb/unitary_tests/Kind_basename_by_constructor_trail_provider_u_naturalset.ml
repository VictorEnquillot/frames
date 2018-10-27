open Make_test_v;;

testing "Kind_basename_by_constructor_trail_provider_v with
   Kind_basename_by_constructor_trail_provider_u_naturalset.ml";; 

(* toplevel 
   #use "Kind_basename_by_constructor_trail_provider_u_naturalset.ml";; 

*)

let tra_dos = Trail_v.make "domain" "natural" [];;

let tra_cat = Trail_v.make "category" "symbol" tra_dos;;
let tra_con = Trail_v.make "entity" "point" tra_dos;;
let ban_kin = Kind_basename_by_constructor_trail_provider_v.provide tra_con;;

test_number 1 (
ban_kin
=
 "constructors"
);;

let tra_cat = Trail_v.make "category" "formula" tra_dos;;
let tra_con = Trail_v.make "entity" "point_constructor:ofstring" tra_dos;;
let ban_kin = Kind_basename_by_constructor_trail_provider_v.provide tra_con;;

test_number 2 (
ban_kin
=
 "builders"
);;
