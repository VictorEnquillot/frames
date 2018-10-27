open Make_test_v;;

testing "Fileextension_v";;

(* toplevel 
   #use "Fileextension_u_any.ml";; 
*)


let str = "/home/colonna/sources/ocaml_top/setup/frames/general/datastructutes/test";;
let str_dat = "/home/colonna/sources/ocaml_top/setup/frames/general/datastructutes/test.dat";;

test_number 1 (
Fileextension_v.extract_off_string "./truc.dat"
(* : Fileextension_t.fileextension *) 
= 
Fileextension_t.Dat
);;

test_number 2 (
Fileextension_v.extract_off_string "/test"
(* : Fileextension_t.fileextension *)
 = 
 Fileextension_t.Empty
);;

