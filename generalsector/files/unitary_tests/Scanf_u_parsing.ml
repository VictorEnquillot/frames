open Make_test_v;;

(** {3 Tests for Scanf.} *)

testing "Scanf with 
   Scanf_u_parsing.ml";;

(* toplevel 
   #use "Scanf_u_parsing.ml";; 

 *)

let ich = Scanf.Scanning.from_string "abc";;
let cha = Scanf.bscanf ich "%0c" (fun c -> c);;
let cha = Scanf.bscanf ich "%0c" (fun c -> c);;
let cha = Scanf.bscanf ich "%1c" (fun c -> c);;

test_number 1 (
cha
=
'a'
);;
