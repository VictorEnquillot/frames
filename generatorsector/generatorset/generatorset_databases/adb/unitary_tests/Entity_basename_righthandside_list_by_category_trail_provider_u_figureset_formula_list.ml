open Make_test_v;;

testing "Entity_basename_righthandside_list_by_category_trail_provider_v with
   Entity_basename_righthandside_list_by_category_trail_provider_u_figureset_formula_list.ml";; 

(* toplevel 
   #use "Entity_basename_righthandside_list_by_category_trail_provider_u_figureset_formula_list.ml";; 

*)

let tra_dos = [("domain", "figure")];;
let tra_cat = Trail_v.make "category" "formula" tra_dos;;

let ebr_l = Entity_basename_righthandside_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
ebr_l
(* : string list *)
  =
["list"; "point"; "coordinate_cartesian"; "string"; "float"]
);;

