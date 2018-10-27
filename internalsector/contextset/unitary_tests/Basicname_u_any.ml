open Make_test_v;;

testing "Basicname_v
        Basicname_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Basicname_u_any.ml";;

*)

open Basicname_v;;

let nam_dbo = "segment_BC";;
let nam_ibo = "Print_length_segment_bc";;
let nam_var = "Seg_bc";;

let bna_dbo = make_of_what_of_string "databox" nam_dbo;;

test_number 1 (
(bna_dbo : Basicname_t.basicname ) =
  Basicname_t.Databox "segment_BC"
);;

let bna_ibo = basicname_inputbox_of_string nam_ibo;;

test_number 2 (
(bna_ibo : Basicname_t.basicname ) =
  Basicname_t.Inputbox "Print_length_segment_bc"
);;

let bna_var = make_of_what_of_string "variable" nam_var;;

test_number 3 (
(bna_var : Basicname_t.basicname ) =
  Basicname_t.Variable "Seg_bc"
);;

test_number 4 (
nam_ibo = string_off bna_ibo
);;

test_raises_some_exc (make_of_what_of_string "inputbox") nam_var;;
