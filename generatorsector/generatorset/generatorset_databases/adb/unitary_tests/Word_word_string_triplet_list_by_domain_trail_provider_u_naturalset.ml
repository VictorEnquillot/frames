open Make_test_v;;

testing "Word_word_string_triplet_list_by_domain_trail_provider_v with
   Word_word_string_triplet_list_by_domain_trail_provider_u_naturalset.ml";; 

(* toplevel 
   #use "Word_word_string_triplet_list_by_domain_trail_provider_u_naturalset.ml";; 

*)

let tra_dos = [("domain", "natural")];;
let wws_trl = Word_word_string_triplet_list_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
wws_trl
(* : (string, string, string) Triplet_list_t.triplet_list *)
=
 [("constructors", "natural", "digit expression token");
   ("constructors", "expression", "expression_atomic expression_composite");
   ("constructors", "expression_atomic", "expression_zero variable:ofstring");
   ("constructors", "token", "operation leftparenthesis rightparenthesis");
   ("constructors", "operation", "successor addition multiplication");
   ("constructors", "digit",
    "zero one two three four five six seven eight nine");
   ("builders", "expression_true", "singlet string");
   ("builders", "expression_false", "singlet string");
   ("builders", "variable:ofstring", "list string");
   ("builders", "expression_composite", "list string");
   ("builders", "leftparenthesis", "list string");
   ("builders", "rightparenthesis", "list string")]
);;

