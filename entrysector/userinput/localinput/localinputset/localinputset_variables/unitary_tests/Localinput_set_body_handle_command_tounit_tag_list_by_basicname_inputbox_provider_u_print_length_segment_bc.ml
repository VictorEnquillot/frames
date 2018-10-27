open Make_test_v;;

testing "Localinput_set_body_handle_command_tounit_tag_list_by_basicname_inputbox_provider_v
        Localinput_set_body_handle_command_tounit_tag_list_by_basicname_inputbox_provider_u_print_length_segment_bc.ml";;

(* Deleting Registers *)

(* Tracing *)

(* define Con_db1  *)
(*        context *)
(* 	 database "db1" *)
(*          domain "figure" *)
(* 	 end -- context *)
(*        end -- define *)

(* define Len *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "tomeasure" "constructor"] *)
(* 	 operation "length" *)
(* 	 ondomain "figure"   *)
(*          end -- operator *)
(*        end -- define *)

(* define Seg_bc *)
(*        external  *)
(*          type [ "figure" "set" "body" "segment" "constructor" ] *)
(*          external_name "BC" *)
(*          external_context Con_db1 *)
(*          end -- external *)
(*        end -- define *)

(* define Len_bc *)
(*        target  *)
(*          type [ "property" "operand" "target" "measured" "constructor" ] *)
(* 	 target_operator Len *)
(*          target_operand Seg_bc *)
(* 	 end -- target *)
(*        end -- define *)

(* define Uni_len *)
(*        external  *)
(*          type [ "units" "length" "bohr" ] *)
(*          external_context Con_nwc *)
(*          end -- external *)
(*        end -- define *)

(* print Len_bc *)
(*       units [ Uni_len ] *)
(*       end -- print *)

(* stop *)

(* toplevel 
   #use "Localinput_set_body_handle_command_tounit_tag_list_by_basicname_inputbox_provider_u_print_length_segment_bc.ml";;

*)

open Localinput_set_body_handle_command_tounit_tag_list_by_basicname_inputbox_provider_v;;

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_length_segment_bc";;
  
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
