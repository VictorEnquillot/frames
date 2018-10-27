open Make_test_v;;

testing "Register_v with
    Register_u_any.ml";; 

(* toplevel 
   #use "Register_u_any.ml";; 
 
*)

let nam_cod = "Register_u_any.ml";; 

let reg_str : (string, string) Hashtbl.t = Hashtbl.create 137;;
let reg_1 : (string, int list) Hashtbl.t = Hashtbl.create 137;;
let reg_2 : (string, int list) Register_t.register = Hashtbl.create 137;;
let reg_3 : (string, int list) Register_t.register = Register_v.make 137;;

let reg_str : (string, string) Register_t.register = Register_v.make 137;;
let reg : (string, int list) Register_t.register = Register_v.make 137;;

Register_v.store reg "a" [1; 2];;
Register_v.store reg "b" [3; 4];;
Register_v.store reg "c" [5; 6];;
Register_v.store reg "d" [7; 8];;
Register_v.store reg "e" [3; 4];;

let nam_mod = "Sto_3g_library_v";;

test_number 1 (
Register_v.is_stored reg "c"
);;

test_number 2 (
Register_v.is_value_stored reg [5; 6]
);;

test_number 3 (
Register_v.retrieve reg "c"
(* : int list *)
= 
[5; 6]
);;

test_number 4 (
Register_v.entry_list reg
(* : (string * int list) list *)
  =
[("e", [3; 4]); ("c", [5; 6]); ("b", [3; 4]); ("d", [7; 8]); ("a", [1; 2])]
);;

test_number 5 (
Register_v.key_list reg
(* : string list *)
  =
["e"; "c"; "b"; "d"; "a"]
);;

let dol = Register_v.value_list reg;;
test_number 6 (
dol
(* : string list *)
  =
[[3; 4]; [5; 6]; [3; 4]; [7; 8]; [1; 2]]
);;

let i_l = Register_v.value_list_of_value_predicate_of_register (fun v -> List.hd v = 5) reg;;
test_number 7 (
i_l
(* : int list list *)
= 
[[5; 6]]
);;

test_number 8 (
Register_v.key_list_of_value_predicate_of_register (fun v -> List.hd v = 5) reg
=
["c"]
);;

test_number 9 (
Register_v.entry_list_of_value_predicate_of_register (fun v -> List.hd v = 5) reg
=
[("c", [5; 6])]
);;

test_number 10 (
Register_v.entry_list_of_value reg [3; 4]
(* : (string * int list) list *)
= 
[("e", [3; 4]); ("b", [3; 4])]
);;

test_number 11 (
Register_v.key_list_of_value reg [3; 4]
(* : (string * int list) list *)
= 
[ "e";"b"]
);;

let str = Register_v.string_of_key_list_of_value reg [3; 4] (fun s->s) "; ";;

test_number 12 (
(str : string ) =
" [\n   e; b\n  ]"
);;

let str = Register_v.string_of_register (fun s->s) (List_v.name_with_separator (Format.sprintf "%i") "; ") "\n" reg;;

test_number 13 (
(str : string ) = 
" [\n   (e,  [\n   3; 4\n  ])\n(c,  [\n   5; 6\n  ])\n(b,  [\n   3; 4\n  ])\n(d,  [\n   7; 8\n  ])\n(a,  [\n   1; 2\n  ])\n  ]"
);;
(***
test_number 14 (
Register_v.clear reg nam_cod "reg"; Register_v.entry_list reg 
(* : (string * int list) list *)
= 
[]
);;
***)
