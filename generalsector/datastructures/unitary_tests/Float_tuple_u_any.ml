open Make_test_v;;

testing "Float_tuple_v with
   Float_tuple_u_any.ml";;

(* toplevel 
   #use "Float_tuple_u_any.ml";;
 
 *)

open Float_tuple_v;;

let tup_s = Tuple_v.tuple_of_singlet (Singlet_v.make 1.1) ;;

let tup = Tuple_v.tuple_of_tuple tup_s;;

test_number 1 (
(tup : float Tuple_t.tuple ) = 
Tuple_t.Singlet (Singlet_t.Singlet 1.1)
);;

let sin = Tuple_v.singlet_off_tuple tup;;

test_number 2 (
(sin : float Singlet_t.singlet )= 
 Singlet_t.Singlet 1.1
);;

let tup_d = Tuple_v.tuple_of_duo (1.1, 2.2) ;;

test_number 3 (
(tup_d : float Tuple_t.tuple )=
Tuple_t.Duo (1.1, 2.2)
);;

let duo = Tuple_v.duo_of_tuple tup_d;;

test_number 4 (
(duo : float Duo_t.duo ) =
(1.1, 2.2)
);;

let tup_t = Tuple_v.tuple_of_trio (1.0, 2.0, 3.0) ;;

test_number 5 (
(tup_t : float Tuple_t.tuple ) =
Tuple_t.Trio (1.0, 2.0, 3.0)
);;

let tri = Tuple_v.trio_of_tuple tup_t;;

test_number 6 (
(tri : float Trio_t.trio ) = 
(1.0, 2.0, 3.0)
);;

(* Tuple trio_duo *)
let tr1 = Trio_v.make 1.1 2.2 3.3;;
let tr2 = Trio_v.make 1.4 2.5 3.6;;

let td = Duo_v.make tr1 tr2;;

test_number 7 (
(td : float Trio_t.trio Duo_t.duo ) = 
((1.1, 2.2, 3.3), (1.4, 2.5, 3.6))
);;

let ttd = Tuple_t.Trio_duo td;;

test_number 8 (
(ttd : float Tuple_t.tuple ) =
 Tuple_t.Trio_duo ((1.1, 2.2, 3.3), (1.4, 2.5, 3.6))
);;

test_number 9 (
td = Tuple_v.trio_duo_of_tuple ttd
);;

(* Tuple duo_trio *)

let du1 = Duo_v.make 1.1 1.2;;
let du2 = Duo_v.make 2.1 2.2;;
let du3 = Duo_v.make 3.1 3.2;;

let dt = Trio_v.make du1 du2 du3;;

test_number 10 (
(dt : float Duo_t.duo Trio_t.trio ) = 
((1.1, 1.2), (2.1, 2.2), (3.1, 3.2))
);;

let tdt = Tuple_t.Duo_trio dt;;

test_number 11 (
(tdt : float Tuple_t.tuple ) =
  Tuple_t.Duo_trio ((1.1, 1.2), (2.1, 2.2), (3.1, 3.2))
);;

test_number 12 (
dt = Tuple_v.duo_trio_of_tuple tdt
);; 

let boo = float_tuple_are_equal_at_epsilon_float tup_t tup_t;;

test_number 13 (
boo
);;

let sum = sigma_of_float_tuple tup_t;;

test_number 14 (
(sum : float ) = 
6.0
);;

let no2 = norm2_of_float_tuple tup_t;;

test_number 15 (
(no2 : float ) = 
14.
);;

let nor = norm_of_float_tuple tup_t;;
let sqr_14 = sqrt 14.;;

test_number 16 (
(nor : float ) = 
sqr_14
);;

let add_t = addition_of_float_tuple_of_float_tuple tup_t tup_t;;

test_number 17 (
(add_t : float Tuple_t.tuple ) = 
Tuple_t.Trio (2., 4., 6.)
);;

let dif_t = difference_of_float_tuple_of_float_tuple tup_t tup_t;;

test_number 18 (
(dif_t : float Tuple_t.tuple ) = 
Tuple_t.Trio (0., 0., 0.)
);;

let pro_t = product_of_float_tuple_of_float_tuple tup_t tup_t;;

test_number 19 (
( pro_t : float Tuple_t.tuple ) = 
Tuple_t.Trio (1., 4., 9.)
);;

let div_t = division_of_float_tuple_of_float_tuple tup_t tup_t;;  

test_number 20 (
(div_t : float Tuple_t.tuple ) = 
Tuple_t.Trio (1., 1., 1.)
);;

let nam = name tup_t;;

test_number 21 (
(nam : string ) = 
"(1.000000, 2.000000, 3.000000)"
);;
