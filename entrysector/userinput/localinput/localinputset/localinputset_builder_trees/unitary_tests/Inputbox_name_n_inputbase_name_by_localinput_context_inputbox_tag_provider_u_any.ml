open Make_test_v;;

testing "Basicname_inputbox_n_inputbase_name_by_localinput_context_inputbox_tag_provider_v with
    Basicname_inputbox_n_inputbase_name_by_localinput_context_inputbox_tag_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Basicname_inputbox_n_inputbase_name_by_localinput_context_inputbox_tag_provider_u_any.ml";; 

*)

open Basicname_inputbox_n_inputbase_name_by_localinput_context_inputbox_tag_provider_v;;
  
let (nam_iba, nam_dom, nam_sec) = 
  Localinput_context_name_trio_by_unit_provider_v.provide () 
;;

test_number 1 (
((nam_iba, nam_dom, nam_sec) : string Trio_t.trio ) = 
("local", "user", "entry") 
);;

let nam_ibo = "Point_a_print";;
let tag_ibo = Localinput_context_inputbox_tag_by_basicname_inputbox_provider_v.provide nam_ibo;;

test_number 2 (
(tag_ibo :
  Localinput_context_inputbox_symbol_t.localinput_context_inputbox_symbol
  Tag_t.tag ) =
  (Localinput_context_inputbox_symbol_t.Localinput_context_inputbox_constructor
    "Point_a_print",
   [28; 1; 21; 1])
);;

test_number 3 (
(nam_ibo, nam_iba) = provide tag_ibo
);;
