open Make_test_v;;

testing "Localinput_as_context_databox_tag_by_basicname_inputbox_provider_v with
    Localinput_as_context_databox_tag_by_basicname_inputbox_provider_u_any.ml";;

(* Deleting Registers *)



(* Tracing *)


(* toplevel 
   #use "Localinput_as_context_databox_tag_by_basicname_inputbox_provider_u_any.ml";; 

*)


open Localinput_as_context_databox_tag_by_basicname_inputbox_provider_v;;

let (nam_iba, nam_dom, nam_sec) = 
  Localinput_context_name_trio_by_unit_provider_v.provide () 
;;

test_number 1 (
((nam_iba, nam_dom, nam_sec) : string Trio_t.trio ) = 
("local", "user", "entry") 
);;

let nam_ibo = "Point_a_print";;

let soi_ibo = 
  Context_sole_index_by_context_name_quatuor_provider_v.provide 
    (nam_ibo, nam_iba, nam_dom, nam_sec) ;;

test_number 2 (
(soi_ibo : Sole_index_t.sole_index ) = 
[28; 1; 21; 1]
);;

let sym_loc_ibo = Localinput_symbol_v.localinput_context_inputbox_constructor nam_ibo;;

test_number 3 (
(sym_loc_ibo : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_context_symbol
   (Localinput_context_symbol_t.Localinput_context_inputbox_symbol
     (Localinput_context_inputbox_symbol_t.Localinput_context_inputbox_constructor
       "Point_a_print"))
);;

let tag_loc_ibo = Tag_v.make sym_loc_ibo soi_ibo;;

test_number 4 (
( tag_loc_ibo : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_context_symbol
    (Localinput_context_symbol_t.Localinput_context_inputbox_symbol
      (Localinput_context_inputbox_symbol_t.Localinput_context_inputbox_constructor
        "Point_a_print")),
   [28; 1; 21; 1])
);;

test_number 5 (
tag_loc_ibo = provide nam_ibo
);;
