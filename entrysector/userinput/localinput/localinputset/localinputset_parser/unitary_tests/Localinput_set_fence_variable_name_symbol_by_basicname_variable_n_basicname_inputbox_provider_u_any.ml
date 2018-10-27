open Make_test_v;;

testing "Localinput_set_fence_variable_name_symbol_by_basicname_variable_n_basicname_inputbox_provider_v with
    Localinput_set_fence_variable_name_symbol_by_basicname_variable_n_basicname_inputbox_provider_u_print_aopef_he2p1.ml";;

(* Deleting Registers *)
Register_v.delete Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_register_v.register;;
Register_v.delete Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_register_v.register;;
Register_v.delete Localinput_set_fence_variable_name_n_kind_symbol_list_by_basicname_inputbox_register_v.register;;
Register_v.delete Localinput_set_fence_variable_name_symbol_by_basicname_variable_n_basicname_inputbox_register_v.register;;

(* Tracing *)


(* toplevel 
   #use "Localinput_set_fence_variable_name_symbol_by_basicname_variable_n_basicname_inputbox_provider_u_print_aopef_he2p1.ml";; 

*)

(* Input File *)

let nof_loi = "Print_aopef_he2p1.loc";;
let fno_loi = Localinput_fullnameoffile_by_localinput_nameoffile_provider_v.provide nof_loi;;


open Localinput_set_fence_variable_name_symbol_by_basicname_variable_n_basicname_inputbox_provider_v;;

let wor_cap_n_sym_lvk_dl = 
  Variable_name_n_localinput_lexer_variable_kind_symbol_list_by_basicname_inputbox_provider_v.provide
    fno_loi;;

test_number 1 (
( wor_cap_n_sym_lvk_dl : (string,
     Localinput_lexer_variable_kind_symbol_t.localinput_lexer_variable_kind_symbol)
    Doublet_t.doublet list) =
[("Con_nwc",
  Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_context);
 ("Aopef_he2p1",
  Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external);
 ("Uni_len",
  Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external);
 ("Uni_ang",
  Localinput_lexer_variable_kind_symbol_t.Localinput_lexer_variable_kind_external)]
);;

let sym_ivn_l = List.map 
      (fun (w, k) ->
	Localinput_parser_translation_v.localinput_set_fence_variable_name_symbol_of_word_capitalized_of_localinput_lexer_variable_kind_symbol w k
      )
      wor_cap_n_sym_lvk_dl;;

test_number 2 (
(sym_ivn_l : Localinput_set_fence_variable_name_symbol_t.localinput_set_fence_variable_name_symbol list ) =
  [Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_context_symbol
    (Localinput_set_fence_variable_name_context_symbol_t.Localinput_set_fence_variable_name_context_constructor
      "Con_nwc");
   Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
    (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
      (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
        "Aopef_he2p1"));
   Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
    (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
      (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
        "Uni_len"));
   Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
    (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
      (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
        "Uni_ang"))]
);;

let wor_cap_l = Doublet_list_v.left_list_off_doublet_list wor_cap_n_sym_lvk_dl;;

test_number 3 (
(wor_cap_l : string list ) =
  ["Con_nwc"; "Aopef_he2p1"; "Uni_len"; "Uni_ang"]
);;

let wor_cap_con = List.find (fun s -> s = "Con_nwc") wor_cap_l;;

test_number 4 (
(wor_cap_con : string ) = 
"Con_nwc"
);;

let sym_ivn = provide wor_cap_con;;

test_number 5 (
(sym_ivn : Localinput_set_fence_variable_name_symbol_t.localinput_set_fence_variable_name_symbol ) =
Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_context_symbol
  (Localinput_set_fence_variable_name_context_symbol_t.Localinput_set_fence_variable_name_context_constructor
     "Con_nwc")
);;
