open Make_test_v;;

testing "Tuple_v with
   Tuple_u_any.ml";;

(* toplevel 
   #use "Tuple_u_any.ml";;
 
 *)

let tup = Tuple_v.tuple_of_singlet (Singlet_v.make "a") ;;

let tup = Tuple_v.tuple_of_tuple tup;;

test_number 1 (
tup
(* : string Tuple_t.tuple *)
= 
Tuple_t.Singlet (Singlet_t.Singlet "a")
);;

let sin = Tuple_v.singlet_off_tuple tup;;

test_number 2 (
sin
(* : string * string * string *)
= 
 Singlet_t.Singlet "a"
);;

let tup = Tuple_v.tuple_of_duo ("a", "b") ;;

test_number 3 (
tup
(* : string Tuple_t.tuple *)
= 
Tuple_t.Duo ("a", "b")
);;

let duo = Tuple_v.duo_of_tuple tup;;

test_number 4 (
duo
(* : string * string *)
= 
("a", "b")
);;

let tup = Tuple_v.tuple_of_trio ("a", "b", "c") ;;

test_number 5 (
tup
(* : string Tuple_t.tuple *)
= 
Tuple_t.Trio ("a", "b", "c")
);;

let tri = Tuple_v.trio_of_tuple tup;;

test_number 6 (
tri
(* : string * string * string *)
= 
("a", "b", "c")
);;

(* Tuple trio_duo *)
let tr1 = Trio_v.make "a" "b" "c";;
let tr2 = Trio_v.make "1" "2" "3";;

let td = Duo_v.make tr1 tr2;;
let ttd = Tuple_t.Trio_duo td;;

test_number 7 (
ttd
(* : string Tuple_t.tuple *)
  =
  Tuple_t.Trio_duo (("a", "b", "c"), ("1", "2", "3"))
);;

let td = Tuple_v.trio_duo_of_tuple ttd;; 

test_number 8 (
td 
(* : string Trio_t.trio Duo_t.duo *)
  = (("a", "b", "c"), ("1", "2", "3"))
);;

(* Tuple duo_trio *)

let du1 = Duo_v.make "a" "b";;
let du2 = Duo_v.make "1" "2";;
let du3 = Duo_v.make "x" "y";;

let dt = Trio_v.make du1 du2 du3;;
let tdt = Tuple_t.Duo_trio dt;;

let dt = Tuple_v.duo_trio_of_tuple tdt;; 
let tdt = Tuple_t.Duo_trio dt;;

test_number 9 (
 tdt 
(* : string Tuple_t.tuple *)
 =
  Tuple_t.Duo_trio (("a", "b"), ("1", "2"), ("x", "y"))
);;

test_number 10 (
 dt 
(* : string Duo_t.duo Trio_t.trio *)
  = 
(("a", "b"), ("1", "2"), ("x", "y"))
);;

let tup = Tuple_v.map (fun i -> i + 10) (Tuple_v.tuple_of_trio (1, 2, 3));;

test_number 11 (
tup 
(* : int Tuple_t.tuple *)
= 
Tuple_t.Trio (11, 12, 13)
);;

let uni = Tuple_v.iter (fun i -> Format.fprintf Format.std_formatter "%i@." i) (Tuple_v.tuple_of_trio (1, 2, 3));;
test_number 12 (
uni
=
()
);;

let str = Tuple_v.name (fun s -> s) (Tuple_v.tuple_of_trio ("a", "b", "c"));;

test_number 13 (
str
(* : string *)
=
"(a, b, c)"
);;


let tup = Tuple_v.tuple_of_list ["a"; "b"; "c"];;

test_number 14 (
tup
(* : string *)
=
Tuple_t.Trio ("a", "b", "c")
);;

let tup = Tuple_v.tuple_of_quatuor ("a", "b", "c", "d");;

test_number 15 (
(tup : string Tuple_t.tuple ) = 
Tuple_t.Quatuor ("a", "b", "c", "d")
);;
