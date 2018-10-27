open Make_test_v;;

testing "Extended_v";;

(* toplevel 
   #use "extended_u_any.ml";; 
 *)


let uch = "a";;
let ext_0u = Extended_v.make_basic uch;;
let ext_1u = Extended_v.make_extended ext_0u;;
let ext_2u = Extended_v.extend ext_1u;;

test_number 1 (
ext_0u
=
Extended_t.Basic "a"
);;

test_number 2 (
ext_1u
=
Extended_t.Extended 
  (Extended_t.Basic "a")
);;

test_number 3 (
ext_2u
  =
Extended_t.Extended 
  (Extended_t.Extended 
     (Extended_t.Basic "a"))
);;

test_number 4 (
Extended_v.count ext_2u
=
2
);;

test_number 5 (
Extended_v.basic_off_extended ext_2u
=
"a"
);;

test_number 6 (
Extended_v.map (fun s -> 10.) ext_2u
=
Extended_t.Extended (Extended_t.Extended (Extended_t.Basic 10.))
);;

test_number 7 (
Extended_v.name (fun s -> s) ext_2u
=
"x2a"
);;
