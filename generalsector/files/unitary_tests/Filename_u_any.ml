open Make_test_v;;

testing "Filename_p";;

(* toplevel 
   #use "Filename_u_any.ml";; 

*)


let str = "/home/colonna/sources/ocaml_top/setup/frames/general/files/test.dat";;
let fln = Filename_p.filename str;;

test_number 1 (
fln (* : Filename_p.filename *)
=
Filename_p.filename
  "/home/colonna/sources/ocaml_top/setup/frames/general/files/test.dat"
);;

test_number 2 (
Filename_p.string_off_filename fln 
  =
"/home/colonna/sources/ocaml_top/setup/frames/general/files/test.dat"
);;

test_number 3 (
Filename_p.directorypath_off_filename fln
(* : Directorypath_t.directorypath *)
=
Directorypath_t.Absolute
 [Noslash_string_p.noslash_string "home";
  Noslash_string_p.noslash_string "colonna";
  Noslash_string_p.noslash_string "sources";
  Noslash_string_p.noslash_string "ocaml_top";
  Noslash_string_p.noslash_string "setup";
  Noslash_string_p.noslash_string "frames";
  Noslash_string_p.noslash_string "general";
  Noslash_string_p.noslash_string "files"]
);;

test_number 4 (
Filename_p.directorypath_off_filename (Filename_p.filename "truc")
(* : Directorypath_t.directorypath *)
= 
Directorypath_t.Relative []
);;

test_number 5 (
Filename_p.filecontentsymbol_off_filename fln
(* : Filecontentsymbol_t.filecontentsymbol *)
 =
Noslash_string_p.noslash_string "test"
);;

test_number 6 (
Filename_p.fileextension_off_filename fln
(* : Fileextension_t.fileextension *)
= 
Fileextension_t.Dat
);;

test_number 7 (
Filename_p.name fln
(* : string *)
= 
"test.dat"
);;

(* Exception 
let str = "<file-name>";;
Filename_p.filename str;;
*)
