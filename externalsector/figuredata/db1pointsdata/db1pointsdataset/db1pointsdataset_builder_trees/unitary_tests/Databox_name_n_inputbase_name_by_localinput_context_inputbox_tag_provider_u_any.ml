open Make_test_v;;

testing "Inputbox_name_n_inputbase_name_by_localinput_context_inputbox_tag_provider_v with
    Inputbox_name_n_inputbase_name_by_localinput_context_inputbox_tag_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Inputbox_name_n_inputbase_name_by_localinput_context_inputbox_tag_provider_u_any.ml";; 

*)

open Inputbox_name_n_inputbase_name_by_localinput_context_inputbox_tag_provider_v;;
  
let (nam_dba, nam_dom, nam_sec) = 
  Localinput_context_name_trio_by_unit_provider_v.provide () 
;;

test_number 1 (
((nam_dba, nam_dom, nam_sec) : string Trio_t.trio ) = 
("db1points", "figure", "external") 
);;

let nam_dbo = "Point_a";;
let tag_dbo = Localinput_context_inputbox_tag_by_inputbox_name_provider_v.provide nam_dbo;;

test_number 2 (
(tag_dbo :
  Localinput_context_inputbox_symbol_t.localinput_context_inputbox_symbol
  Tag_t.tag ) =
  (Localinput_context_inputbox_symbol_t.Localinput_context_inputbox_constructor
    "Point_a",
   [5; 1; 7; 2])
);;

test_number 3 (
(nam_dbo, nam_dba) = provide tag_dbo
);;
