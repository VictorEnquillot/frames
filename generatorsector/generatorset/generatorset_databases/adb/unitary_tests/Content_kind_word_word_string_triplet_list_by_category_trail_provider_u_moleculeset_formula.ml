open Make_test_v;;

testing "Content_kind_word_word_string_triplet_list_by_category_trail_provider_v with
   Content_kind_word_word_string_triplet_list_by_category_trail_provider_u_moleculeset_formula.ml";; 

(* toplevel 
   #use "Content_kind_word_word_string_triplet_list_by_category_trail_provider_u_moleculeset_formula.ml";; 

*)

let nam_dos = "moleculeset";;
let nam_cat = "formula";;
let tra_cat = [("category", nam_cat); ("domain", nam_dos)];;
let wws_trl = Content_kind_word_word_string_triplet_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
wws_trl
(* : ((string, string) Doublet_t.doublet, string) Doublet_list_t.doublet_list *)
=
  [("content", "moleculeset", "grouping molecule");
   ("content", "grouping_fromid", "capped_list fragment:tag grouping:tag");
   ("content", "molecule_forked_fromid",
    "capped_list fragment_head:tag grouping:tag");
   ("content", "molecule_linear_diatomic",
    "capped_list fragment_head:tag grouping:tag");
   ("content", "molecule_linear_overdiatomic",
    "capped_list fragment_head:tag grouping:tag");
   ("content", "molecule_polymer_fromid", "list polymer_subunit:tag");
   ("content", "polypeptide_fromid", "list polypeptide_subunit:tag")]
);;

