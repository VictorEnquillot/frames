open Make_test_v;;

testing "Description_word_word_string_triplet_list_by_category_trail_provider_v with
   Description_word_word_string_triplet_list_by_category_trail_provider_u_chemicalset_formula.ml";; 

(* toplevel 
   #use "Description_word_word_string_triplet_list_by_category_trail_provider_u_chemicalset_formula.ml";; 

*)

let nam_dos = "chemicalset";;
let tra_cat = [("category", "formula"); ("domain", nam_dos)];;
let wws_trl = Description_word_word_string_triplet_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
wws_trl
(* : ((string, string) Doublet_t.doublet, string) Doublet_list_t.doublet_list *)
  =
  [("description", "protein", "a pure example for a description")]
);;

