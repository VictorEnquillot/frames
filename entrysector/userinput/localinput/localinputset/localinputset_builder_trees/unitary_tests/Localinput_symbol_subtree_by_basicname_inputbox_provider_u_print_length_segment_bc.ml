open Make_test_v;;

testing "Localinput_symbol_subtree_by_basicname_inputbox_provider_v with
    Localinput_symbol_subtree_by_basicname_inputbox_provider_u_print_length_segment_bc.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Localinput_symbol_subtree_by_basicname_inputbox_provider_u_print_length_segment_bc.ml";; 

*)

open Localinput_symbol_subtree_by_basicname_inputbox_provider_v;;

let nam_ibo = "Print_length_segment_bc";;
let nam_iba = "local";;
  
let tag_loi_qua =
    Localinput_as_context_tag_quatuor_by_basicname_inputbox_provider_v.provide
      nam_ibo;;

test_number 1 (
( tag_loi_qua :
  Localinput_symbol_t.localinput_symbol Tag_t.tag Quatuor_t.quatuor ) =
  ((Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_inputbox_symbol
       (Localinput_context_inputbox_symbol_t.Localinput_context_inputbox_constructor
         "Print_length_segment_bc")),
    [39; 1; 22; 1]),
   (Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_inputbase_symbol
       (Localinput_context_inputbase_symbol_t.Localinput_context_inputbase_constructor
         "local")),
    [1; 22; 1]),
   (Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_domain_symbol
       (Localinput_context_domain_symbol_t.Localinput_context_domain_constructor
         "user")),
    [22; 1]),
   (Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_sector_symbol
       (Localinput_context_sector_symbol_t.Localinput_context_sector_constructor
         "entry")),
    [1]))
);;

let (tag_loi_ibo, tag_loi_iba, tag_loi_lcd, tag_loi_lcs) = tag_loi_qua;;

let sym_loi_ibo_st =
    Localinput_symbol_subtree_by_basicname_inputbox_provider_v.provide
      nam_ibo;;

