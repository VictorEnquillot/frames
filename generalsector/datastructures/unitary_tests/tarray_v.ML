open Gentest_v;;

testing "Array_v";;

(* toplevel 
   #use "tarray_v.ml";; 
 *)

module Arr_v = Array_v
module Idx_p = Index_p
module Ord_p = Ordinal_p

let array = [|1.0; 2.0; 3.0; 4.0|];;
let array_of_array = 
 [|[|11.0; 12.0; 13.0; 14.0|]; [|21.0; 22.0; 23.0; 24.0|]|];;

testi 0 (
 Arr_v.flatten_array_array array_of_array
= 
[|11.; 12.; 13.; 14.; 21.; 22.; 23.; 24.|]
);;

testi 1 (
Arr_v.is_zeroed_array_int [|1; 0|]
=
false
);;

testi 2 (
Arr_v.is_zeroed_array_int [|0; 0|]
=
true
);;

testi 3 (
Arr_v.apply_on_array_tail (fun s -> (s +. 0.5)) array
  =
[|1.0; 2.0; 3.0; 4.5|];
);;

testi 4 (
Arr_v.drop_last array
=
[|1.; 2.; 3.|]
);;

testi 5 (
Arr_v.minimum compare array
=
1.
);;

let a_a = [|1; 2; 3; 4|];;
let b_a = [|-1; -2; -3; -4|];;

testi 6 (
Arr_v.map2 (fun x y -> x+y) a_a b_a
=
[|0; 0; 0; 0|]
);;

testi 7 (
Arr_v.tail_array_of_array a_a
=
[|2; 3; 4|]
);;

let ord_a = [| Ord_p.two; Ord_p.four|];;
 
testi 8 (
Arr_v.sigma_of_array_ordinal ord_a
=
Ord_p.six
);;

testi 9 (
Arr_v.name (fun i -> Format.sprintf "%i" i) [|1; 2; 3; 4|]
=
"1234"
);;

testi 10 (
Arr_v.name_with_separator (fun i -> Format.sprintf "%i" i) "_" [|1; 2; 3; 4|]
=
"1_2_3_4"
);;

testi 11 (
Arr_v.sigma_of_array_index [|Idx_p.three; Idx_p.one|]
=
Idx_p.four
);;
