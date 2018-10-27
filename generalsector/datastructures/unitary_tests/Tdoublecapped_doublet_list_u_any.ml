open Make_test_v;;

testing "Doubletcapped_doublet_list_v";;

(* toplevel 
   #use "tdoublecapped_doublet_list_u_any.ml";; 
 *)


let dbl = [("a", 1); ("b", 2)];;
let ddl = Doubletcapped_doublet_list_v.make (true, 0) dbl;;

test_number 1 (
dbl (* : (string * int) list *)
= 
[("a", 1); ("b", 2)]
);;

test_number 2 (
 ddl (* : (bool, string, int) Capped_doublet_list_t.capped_doublet_list *)
=
((true,0), [("a", 1); ("b", 2)])
);;

test_number 3 (
Doubletcapped_doublet_list_v.doublet_cappart_off_doubletcapped_doublet_list ddl
=
(true, 0)
);;

test_number 4 (
Doubletcapped_doublet_list_v.left_doublet_cappart_off_doubletcapped_doublet_list ddl
=
true
);;

test_number 5 (
Doubletcapped_doublet_list_v.right_doublet_cappart_off_doubletcapped_doublet_list ddl
=
0
);;

test_number 6 (
Doubletcapped_doublet_list_v.doublet_listpart_off_doubletcapped_doublet_list ddl
=
[("a", 1); ("b", 2)]
);;

test_number 7 (
Doubletcapped_doublet_list_v.left_list_off_doubletcapped_doublet_list ddl
=
["a"; "b"]
);;

test_number 8 (
Doubletcapped_doublet_list_v.right_list_off_doubletcapped_doublet_list ddl
=
[1; 2]
);;

test_number 9 (
Doubletcapped_doublet_list_v.map (fun c -> not c) (fun s -> s^"_") (fun i -> i * 10) ddl
(* : string, string, int) Capped_doublet_list_t.capped_doublet_list *)
=
((false, 0), [("a_", 10); ("b_", 20)])
);;

test_number 10 (
Doubletcapped_doublet_list_v.doublet_list_off_doubletcapped_doublet_list 
(fun c -> Format.sprintf "%b" c) (fun s -> s^"_") (fun i -> i * 10) ddl
=
[("true", 0);("a_", 10); ("b_", 20)]
);;
