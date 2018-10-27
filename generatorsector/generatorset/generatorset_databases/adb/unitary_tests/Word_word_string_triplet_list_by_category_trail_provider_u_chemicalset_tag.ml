open Make_test_v;;

testing "Word_word_string_triplet_list_by_category_trail_provider_v with
   Word_word_string_triplet_list_by_category_trail_provider_u_chemicalset_tag.ml";; 

(* toplevel 
   #use "Word_word_string_triplet_list_by_category_trail_provider_u_chemicalset_tag.ml";; 
*)

let tra_cat_sym = [("category", "symbol"); ("domain", "chemicalset")];;
let tag_tra_cat = [("category", "tag"); ("domain", "chemicalset")];;

(* Symbols *)
let sym_w_n_wl_l = Word_word_string_triplet_list_by_category_trail_provider_v.provide tra_cat_sym;;

(* Tags *)
let tag_w_n_wl_l = Word_word_string_triplet_list_by_category_trail_provider_v.provide tag_tra_cat;;

let select_left nam dep1 dep2 wol =
  let dep = List.length (String_v.split_of_character_of_string '_'  wol) in
  String.length wol >= (String.length nam) 
    && (String.sub wol 0 (String.length nam) = nam)
    && dep >= dep1 
    && dep <= dep2 
;;

test_number 1 (
Doublet_list_v.filter_if_left (select_left "cluster" 0 3) sym_w_n_wl_l 
=
[("cluster", ["cluster_fromid"; "protein_fromid"]);
 ("cluster_fromid", ["string"])]
);;

test_number 2 (
tag_w_n_wl_l
(* : (string, string list) Doublet_list_t.doublet_list *)
=
sym_w_n_wl_l
);;

