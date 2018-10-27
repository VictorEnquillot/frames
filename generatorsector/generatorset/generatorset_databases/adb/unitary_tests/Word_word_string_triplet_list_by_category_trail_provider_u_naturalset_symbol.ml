open Make_test_v;;

testing "Word_word_string_triplet_list_by_category_trail_provider_v with
   Word_word_string_triplet_list_by_category_trail_provider_u_naturalset_symbol.ml";; 

(* toplevel 
   #use "Word_word_string_triplet_list_by_category_trail_provider_u_naturalset_symbol.ml";; 

*)

let select_left nam dep1 dep2 wol =
  let dep = List.length (String_v.split_of_character_of_string '_'  wol) in
  String.length wol >= (String.length nam) 
    && (String.sub wol 0 (String.length nam) = nam)
    && dep >= dep1 
    && dep <= dep2 
;;

let select_entity_off_singlet nam dep1 dep2 rcd =
  let dep = List.length (String_v.split_of_character_of_string '_' rcd) in
  String.length rcd >= (String.length nam) 
    && (String.sub rcd 0 (String.length nam) = nam)
    && dep >= dep1 
    && dep <= dep2 
;;

let select_entity_off_doublet ent dep1 dep2 dou =
  let (e, s) = dou in
  let dep = List.length (String_v.split_of_character_of_string '_' e) in
  String.length e >= (String.length ent) 
    && (String.sub e 0 (String.length ent) = ent)
    && dep >= dep1 
    && dep <= dep2 
;;

let select_entity_off_triplet ent dep1 dep2 tri =
  let (k, e, s) = tri in
  (k = "constructors")
    && (select_entity_off_doublet ent dep1 dep2 (e, s))
;;

let tra_cat = [("category", "symbol"); ("domain", "natural")];;
let wws_trl = Word_word_string_triplet_list_by_category_trail_provider_v.provide tra_cat;;

test_number 1 (
wws_trl
(* : (string, string, string) Triplet_list_t.triplet_list *)
=
  [("constructors", "natural", "digit expression token");
   ("constructors", "expression", "expression_atomic expression_composite");
   ("constructors", "expression_atomic", "expression_zero variable:ofstring");
   ("constructors", "token", "operation leftparenthesis rightparenthesis");
   ("constructors", "operation", "successor addition multiplication");
   ("constructors", "digit", "zero one two three four five six seven eight nine")]
);;

let coo_l = List.filter (select_entity_off_triplet "token" 0 7) wws_trl;;

test_number 2 (
coo_l
(* : (string, string, string) Triplet_t.triplet list *)
=  
 [("constructors", "token", "operation leftparenthesis rightparenthesis")]
);;

