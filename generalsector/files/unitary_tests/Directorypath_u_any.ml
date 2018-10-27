open Make_test_v;;

testing "Directorypath_v with
   Directorypath_u_any.ml";;

(* toplevel 
   #use "Directorypath_u_any.ml";; 

*)

let str = "/home/colonna/sources/ocaml_top/setup/frames/general/datastructures/test.dat";;
let str_l = ["home"; "colonna"; "sources"; "ocaml_top"; "setup"; "setup"; "frames"; "general"; "datastructures"];;

let dip_a = Directorypath_v.make_absolute str_l;;
let dip_r = Directorypath_v.make_relative str_l;;

test_number 1 (
dip_a (* : Directorypath_t.directorypath *)
 =
Directorypath_t.Absolute
  [Noslash_string_p.noslash_string "home";
   Noslash_string_p.noslash_string "colonna";
   Noslash_string_p.noslash_string "sources";
   Noslash_string_p.noslash_string "ocaml_top";
   Noslash_string_p.noslash_string "setup";
   Noslash_string_p.noslash_string "setup";
   Noslash_string_p.noslash_string "frames";
   Noslash_string_p.noslash_string "general";
   Noslash_string_p.noslash_string "datastructures"]
);;

test_number 2 (
Directorypath_v.name dip_a
=
"/home/colonna/sources/ocaml_top/setup/setup/frames/general/datastructures/"
);;

test_number 3 (
Directorypath_v.directoryhead_off_directorypath dip_a
(* : Directorypath_t.directoryhead *)
= 
Directorypath_t.Slash
);;

test_number 4 (
Directorypath_v.make_directoryhead "./"
(* : Directorypath_t.directoryhead *)
= 
Directorypath_t.Dotslash
);;

test_number 5 (
Directorypath_v.extract_off_string "./truc/machin/chose.dat"
=
Directorypath_t.Relative
  [Noslash_string_p.noslash_string "truc";
   Noslash_string_p.noslash_string "machin"]
);;

test_number 6 (
Directorypath_v.extract_off_string "./truc/machin/"
=
Directorypath_t.Relative
  [Noslash_string_p.noslash_string "truc";
   Noslash_string_p.noslash_string "machin"]
);;

test_number 7 (
Directorypath_v.directoryhead_off_directorypath (Directorypath_v.extract_off_string "/truc/machin")
(* : Directorypath_t.directoryhead *)
  = 
Directorypath_t.Slash
);;

test_number 8 (
Directorypath_v.directoryname_list_off_directorypath dip_a
(* : Directorypath_t.directoryname_list *)
=
[
 Noslash_string_p.noslash_string "home"; 
 Noslash_string_p.noslash_string "colonna"; 
 Noslash_string_p.noslash_string "sources"; 
 Noslash_string_p.noslash_string "ocaml_top"; 
 Noslash_string_p.noslash_string "setup"; 
 Noslash_string_p.noslash_string "setup"; 
 Noslash_string_p.noslash_string "frames";
 Noslash_string_p.noslash_string "general"; 
 Noslash_string_p.noslash_string "datastructures"]
);;

test_number 9 (
Directorypath_v.string_list_off_directorypath dip_a
(* string list *)
=
["home"; "colonna"; "sources"; "ocaml_top"; "setup"; "setup"; "frames";
 "general"; "datastructures"]
);;

test_number 10 (
Directorypath_v.name dip_a
(* string *)
=
"/home/colonna/sources/ocaml_top/setup/setup/frames/general/datastructures/"
);;

test_number 11 (
Directorypath_v.compare dip_a dip_r
=
1
);;
