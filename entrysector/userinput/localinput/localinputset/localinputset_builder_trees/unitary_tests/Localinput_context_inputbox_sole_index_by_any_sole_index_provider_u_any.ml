open Make_test_v;;

testing "Localinput_context_inputbox_sole_index_by_any_sole_index_provider_v with
    Localinput_context_inputbox_sole_index_by_any_sole_index_provider_u_any.ml";;

(* Deleting Registers *)


(* Tracing *)


(* toplevel 
   #use "Localinput_context_inputbox_sole_index_by_any_sole_index_provider_u_any.ml";; 

*)


open Localinput_context_inputbox_sole_index_by_any_sole_index_provider_v;;

let nam_ibo = "Point_a_print";;

let tag_loc_t = Localinput_tag_tree_by_basicname_inputbox_provider_v.provide nam_ibo;;
let tag_loc_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide nam_ibo;;
let soi_loc_l = Doublet_list_v.right_list_off_doublet_list tag_loc_l;;

test_number 1 (
(soi_loc_l : Sole_index_t.sole_index list ) =
  [[1];
   [21; 1];
   [1; 21; 1];
   [28; 1; 21; 1];
   [1; 28; 1; 21; 1];
   [1; 1; 28; 1; 21; 1];
   [1; 1; 1; 28; 1; 21; 1];
   [1; 1; 1; 1; 28; 1; 21; 1];
   [2; 1; 1; 28; 1; 21; 1];
   [1; 2; 1; 1; 28; 1; 21; 1];
   [3; 1; 1; 28; 1; 21; 1];
   [1; 3; 1; 1; 28; 1; 21; 1];
   [2; 1; 28; 1; 21; 1];
   [1; 2; 1; 28; 1; 21; 1];
   [1; 1; 2; 1; 28; 1; 21; 1];
   [2; 2; 1; 28; 1; 21; 1];
   [1; 2; 2; 1; 28; 1; 21; 1];
   [2; 28; 1; 21; 1];
   [1; 2; 28; 1; 21; 1];
   [1; 1; 2; 28; 1; 21; 1];
   [2; 1; 2; 28; 1; 21; 1];
   [3; 1; 2; 28; 1; 21; 1];
   [1; 3; 1; 2; 28; 1; 21; 1];
   [2; 3; 1; 2; 28; 1; 21; 1];
   [3; 3; 1; 2; 28; 1; 21; 1]]
);;

let soi_any = List.nth soi_loc_l 7;;

test_number 2 (
soi_any = [1; 1; 1; 1; 28; 1; 21; 1]
);;

let nam_con_t = Localinput_context_name_trio_by_unit_provider_v.provide () ;;

test_number 3 (
(nam_con_t : string Trio_t.trio ) = 
("local", "user", "entry") 
);;

let soi_con = Context_sole_index_by_context_name_trio_provider_v.provide nam_con_t ;;

test_number 4 (
(soi_con : int list) = 
[1; 21; 1]
);;

let soi_qua = List_v.last_elements_of_int_of_list 4 soi_any;;

test_number 5 (
(soi_qua : int list ) = 
[28; 1; 21; 1]
);;

let boo = List_v.are_included_of_small_list_of_big_list soi_con soi_qua;; 

test_number 6 (
boo
);;

test_number 7 (
soi_qua = provide soi_any
);;
