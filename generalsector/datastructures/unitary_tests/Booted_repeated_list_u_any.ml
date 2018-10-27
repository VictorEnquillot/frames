open Make_test_v;;

testing "Booted_repeated_list_v with
   booted_repeated_list_u_any.ml";;

(* toplevel 
   #use "booted_repeated_list_u_any.ml";; 

*)


let bot = "Boot";;
let ext = 3;;
let rpl = Repeated_list_v.make_of_element_of_count ext Index_p.two;; 
let b_0 = Booted_repeated_list_v.make_of_boot bot;;

let brl = Booted_repeated_list_v.make_of_extension_of_count_of_boot ext Index_p.three bot;;
let brk = Booted_repeated_list_v.make_of_extension_of_count_of_boot 2 Index_p.three bot;;

test_number 1 (
Booted_repeated_list_v.make_of_extension_of_count_of_boot ext Index_p.three bot 
(* : (int list, string) Doublet_t.doublet *)
  = 
([3; 3; 3], "Boot")
);;

test_number 2 (
Booted_repeated_list_v.make_of_boot bot (* : ('a list, string) Doublet_t.doublet *)
= 
([], "Boot")
);;

test_number 3 (
Booted_repeated_list_v.make_of_extension_of_boot ext bot
=
([3], "Boot")
);;

test_number 4 (
Booted_repeated_list_v.make_of_repeated_list_of_boot [ext] bot
=
([3], "Boot")
);;

test_number 5 (
Booted_repeated_list_v.make_of_repeated_list_of_boot [ext; ext] bot
(* : (int, string) Booted_repeated_list_t.booted_repeated_list *)
= 
([3; 3], "Boot")
);;

test_number 6 (
Booted_repeated_list_v.make_of_repeated_list [ext; ext]
(* : (int, int) Booted_repeated_list_t.booted_repeated_list *)
  = 
([3], 3)
);;

test_number 7 (
Booted_repeated_list_v.repeated_list_part_off_booted_repeated_list brl
(* : int Repeated_list_t.repeated_list *)
=
[3; 3; 3]
);;

test_number 8 (
Booted_repeated_list_v.boot_part_off_booted_repeated_list brl
=
"Boot"
);;

test_number 9 (
Booted_repeated_list_v.extension_off_booted_repeated_list brl
=
ext
);;

test_number 10 (
Booted_repeated_list_v.list_off_booted_repeated_list (fun i -> Format.sprintf "%i" i) (fun s -> s) brl
(* : string list *)
= 
["3"; "3"; "3"; "Boot"]
);;

test_number 11 (
Booted_repeated_list_v.count brl 
(* : int *)
  =
Index_p.three
);;

test_number 12 (
Booted_repeated_list_v.is_embedded_extension_empty_or_equal_of_entension_of_booted_repeated_list ext b_0
=
true
);;

test_number 13 (
Booted_repeated_list_v.is_embedded_extension_empty_or_equal_of_entension_of_booted_repeated_list ext brl
=
true
);;

test_number 14 (
Booted_repeated_list_v.is_embedded_extension_empty_or_equal_of_entension_of_booted_repeated_list ext brk
=
false
);;

test_number 15 (
Booted_repeated_list_v.left_extends_by_one_of_extension_of_booted_repeated_list ext b_0
=
([3], "Boot")
);;

test_number 16 (
Booted_repeated_list_v.left_extends_by_one_of_extension_of_booted_repeated_list ext brl
=
([3; 3; 3; 3], "Boot")
);;

test_number 17 (
Booted_repeated_list_v.prepend_of_repeated_list_of_booted_repeated_list rpl brl 
(* : (int, string) Booted_repeated_list_t.booted_repeated_list *)
=
([3; 3; 3; 3; 3], "Boot")
);;

test_number 18 (
Booted_repeated_list_v.map_repeated_list_part (fun i -> i + 10) brl
(* : (int, string) Booted_repeated_list_t.booted_repeated_list *)
  =
([13; 13; 13], "Boot")
);;

test_number 19 (
Booted_repeated_list_v.map_boot_part (fun s -> s^"_") brl
(* : (int, string) Booted_repeated_list_t.booted_repeated_list *)
  =
([3; 3; 3], "Boot_")
);;

test_number 20 (
Booted_repeated_list_v.map (fun i -> i + 10) (fun s -> s^"_") brl
(* : (int, string) Booted_repeated_list_t.booted_repeated_list *)
  =
([13; 13; 13], "Boot_")
);;

test_number 21 (
Booted_repeated_list_v.name (fun i -> Format.sprintf "%i" i) (fun s -> s) brl
=
"3r3Boot"
);;

