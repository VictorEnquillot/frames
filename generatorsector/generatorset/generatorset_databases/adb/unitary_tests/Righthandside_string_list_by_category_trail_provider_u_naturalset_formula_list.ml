open Make_test_v;;

testing "Righthandside_string_list_by_category_trail_provider_v
   Righthandside_string_list_by_category_trail_provider_u_naturalset_formula.ml";; 

(* toplevel 
   #use "Righthandside_string_list_by_category_trail_provider_u_naturalset_formula_list.ml";;

*)

let nam_dos = "natural";;
let nam_cat = "formula";;

let tra_dos = Trail_v.make "domain" nam_dos [];;
let tra_cat = Trail_v.make "category" nam_cat tra_dos;;

let str_rhs_l = Righthandside_string_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
str_rhs_l
(* : string list *)
=
  ["list point"; 
   "list coordinate_cartesian"; 
   "list string";
   "list float"]
);;
