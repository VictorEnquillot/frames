open Make_test_v;;

testing "Directoryname_v";;

(* toplevel 
   #use "Directoryname_u_any.ml";; 
*)


let str = "/home/colonna/sources/ocaml_top/setup/frames/general/datastructutes/test";;
let str_l = ["home"; "colonna"; "sources"; "ocaml_top"; "setup"; "setup"; "frames"; "general"; "datastructutes"];;

let din = Directoryname_v.make "home";;

test_number 1 (
din (* : Directoryname_t.directoryname *)
=
Noslash_string_p.noslash_string "home"
);;

test_number 2 (
Directoryname_v.name din
(* : Directoryname_t.directoryname *)
=
"home"
);;

test_number 3 (
Directoryname_v.make_directoryname_list str_l
(* : Directoryname_t.directoryname list *)
=
[Noslash_string_p.noslash_string "home";
 Noslash_string_p.noslash_string "colonna";
 Noslash_string_p.noslash_string "sources";
 Noslash_string_p.noslash_string "ocaml_top";
 Noslash_string_p.noslash_string "setup";
 Noslash_string_p.noslash_string "setup";
 Noslash_string_p.noslash_string "frames";
 Noslash_string_p.noslash_string "general";
 Noslash_string_p.noslash_string "datastructutes"]
);;

test_number 4 (
Directoryname_v.string_list_off_directoryname (Directoryname_v.make str)
=
["home"; "colonna"; "sources"; "ocaml_top"; "setup"; "frames"; "general";
 "datastructutes"; "test"]
);;
