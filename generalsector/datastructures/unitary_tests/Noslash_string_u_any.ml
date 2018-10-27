open Make_test_v;;

testing "Noslash_string_p";;

(* toplevel 
   #use "noslash_string_u_any.ml";; 
*)


let nss = Noslash_string_p.noslash_string "home_10:5.txt";; 

test_number 1 (
nss (* : Noslash_string_p.noslash_string *)
=
  Noslash_string_p.noslash_string "home_10:5.txt"
);;

test_raises_some_exc Noslash_string_p.fails_if_has_slash_in_string "ho/me"
