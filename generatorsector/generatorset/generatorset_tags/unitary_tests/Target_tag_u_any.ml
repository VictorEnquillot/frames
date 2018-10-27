open Make_test_v;;

testing "Target_tag_u_any.ml";;

(* toplevel
   #use "Target_tag_u_any.ml";;
*)


let tag_tar = Target_tag_v.make_of_string "current";;
let sid_tar = Tag_v.sole_index_off_tag tag_tar;;
let gss_tar = Generatorset_symbol_by_sole_index_provider_v.provide sid_tar;;

test_number 1 (
sid_tar
(* : Sole_index_t.sole_index *)
= 
[1]
);;

test_number 2 (
tag_tar 
(* : Target_tag_t.target_tag *)
=
(Target_tag_t.Tas_t.Target_symbol "current", [1])
);;

test_number 3 (
gss_tar
(* : Generatorset_symbol_t.generatorset_symbol *)
=
Generatorset_symbol_t.Target_symbol (Target_symbol_t.Target_symbol "current")
);;

test_number 4 (
Target_tag_v.make ()
=
tag_tar
);;
