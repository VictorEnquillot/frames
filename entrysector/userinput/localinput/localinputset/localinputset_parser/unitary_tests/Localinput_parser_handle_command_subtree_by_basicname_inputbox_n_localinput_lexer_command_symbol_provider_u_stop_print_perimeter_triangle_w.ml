open Make_test_v;;

testing "Localinput_parser_handle_command_subtree_by_basicname_inputbox_n_localinput_lexer_command_symbol_provider_v with
        Localinput_parser_handle_command_subtree_by_basicname_inputbox_n_localinput_lexer_command_symbol_provider_u_stop_print_perimeter_triangle_w.ml";;

(* Deleting Registers *)


(* Tracing *)

(*
 Trace_what_by_module_name_register_v.store "Localinput_parser_handle_command_subtree_by_basicname_inputbox_n_localinput_lexer_command_symbol_provider_v" "debug";;
*)

(* toplevel 
   #use "Localinput_parser_handle_command_subtree_by_basicname_inputbox_n_localinput_lexer_command_symbol_provider_u_stop_print_perimeter_triangle_w.ml";;

*)

open Localinput_parser_handle_command_subtree_by_basicname_inputbox_n_localinput_lexer_command_symbol_provider_v;;

let nam_ibo = "Print_perimeter_triangle_w";;

let sym_lex_lco_l =
    Localinput_lexer_as_command_symbol_list_by_basicname_inputbox_provider_v.provide
      nam_ibo;;

test_number 1 (
(sym_lex_lco_l : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
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
        "Print_perimeter_triangle_w"))]
);;

let sym_lex_top = List.nth sym_lex_lco_l 6;;

test_number 2 (
(sym_lex_top : Localinput_lexer_symbol_t.localinput_lexer_symbol ) =
  Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
   (Localinput_lexer_command_symbol_t.Localinput_lexer_command_stop_symbol
     (Localinput_lexer_command_stop_symbol_t.Localinput_lexer_command_stop_constructor
       "Print_perimeter_triangle_w"))
);;

let nam_var = Localinput_lexer_symbol_v.string_off sym_lex_top;;

test_number 3 (
(nam_var : string ) = 
"Print_perimeter_triangle_w"
);;

let sym_lco = (* Coerce Down *) 
    Localinput_lexer_symbol_v.localinput_lexer_command_symbol_off_localinput_lexer_symbol
      sym_lex_top;;

test_number 4 (
(sym_lco :
  Localinput_lexer_command_symbol_t.localinput_lexer_command_symbol ) =
  Localinput_lexer_command_symbol_t.Localinput_lexer_command_stop_symbol
   (Localinput_lexer_command_stop_symbol_t.Localinput_lexer_command_stop_constructor
     "Print_perimeter_triangle_w")
);;

let sym_lex_lco_sl = 
    Localinput_lexer_handle_command_by_basicname_inputbox_n_localinput_lexer_command_symbol_provider_v.provide
      (nam_ibo, sym_lco);;

test_number 5 (
(sym_lex_lco_sl : Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_command_symbol
    (Localinput_lexer_command_symbol_t.Localinput_lexer_command_stop_symbol
      (Localinput_lexer_command_stop_symbol_t.Localinput_lexer_command_stop_constructor
        "Print_perimeter_triangle_w"))]
);;

let sym_lex_rig_sl = List.tl sym_lex_lco_sl;;

test_number 6 (
(sym_lex_rig_sl :
  Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
[]
);;

let sym_loi_sto = 
	  Localinput_symbol_v.localinput_set_fence_keyword_command_stop_constructor 
	    nam_ibo;;

test_number 7 (  
( sym_loi_sto : Localinput_symbol_t.localinput_symbol ) =
 Localinput_symbol_t.Localinput_set_symbol
   (Localinput_set_symbol_t.Localinput_set_fence_symbol
     (Localinput_set_fence_symbol_t.Localinput_set_fence_keyword_symbol
       (Localinput_set_fence_keyword_symbol_t.Localinput_set_fence_keyword_command_symbol
         (Localinput_set_fence_keyword_command_symbol_t.Localinput_set_fence_keyword_command_stop_symbol
           (Localinput_set_fence_keyword_command_stop_symbol_t.Localinput_set_fence_keyword_command_stop_constructor
             "Print_perimeter_triangle_w")))))
);;

let sym_loi_st = Tree_v.make_of_leaf sym_loi_sto;;

test_number 8 (
 sym_loi_st = provide (nam_ibo, sym_lco)
);;

(* test_raises_some_exc Stack.top sym_lex_con_s;; *)
