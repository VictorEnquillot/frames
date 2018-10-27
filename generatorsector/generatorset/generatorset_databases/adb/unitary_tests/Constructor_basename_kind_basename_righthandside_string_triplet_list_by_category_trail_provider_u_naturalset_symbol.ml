open Make_test_v;;

testing "Constructor_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v with
   Constructor_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_u_naturalset_symbol.ml"


(* toplevel 
   #use "Constructor_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_u_naturalset_symbol.ml";;

*)

let nam_dos = "natural";;
let nam_cat = "symbol";;
let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let tri_ekr_l = Constructor_basename_kind_basename_righthandside_string_triplet_list_by_category_trail_provider_v.provide tra_cat;;

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

