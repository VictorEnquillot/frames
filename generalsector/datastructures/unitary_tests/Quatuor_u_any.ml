open Make_test_v;;

testing "Quatuor_v";;

(* toplevel 
   #use "Quatuor_u_any.ml";; 
 
*)


let qua = ("a", "b", "c", "d");;

test_number 1 (
Quatuor_v.map (fun s -> s^"_") qua (* : squang Quatuor_t.quatuor *)
=
("a_", "b_", "c_", "d_")
);;

let lef_tri = ("a", "b", "c");;

test_number 2 (
qua = Quatuor_v.make_of_trio_of_element lef_tri "d"
);;

let rig_tri = ("b", "c", "d");;

test_number 3 (
qua = Quatuor_v.make_of_element_of_trio "a" rig_tri
);;

test_number 4 (
Quatuor_v.left_off_quatuor qua
=
"a"
);;

test_number 5 (
Quatuor_v.middleleft_off_quatuor qua
=
"b"
);;

test_number 6 (
Quatuor_v.middleright_off_quatuor qua
=
"c"
);;

test_number 7 (
Quatuor_v.right_off_quatuor qua
=
"d"
);;

test_number 8 (
Quatuor_v.left_off_quatuor qua
=
Quatuor_v.first_off_quatuor qua
);;

test_number 9 (
Quatuor_v.middleleft_off_quatuor qua
=
Quatuor_v.second_off_quatuor qua
);;

test_number 10 (
Quatuor_v.middleright_off_quatuor qua
=
Quatuor_v.third_off_quatuor qua
);;

test_number 11 (
Quatuor_v.right_off_quatuor qua
=
Quatuor_v.fourth_off_quatuor qua
);;

test_number 12 (
Quatuor_v.right_off_quatuor qua
=
Quatuor_v.last_off_quatuor qua
);;

test_number 13 (
Quatuor_v.name (fun s -> s) qua
=
"(a,b,c,d)"
);;

let lis = Quatuor_v.list_of_quatuor qua;;

test_number 14 (
(lis : string list ) = 
["a"; "b"; "c"; "d"]
);;

let qua = Quatuor_v.quatuor_of_list lis;;

test_number 15 (
(qua : string Quatuor_t.quatuor ) = 
("a", "b", "c", "d")
);;

let qub = Quatuor_v.map (fun s-> s^"_a") qua;;

test_number 16 (
(qub : string Quatuor_t.quatuor ) = 
("a_a", "b_a", "c_a", "d_a")
);;

let quc = Quatuor_v.map2 (fun s u -> s^"_"^u) qua qua ;;

test_number 17 (
(quc : string Quatuor_t.quatuor ) = 
("a_a", "b_b", "c_c", "d_d")
);;
