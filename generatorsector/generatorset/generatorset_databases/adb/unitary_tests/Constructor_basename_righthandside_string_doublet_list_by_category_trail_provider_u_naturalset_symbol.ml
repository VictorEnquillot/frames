open Make_test_v;;

testing "Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v
   Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_u_naturalset_symbol.ml";; 

(* toplevel 
   #use "Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_u_naturalset_symbol.ml";;

*)

let nam_dos = "natural";;
let nam_cat = "symbol";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let nam_ent_str_dol = Constructor_basename_righthandside_string_doublet_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
nam_ent_str_dol
(* : (string, string) Doublet_t.doublet list *)
=
 [("natural", "digit expression token");
   ("expression", "expression_atomic expression_composite");
   ("expression_atomic", "expression_zero variable:ofstring");
   ("token", "operation leftparenthesis rightparenthesis");
   ("operation", "successor addition multiplication");
   ("digit", "zero one two three four five six seven eight nine")]
);;

