open Make_test_v;;

testing "Entity_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v with
   Entity_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_u_naturalset_symbol.ml"


(* toplevel 
   #use "Entity_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_u_naturalset_symbol.ml";;

*)

let nam_dom = "natural";;
let nam_cat = "symbol";;
let tra_dom = Trail_v.make "domain" nam_dom [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dom;;

let tri_ekr_l = Entity_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
tri_ekr_l
=
  [("natural", "constructors", "digit expression token");
   ("expression", "constructors", "expression_atomic expression_composite");
   ("expression_atomic", "constructors", "expression_zero variable:ofstring");
   ("token", "constructors", "operation leftparenthesis rightparenthesis");
   ("operation", "constructors", "successor addition multiplication");
   ("digit", "constructors",
    "zero one two three four five six seven eight nine")]
);;

