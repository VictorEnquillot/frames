open Make_test_v;;

testing "Database_record_list_by_category_trail_provider_v with
   Database_record_list_by_category_trail_provider_u_chemicalset_tag.ml";; 

(* toplevel 
   #use "Database_record_list_by_category_trail_provider_u_chemicalset_tag.ml";; 
*)

let tra_cat_sym = [("category", "symbol"); ("domain", "chemicalset")];;
let tag_tra_cat = [("category", "tag"); ("domain", "chemicalset")];;
let sym_rcd_l = Database_record_list_by_category_trail_provider_v.provide tra_cat_sym;;
let tag_rcd_l = Database_record_list_by_category_trail_provider_v.provide tag_tra_cat;;

let select nam dep1 dep2 rcd =
  let w1 = List.hd (String_v.split_of_character_of_string '=' rcd) in
  let str = List.nth (String_v.split_of_character_of_string ' ' w1) 1  in
  let dep = List.length (String_v.split_of_character_of_string '_' str) in
  String.length str >= (String.length nam) 
    && (String.sub str 0 (String.length nam) = nam)
    && dep >= dep1 
    && dep <= dep2 
;;

test_number 1 (
tag_rcd_l
(* : string list *)
=
sym_rcd_l
);;

