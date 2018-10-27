open Make_test_v;;

testing "Localinput_as_context_tag_quatuor_by_basicname_inputbox_provider_v with
        Localinput_as_context_tag_quatuor_by_basicname_inputbox_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Localinput_as_context_tag_quatuor_by_basicname_inputbox_provider_u_any.ml";; 

*)

open Localinput_as_context_tag_quatuor_by_basicname_inputbox_provider_v;;

let nam_ibo = "Point_a_print";;
    
let tag_loc_sec = Localinput_as_context_sector_tag_by_unit_provider_v.provide ();;

let tag_loc_lcd = Localinput_as_context_domain_tag_by_unit_provider_v.provide ();;
  
let tag_loc_iba = Localinput_as_context_database_tag_by_unit_provider_v.provide ();;
 
let tag_loc_ibo = Localinput_as_context_databox_tag_by_basicname_inputbox_provider_v.provide nam_ibo;;
  
let tag_loc_q = Quatuor_v.make tag_loc_ibo tag_loc_iba tag_loc_lcd tag_loc_sec;;

test_number 1 (
(tag_loc_q :
  Localinput_symbol_t.localinput_symbol Tag_t.tag Quatuor_t.quatuor ) =
  ((Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_inputbox_symbol
       (Localinput_context_inputbox_symbol_t.Localinput_context_inputbox_constructor
         "Point_a_print")),
    [28; 1; 21; 1]),
   (Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_inputbase_symbol
       (Localinput_context_inputbase_symbol_t.Localinput_context_inputbase_constructor
         "local")),
    [1; 21; 1]),
   (Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_domain_symbol
       (Localinput_context_domain_symbol_t.Localinput_context_domain_constructor
         "user")),
    [21; 1]),
   (Localinput_symbol_t.Localinput_context_symbol
     (Localinput_context_symbol_t.Localinput_context_sector_symbol
       (Localinput_context_sector_symbol_t.Localinput_context_sector_constructor
         "entry")),
    [1]))
);;

test_number 2 (
tag_loc_q = provide nam_ibo
);;
