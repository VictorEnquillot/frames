open Make_test_v;;

testing "Localinput_context_tag_quadruplet_by_basicname_inputbox_provider_v with
    Localinput_context_tag_quadruplet_by_basicname_inputbox_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Localinput_context_tag_quadruplet_by_basicname_inputbox_provider_u_any.ml";; 

*)

open Localinput_context_tag_quadruplet_by_basicname_inputbox_provider_v;;

let nam_ibo = "Point_a_print";;
    
  let tag_dcs = Localinput_context_sector_tag_by_unit_provider_v.provide ();;
  let tag_lcd = Localinput_context_domain_tag_by_unit_provider_v.provide ();;
  let tag_iba = Localinput_context_inputbase_tag_by_unit_provider_v.provide ();;
  let tag_ibo = Localinput_context_inputbox_tag_by_basicname_inputbox_provider_v.provide nam_ibo;;
  
  let tag_qua = Quadruplet_v.make tag_ibo tag_iba tag_lcd tag_dcs;;

let nam_qua = Quadruplet_v.map 
    Localinput_context_inputbox_tag_v.string_off 
    Localinput_context_inputbase_tag_v.string_off 
    Localinput_context_domain_tag_v.string_off 
    Localinput_context_sector_tag_v.string_off 
    tag_qua 
;;

test_number 1 (
( nam_qua : (string, string, string, string) Quadruplet_t.quadruplet ) =
  ("Point_a_print", "local", "user", "entry")
);;

Check_consistency_by_context_name_quatuor_provider_v.provide nam_qua;;

test_number 2 (
( tag_qua :
  (Localinput_context_inputbox_symbol_t.localinput_context_inputbox_symbol
   Tag_t.tag,
   Localinput_context_inputbase_symbol_t.localinput_context_inputbase_symbol
   Tag_t.tag,
   Localinput_context_domain_symbol_t.localinput_context_domain_symbol
   Tag_t.tag,
   Localinput_context_sector_symbol_t.localinput_context_sector_symbol
   Tag_t.tag)
     Quadruplet_t.quadruplet ) =
  ((Localinput_context_inputbox_symbol_t.Localinput_context_inputbox_constructor
      "Point_a_print",
    [28; 1; 21; 1]),
   (Localinput_context_inputbase_symbol_t.Localinput_context_inputbase_constructor
      "local",
    [1; 21; 1]),
   (Localinput_context_domain_symbol_t.Localinput_context_domain_constructor
      "user",
    [21; 1]),
   (Localinput_context_sector_symbol_t.Localinput_context_sector_constructor
      "entry",
    [1]))
 );;

test_number 3 (
tag_qua = provide nam_ibo
);;
