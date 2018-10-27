open Make_test_v;;

testing "Nwchemdata_parser_v with
    Nwchemdata_lexer_lexical_analysis_u_any.ml";;

(* Deleting Registers *)

(* toplevel 
   #use "Nwchemdata_lexer_lexical_analysis_u_any.ml";; 

*)

open Nwchemdata_lexer_lexical_analysis_v;;

(* Database file *)

let nam_dbo_l = Databox_name_list_by_unit_provider_v.provide ();;

let nam_dbo = "6_31GSS";;
let fno_dbo = databox_fullnameoffile_of_databox_name nam_dbo;;

test_number 1 (
(fno_dbo : string) =
"/home/colonna/sources/ocaml_top/setup/frames/externalsector/skeletondata/nwchemdata/nwchemdatafiles/6_31GSS.nwc"
);;

let sbu = File_v.scanbuf_of_fullname fno_dbo;;
let c = Scanf.bscanf sbu "%0c" (fun c ->c);;

test_number 2 (
(c : char ) = 
'v'
);;

let sym_lex_rvl = nwchemdata_lexer_symbol_revlist_of_scanbuf sbu;;

let sym_lex_end_l = List_v.sublist_of_int_of_length_of_list 0 4 sym_lex_rvl;;

test_number 3 (
(sym_lex_end_l : Nwchemdata_lexer_symbol_t.nwchemdata_lexer_symbol list ) =
 [Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol
    Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_end_of_file;
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)));
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_keyword_symbol
    Nwchemdata_lexer_keyword_symbol_t.Nwchemdata_lexer_keyword_end_of_file;
   Nwchemdata_lexer_symbol_t.Nwchemdata_lexer_basic_symbol
    (Nwchemdata_lexer_basic_symbol_t.Nwchemdata_lexer_basic_character_symbol
      (Nwchemdata_lexer_basic_character_symbol_t.Nwchemdata_lexer_basic_character_mark_symbol
        (Nwchemdata_lexer_basic_character_mark_symbol_t.Nwchemdata_lexer_basic_character_mark_singled_symbol
          Nwchemdata_lexer_basic_character_mark_singled_symbol_t.Nwchemdata_lexer_character_mark_end_of_line)))]
);;

