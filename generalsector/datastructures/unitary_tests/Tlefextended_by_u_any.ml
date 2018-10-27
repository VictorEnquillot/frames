open Make_test_v;;

testing "Leftextended_by_v";;

(* toplevel 
   #use "tlefextended_by_u_any.ml";; 
 *)


let bas = "a";;
let ext = 3;;

let lxb = Lxb_v.make_of_extension_of_int_of_basic ext 3 bas;;

let lxb_bas = Lxb_v.make_basic bas;;
let lxb_0u = Lxb_v.make [] bas;;
let lxb_1u = Lxb_v.make [ext] bas;;
let lxb_2u = Lxb_v.left_extend_list_by_one lxb_1u;;
let lxb_3u = Lxb_v.left_extend_list_by_one lxb_2u;;

let lxb_5f_3u = Lxb_v.make_of_extension_of_int_of_basic 5. 2 lxb ;;

test_number 1 (
lxb (* : (int list, string) Doublet_t.doublet *)
  = 
([3; 3; 3], "a")
);;

test_number 2 (
lxb_bas (* : ('a list, string) Doublet_t.doublet *)
= 
([], "a")
);;

test_number 3 (
lxb_0u 
=
lxb_bas
);;

test_number 4 (
lxb_1u (* : (int list, string) Doublet_t.doublet *)
= 
([3], "a")
);;

test_number 5 (
lxb_2u (* : (int list, string) Doublet_t.doublet *)
 = 
([3; 3], "a")
);;

test_number 6 (
lxb_3u (* : (int list, string) Doublet_t.doublet *) 
=
([3; 3; 3], "a")
);;

test_number 7 (
Lxb_v.count lxb_2u
=
2
);;

test_number 8 (
Lxb_v.basic_part_off_leftextended_by lxb_2u
=
"a"
);;

test_number 9 (
Lxb_v.extension_off_leftextended_by lxb
=
3
);;

test_number 10 (
Lxb_v.map (fun i -> i + 10) (fun s -> s^"_") lxb
=
([13; 13; 13], "a_")
);;

test_number 11 (
Lxb_v.name (fun i -> Format.sprintf "%i" i) (fun s -> s) lxb
=
"3r3a"
);;

test_number 12 (
lxb_5f_3u (* : (float list, (int list, string) Doublet_t.doublet) Doublet_t.doublet *)
=
  ([5.; 5.], ([3; 3; 3], "a"))
);;

test_number 13 (
Lxb_v.flatten ([3; 3], ( [3; 3; 3], "a") )
=
 ([3; 3; 3; 3; 3], "a")
);;
