open Make_test_v;;

testing "Localinput_lexer_symbol_list_first_pass_by_basicname_inputbox_provider_v
        Localinput_lexer_symbol_list_first_pass_by_basicname_inputbox_provider_u_print_perimeter_triangle_w.ml";;

(* Deleting Registers *)

(* Tracing *)

let nam_mod = "Localinput_lexer_symbol_list_first_pass_by_basicname_inputbox_provider_v";;

Trace_what_by_module_name_register_v.store "Localinput_lexer_symbol_list_first_pass_by_basicname_inputbox_provider_v" "debug";;

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
   #use "Localinput_lexer_symbol_list_first_pass_by_basicname_inputbox_provider_u_print_perimeter_triangle_w.ml";;

*)

open Localinput_lexer_symbol_list_first_pass_by_basicname_inputbox_provider_v;;

let nam_ibo = "Print_perimeter_triangle_w";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;
  
let sym_lex_l = provide bna_ibo;;
			(* "?blocknamed?" *)
			(* "?defvarnamed?" *)
			(* "?nextbasiced?" *)
			(* "?nextstringed?" *)
			(* "?nextvarnamed?" *)

let sym_lex_def_varnamed_l = List.filter (fun s -> Localinput_lexer_symbol_v.string_off s = "?defvarnamed?")  sym_lex_l ;;

test_number 1 (
(sym_lex_def_varnamed_l :
  Localinput_lexer_symbol_t.localinput_lexer_symbol list ) =
  [Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
      (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
        (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
          "?defvarnamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
      (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
        (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
          "?defvarnamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
      (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_type_symbol
        (Localinput_lexer_keyword_defvarnamed_type_symbol_t.Localinput_lexer_keyword_defvarnamed_type_constructor
          "?defvarnamed?")));
   Localinput_lexer_symbol_t.Localinput_lexer_keyword_symbol
    (Localinput_lexer_keyword_symbol_t.Localinput_lexer_keyword_defvarnamed_symbol
      (Localinput_lexer_keyword_defvarnamed_symbol_t.Localinput_lexer_keyword_defvarnamed_units_symbol
        (Localinput_lexer_keyword_defvarnamed_units_symbol_t.Localinput_lexer_keyword_defvarnamed_units_constructor
          "?defvarnamed?")))]
);;
