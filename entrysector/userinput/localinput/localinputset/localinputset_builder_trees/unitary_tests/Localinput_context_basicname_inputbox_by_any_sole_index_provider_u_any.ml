open Make_test_v;;

testing "Localinput_context_basicname_inputbox_by_any_sole_index_provider_v with
    Localinput_context_basicname_inputbox_by_any_sole_index_provider_u_any.ml";;

(* Deleting Registers *)


(* Tracing *)


(* toplevel 
   #use "Localinput_context_basicname_inputbox_by_any_sole_index_provider_u_any.ml";; 

*)


open Localinput_context_basicname_inputbox_by_any_sole_index_provider_v;;

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

let soi_ibo = Localinput_context_inputbox_sole_index_by_any_sole_index_provider_v.provide
      soi_any;;

test_number 3 (
(soi_ibo : int list ) =
[28; 1; 21; 1]
);;


let ord_ibo = List.hd soi_ibo;; 

test_number 4 (
nam_ibo = Basicname_inputbox_by_ordinal_provider_v.provide ord_ibo
);;

test_number 5 (
nam_ibo = provide soi_any
);;
