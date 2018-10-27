(** {3 Token Pdb} *)

open Make_test_v;;

testing "Tokenpdb_v";;

(* toplevel 
   #use "tokenpdb_v.ml";; 
*)


test_number 1 (
Tokenpdb_v.read_integer_4 (Scanf.Scanning.from_string "12345")  
= 1234
);;

test_number 2 (
Tokenpdb_v.read_float_6 (Scanf.Scanning.from_string "12.45678")  
= 12.456
);;

test_number 3 (
Tokenpdb_v.read_float_8 (Scanf.Scanning.from_string "12.456")  
= 12.456
);;

test_number 4 (
Tokenpdb_v.read_string_6 (Scanf.Scanning.from_string "abcdefgh")  
= "abcdef"
);;

test_number 5 (
Tokenpdb_v.read_string_6 (Scanf.Scanning.from_string "abcd")  
= "abcd"
);;


