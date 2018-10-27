open Make_test_v;;

testing "Option_v";;

(* toplevel 
   #use "option_u_any.ml";; 
 *)

let list = [1.0; 2.0; 3.0; 4.0];;
let list_of_list = 
  [[11.0; 12.0; 13.0; 14.0]; 
   [21.0; 22.0; 23.0; 24.0]]
;;

let som = Some 10.0;;
let non = None;;

test_number 1 (
Option_v.is_none_of_option_type non
&&
not (Option_v.is_none_of_option_type som)
);;
(** {Option List} *)

let opt_l = [Some 11.0; None; Some 13.0; None];;
let som_l = [Some 11.0; Some 12.0; Some 13.0; Some 14.0];;

test_number 2 (
Option_v.entity_list_of_option_list opt_l
=
[11.; 13.]
&&
Option_v.entity_list_of_option_list som_l
= 
[11.; 12.; 13.; 14.]
);;

test_number 3 (
Option_v.none_list_of_option_list opt_l
= 
[None; None]
&&
Option_v.none_number_of_option_list opt_l
= 
2
&&
Option_v.none_number_of_option_list som_l
= 
0
);;

test_number 4 (
Option_v.has_none_element_of_option_list opt_l
&& 
not (Option_v.has_none_element_of_option_list som_l)
);;

