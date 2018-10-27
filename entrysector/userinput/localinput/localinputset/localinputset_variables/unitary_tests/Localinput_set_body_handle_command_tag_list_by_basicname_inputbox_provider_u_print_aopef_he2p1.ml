open Make_test_v;;

testing "Localinput_set_body_handle_command_tag_list_by_basicname_inputbox_provider_v
        Localinput_set_body_handle_command_tag_list_by_basicname_inputbox_provider_u_print_aopef_he2p1.ml";;

(* Deleting Registers *)

(* Tracing *)

(* define Con_tw *)
(*        context *)
(*          databox "triangle_w" *)
(*          database "db1points" *)
(*          domain "figure" *)
(*          sector "internal" *)
(*          end -- context *)
(*        end -- define *)

(* define Per_tri *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "tomeasure" "constructor" ] *)
(*          end -- operator *)
(*        end -- define *)

(* define Tri_w *)
(*        external  *)
(*        type [ "figure" "set" "body" "triangle" "scalene" "acute" ] *)
(*          external_name "W" *)
(*          external_context Con_tw *)
(*          end -- external *)
(*        end -- define *)

(* define Perimeter_w *)
(*        target  *)
(*        type [ "property" "operand" "body" "target" "measured" "constructor" ] *)
(*          target_operator Per_tri *)
(*          target_operand Tri_w *)
(*          end -- target *)
(*        end -- define *)

(* print Perimeter_w *)
(*       units  *)
(*         length angstrom *)
(*       	end -- units	     *)
(*       end -- print *)

(* stop *)

(* toplevel 
   #use "Localinput_set_body_handle_command_tag_list_by_basicname_inputbox_provider_u_print_aopef_he2p1.ml";;

*)

open Localinput_set_body_handle_command_tag_list_by_basicname_inputbox_provider_v;;

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_aopef_he2p1";;
  
let tag_lhc_l =
    Localinput_set_body_handle_command_tag_list_by_basicname_inputbox_provider_v.provide
    bna_ibo;;

let pre_tag_lhc (s, i) = 
  Localinput_set_body_handle_command_symbol_v.is_localinput_set_body_handle_command_tounit_symbol_off_localinput_set_body_handle_command_symbol s;;

let tag_lhc_lct_sl = List.filter pre_tag_lhc tag_lhc_l;;
 
test_number 1 (
(tag_lhc_lct_sl :
  Localinput_set_body_handle_command_symbol_t.localinput_set_body_handle_command_symbol
   Tag_t.tag list ) =
  [(Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_tounit_symbol
     (Localinput_set_body_handle_command_tounit_symbol_t.Localinput_set_body_handle_command_tounit_print_symbol
       (Localinput_set_body_handle_command_tounit_print_symbol_t.Localinput_set_body_handle_command_tounit_print_constructor
         "Len_bc")),
    [6; 42; 1; 22; 1])]
);;

let tag_lct_sl = List.map 
    (Tag_v.map_entity
       Localinput_set_body_handle_command_symbol_v.localinput_set_body_handle_command_tounit_symbol_off_localinput_set_body_handle_command_symbol)
    tag_lhc_lct_sl;;

test_number 2 (
(tag_lct_sl :
  Localinput_set_body_handle_command_tounit_symbol_t.localinput_set_body_handle_command_tounit_symbol
  Tag_t.tag list ) =
  [(Localinput_set_body_handle_command_tounit_symbol_t.Localinput_set_body_handle_command_tounit_print_symbol
     (Localinput_set_body_handle_command_tounit_print_symbol_t.Localinput_set_body_handle_command_tounit_print_constructor
       "Len_bc"),
    [6; 42; 1; 22; 1])]
);;

test_number 3 (
tag_lct_sl = provide bna_ibo
);;
