open Make_test_v;;

testing "Entity_basename_righthandside_list_by_category_trail_provider_v with
   Entity_basename_righthandside_list_by_category_trail_provider_u_naturalset_symbol.ml";; 

(* toplevel 
   #use "Entity_basename_righthandside_list_by_category_trail_provider_u_naturalset_symbol.ml";; 

*)

let tra_dos = [("domain", "natural")];;
let tra_cat = Trail_v.make "category" "symbol" tra_dos;;

let ebr_l = Entity_basename_righthandside_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
ebr_l
(* : string list *)
=
  ["digit"; "expression"; "token"; "expression_atomic"; "expression_composite";
   "expression_zero"; "variable:ofstring"; "operation"; "leftparenthesis";
   "rightparenthesis"; "successor"; "addition"; "multiplication"; "zero";
   "one"; "two"; "three"; "four"; "five"; "six"; "seven"; "eight"; "nine"]
);;

