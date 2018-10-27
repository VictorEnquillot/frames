open Make_test_v;;

testing "Constructor_basename_tree_by_domain_trail_provider_v with
   Constructor_basename_tree_by_domain_trail_provider_u_chemicalset_tag.ml";; 

(* toplevel 
   #use "Constructor_basename_tree_by_domain_trail_provider_u_chemicalset_tag.ml";; 
*)

let tra_cat = [("category", "tag"); ("domain", "chemicalset")];;
let tra_cat_sym = [("category", "symbol"); ("domain", "chemicalset")];;
let wor_ft = Constructor_basename_tree_by_domain_trail_provider_v.provide tra_cat;;
let wor_ft_sym = Constructor_basename_tree_by_domain_trail_provider_v.provide tra_cat_sym;;

test_number 1 (
wor_ft
(* : string Tree_t.tree list *)
= 
wor_ft_sym
);;

