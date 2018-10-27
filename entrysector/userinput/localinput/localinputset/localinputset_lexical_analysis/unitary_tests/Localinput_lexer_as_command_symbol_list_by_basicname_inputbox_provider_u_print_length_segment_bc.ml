open Make_test_v;;

testing "Localinput_lexer_as_command_symbol_list_by_basicname_inputbox_provider_v
        Localinput_lexer_as_command_symbol_list_by_basicname_inputbox_provider_u_print_length_segment_bc.ml";;

(* Deleting Registers *)

(* Tracing *)

(* Trace_what_by_module_name_register_v.store "an" "x";; *)

(* toplevel 
   #use "Localinput_lexer_as_command_symbol_list_by_basicname_inputbox_provider_u_print_length_segment_bc.ml";;

*)

(* define Con_db1  *)
(*        context *)
(*          database "db1" *)
(*          domain "figure" *)
(*          end -- context *)
(*        end -- define *)

(* define Len *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "tomeasure" "constructor"] *)
(*          operation "length" *)
(*          ondomain "figure"   *)
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
(*          target_operator Len *)
(*          target_operand Seg_bc *)
(*          end -- target *)
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

open Localinput_lexer_as_command_symbol_list_by_basicname_inputbox_provider_v;;

let nam_ibo = "Print_length_segment_bc";;

let sym_lex_l = 
    Localinput_lexer_symbol_list_by_basicname_inputbox_provider_v.provide 
      nam_ibo;;

let pre_lex_com s = 
    Localinput_lexer_symbol_v.is_localinput_lexer_command_symbol_off_localinput_lexer_symbol s;;

let sym_lex_com_l = List.filter pre_lex_com sym_lex_l;;

test_number 1 (
(sym_lex_com_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "Con_db1"));
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "Len"));
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "Seg_bc"));
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "Len_bc"));
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
      (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
        "Uni_len"));
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_print_symbol
      (Localinput_lexer_command_print_symbol_t.Localinput_lexer_command_print_constructor
        "Len_bc"));
   Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_stop_symbol
      (Localinput_lexer_command_stop_symbol_t.Localinput_lexer_command_stop_constructor
        "Print_length_segment_bc"))]
);;

let sym_lex_com_l_len = List.length sym_lex_com_l;;

test_number 2 (
(sym_lex_com_l_len : int ) = 
7
);;

invariant_of_list sym_lex_com_l;;

test_number 3 (
sym_lex_com_l = provide nam_ibo
);;

