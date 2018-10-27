(** {3 Test for Trail_v} *)

open Make_test_v;;

testing "Trail_v";;

(* toplevel 
   #use "trail_u_any.ml";; 
*)


let tra_dos = Trail_v.make "domain" "geometry" [];;
let tra_cat = Trail_v.make "category" "formula" tra_dos;;
let tra_ent = Trail_v.make "entity" "vector" tra_cat;;
let tra_kin = Trail_v.make "kind" "content" tra_ent;;

test_number 1 (
tra_dos
(* : Trail_t.trail *)
= 
[("domain", "geometry")]
);;

test_number 2 (
tra_ent
(* : Trail_t.trail *)
  =   
[("entity", "vector"); ("category", "formula"); ("domain", "geometry")]
);;

test_number 3 (
tra_kin
(* : Trail_t.trail *)
= 
[("kind", "content"); ("entity", "vector"); ("category", "formula");
 ("domain", "geometry")]
);;

test_number 4 (
Trail_v.make_of_value_of_trail "type" tra_kin
=
[("kind", "type"); ("entity", "vector");
 ("category", "formula"); ("domain", "geometry")]
);;

test_number 5 (
Trail_v.make_of_value_of_trail "description" tra_kin
=
[("kind", "description"); ("entity", "vector");
 ("category", "formula"); ("domain", "geometry")]
);;

test_number 6 (
Trail_v.value_of_key_off_trail "category" tra_kin 
=
"formula"
);;

test_number 7 (
Trail_v.trail_of_key_off_trail "category" tra_kin
=
tra_cat
);;

test_number 8 (
Trail_v.has_of_key_off_trail "category" tra_kin
);;

test_number 9 (
Trail_v.replace_of_value_of_key_off_trail "symbol" "category" tra_kin
=
[("kind", "content"); ("entity", "vector"); ("category", "symbol");
 ("domain", "geometry")]
);;

test_number 10 (
Trail_v.doublet_of_key_off_trail "category" tra_kin
=
("category", "formula")
);;

test_number 11 (
Trail_v.head_key_off_trail tra_kin
=
"kind"
);;

test_number 12 (
Trail_v.head_value_off_trail tra_kin
=
"content"
);;

test_number 13 (
Trail_v.has_of_head_key_off_trail "category" tra_kin
=
false
);;
