open Make_test_v;;

testing "Either_or_v";;

(* toplevel 
   #use "either_or_u_any.ml";; 
 *)

let t_e = Either_or_v.make_either "a";;
let t_o = Either_or_v.make_or 2;;

type ('i, 'f, 's) common_type =
  | Integer of 'i
  | Float of 'f
  | String of 's
;;

test_number 1 (
Either_or_v.type_either_off_either_or (Failure "Not_either") t_e
=
"a"
);;

test_number 2 (
Either_or_v.type_or_off_either_or (Failure "Not_or") t_o
=
2
);;

test_number 3 (
Either_or_v.map (fun s -> s^"_") (fun i -> i+2) t_e
=
Either_or_t.Either "a_"
);;

test_number 4 (
Either_or_v.map (fun s -> s^"_") (fun i -> i+2) t_o
=
Either_or_t.Or 4
);;

test_number 5 (
Either_or_v.name (fun s -> s) (fun i -> Format.sprintf "%i" i) t_e
=
"E_a"
);;

test_number 6 (
Either_or_v.name (fun s -> s) (fun i -> Format.sprintf "%i" i) t_o
=
"O_2"
);;

test_number 7 (
Either_or_v.singlet_off_either_or (fun s -> String s) (fun i -> Integer i) t_e
=
Singlet_t.Singlet (String "a")
);;

test_number 8 (
Either_or_v.singlet_off_either_or (fun s -> String s) (fun i -> Integer i) t_o
=
Singlet_t.Singlet (Integer 2)
);;



