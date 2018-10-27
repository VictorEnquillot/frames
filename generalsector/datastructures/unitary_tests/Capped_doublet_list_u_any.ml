open Make_test_v;;

testing "Capped_doublet_list_v";;

(* toplevel 
   #use "capped_doublet_list_u_any.ml";; 
 *)


let dbl = [("a", 1); ("b", 2)];;
let cdl = Capped_doublet_list_v.make true dbl;;

test_number 1 (
dbl (* : (string * int) list *)
= 
[("a", 1); ("b", 2)]
);;

test_number 2 (
 cdl (* : (bool, string, int) Capped_doublet_list_t.capped_doublet_list *)
=
(true, [("a", 1); ("b", 2)])
);;

test_number 3 (
Capped_doublet_list_v.cap_part_off_capped_doublet_list cdl
=
true
);;

test_number 4 (
Capped_doublet_list_v.doublet_listpart_off_capped_doublet_list cdl
=
[("a", 1); ("b", 2)]
);;

test_number 5 (
Capped_doublet_list_v.left_list_off_capped_doublet_list cdl
=
["a"; "b"]
);;

test_number 6 (
Capped_doublet_list_v.right_list_off_capped_doublet_list cdl
=
[1; 2]
);;

test_number 7 (
Capped_doublet_list_v.map (fun c -> not c) (fun s -> s^"_") (fun i -> i * 10) cdl
(* : string, string, int) Capped_doublet_list_t.capped_doublet_list *)
=
(false, [("a_", 10); ("b_", 20)])
);;

test_number 8 (
Capped_doublet_list_v.doublet_list_off_capped_doublet_list 
(fun c -> Format.sprintf "%b" c) 0 (fun s -> s^"_") (fun i -> i * 10) cdl
=
[("true", 0);("a_", 10); ("b_", 20)]
);;
