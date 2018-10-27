open Make_test_v;;

testing "Filecontentsymbol_v with
   Filecontentsymbol_u_any.ml";;

(* toplevel 
   #use "Filecontentsymbol_u_any.ml";;
 
*)

let str = "truc";;
let fil = Filecontentsymbol_v.extract_off_string str;;

test_number 1 (
Filecontentsymbol_v.extract_off_string "truc" 
(* : Noslash_string_p.noslash_string *) 
  = 
Noslash_string_p.noslash_string "truc"
);;

test_number 2 (
Filecontentsymbol_v.extract_off_string "/home/colonna/sources/ocaml_top/setup/frames/general/datastructutes/test"
(* : Noslash_string_p.noslash_string *) 
  = 
Noslash_string_p.noslash_string "test"
);;

test_number 3 (
Filecontentsymbol_v.extract_off_string "/home/colonna/sources/ocaml_top/setup/frames/general/datastructutes/test.dat"
(* : Noslash_string_p.noslash_string *) = 
Noslash_string_p.noslash_string "test"
);;

