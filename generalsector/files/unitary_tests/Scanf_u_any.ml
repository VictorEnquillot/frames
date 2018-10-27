open Make_test_v;;

(** {3 Tests for Scanf.} *)

testing "Scanf with 
   Scanf_u_any.ml";;

(* toplevel 
   #use "Scanf_u_any.ml";; 

 *)

(* Modules *)

test_number 1 (
Scanf.bscanf (Scanf.Scanning.from_string "abc") "%s" (fun s -> s)
=
"abc"
);;

test_number 2 (
Scanf.bscanf (Scanf.Scanning.from_string "abc") "%s%!" (fun s -> s)
= 
"abc"
);;

test_number 3 (
Scanf.bscanf (Scanf.Scanning.from_string "abc") "%s%n" (fun s b -> (s, b))
=
("abc", 3)
);;

test_number 4 (
Scanf.sscanf "abc" "%1s"  (fun s -> s)
=
"a"
);;

test_number 5 (
Scanf.bscanf (Scanf.Scanning.from_string "ab_c") "%2s_%1s" (fun s t -> [s; t])
=
["ab"; "c"]
);;

let ich = Scanf.Scanning.from_string "ab_c"
let str = Scanf.bscanf ich "%s%!" (fun s -> s);;
test_number 6 (
str
=
"ab_c"
);;

let ich = Scanf.Scanning.from_string "ab_c"
let cha = Scanf.bscanf ich "%0c" (fun c -> c);;
test_number 7 (
cha
=
'a'
);;

let cha = Scanf.bscanf ich "%0c" (fun c -> c);;
test_number 8 (
cha
=
'a'
);;

let cha = Scanf.bscanf ich "%1c" (fun c -> c);;
test_number 9 (
cha
=
'a'
);;






(* let s = try Scanf.bscanf (Scanf.Scanning.from_string "ab_c") "%2s%!" (fun s -> s ) *)
(* with Scanf.Scan_failure "scanf: bad input at char number 2: end of input not found" -> "ici" *)
(* ;; *)

(* test_number 7 ( *)
(* s  *)
(* = *)
(* "ici" *)
(* );;  *)
