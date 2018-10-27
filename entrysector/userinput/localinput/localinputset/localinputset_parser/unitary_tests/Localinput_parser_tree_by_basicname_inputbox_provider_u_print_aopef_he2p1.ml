open Make_test_v;;

testing "Localinput_parser_tree_by_basicname_inputbox_provider_v with
    Localinput_parser_tree_by_basicname_inputbox_provider_u_print_aopef_he2p1.ml";;

(* Deleting Registers *)

(* Tracing *)

(* define Con_ao  *)
(*        context *)
(*          domain "skeleton" *)
(* 	 database "nwchem" *)
(* 	 databox "cc_pvtz" *)
(* 	 end -- context *)
(*        end -- define *)

(* define Aopef_he2p1	 *)
(*        external  *)
(*          type [ "skeleton" "set" "fence" "centered" "aopef" "constructor" ] *)
(*          external_name "he 2 p 1" *)
(*          external_context Con_ao *)
(*          end -- external *)
(*        end -- define *)

(* define Uni_len  *)
(*        external  *)
(*          type [ "units" "length" "bohr" ] *)
(*          external_context Con_ao *)
(*          end -- external *)
(*        end -- define *)

(* define Uni_ang  *)
(*        external  *)
(*          type [ "units" "angle" "radian" ] *)
(*          external_context Con_ao *)
(*          end -- external *)
(*        end -- define *)

(* print Aopef_he2p1  *)
(*       units [ Uni_len Uni_ang ] *)
(*       end -- print *)

(* stop *)

(* toplevel 
   #use "Localinput_parser_tree_by_basicname_inputbox_provider_u_print_aopef_he2p1.ml";; 

*)

open Localinput_parser_tree_by_basicname_inputbox_provider_v;;

let nam_ibo = "Print_aopef_he2p1";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

let sym_lex_lco_l =
  Localinput_lexer_as_command_symbol_list_by_basicname_inputbox_provider_v.provide
    bna_ibo;;

let sym_lco_l = List.map (* Coerce Down *)
      Localinput_lexer_symbol_v.localinput_lexer_command_symbol_off_localinput_lexer_symbol
      sym_lex_lco_l;;

test_number 1 (
(sym_lco_l :
  Localinput_lexer_command_symbol_t.localinput_lexer_command_symbol list ) =
  [Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
    (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
      "Con_ao");
   Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
    (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
      "Aopef_he2p1");
   Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
    (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
      "Uni_len");
   Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
    (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
      "Uni_ang");
   Localinput_lexer_command_symbol_t.Localinput_lexer_command_print_symbol
    (Localinput_lexer_command_print_symbol_t.Localinput_lexer_command_print_constructor
      "Aopef_he2p1");
   Localinput_lexer_command_symbol_t.Localinput_lexer_command_stop_symbol
    (Localinput_lexer_command_stop_symbol_t.Localinput_lexer_command_stop_constructor
      "Print_aopef_he2p1")]
);;

let sym_loi_stl = List.map 
      (fun sl ->
	(Localinput_parser_handle_command_subtree_by_basicname_inputbox_n_localinput_lexer_command_symbol_provider_v.provide (bna_ibo, sl)
	)
      )  
      sym_lco_l;;

let cou_sym_loi_stl = List.length sym_loi_stl;;

test_number 2 (
(cou_sym_loi_stl : int ) = 
6
);;

let sym_loi_ibo = Localinput_symbol_v.localinput_context_inputbox_constructor nam_ibo;;

test_number 3 (
(sym_loi_ibo : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_context_symbol
   (Localinput_context_symbol_t.Localinput_context_inputbox_symbol
     (Localinput_context_inputbox_symbol_t.Localinput_context_inputbox_constructor
       "Print_aopef_he2p1"))
);;

let sym_loi_t = Tree_v.make_of_node sym_loi_ibo sym_loi_stl;;

let sym_loi_lvn_sl = Tree_v.node_list_of_node_predicate_off_tree 
      Localinput_symbol_v.is_localinput_set_fence_variable_name_symbol_off_localinput_symbol
      sym_loi_t;;

test_number 4 (
(sym_loi_lvn_sl : Localinput_symbol_t.localinput_symbol list ) =
  [Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
        (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_context_symbol
          (Localinput_set_fence_variable_name_context_symbol_t.Localinput_set_fence_variable_name_context_constructor
            "Con_ao"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
        (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
          (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
            (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
              "Aopef_he2p1")))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
        (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
          (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
            (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
              "Uni_len")))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
        (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
          (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
            (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
              "Uni_ang")))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
        (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
          (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
            (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
              "Aopef_he2p1")))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
        (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
          (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
            (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
              "Uni_len")))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
        (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
          (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
            (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
              "Uni_ang")))))]
);;

let sym_loi_lvn_sl = Tree_v.node_list_of_node_predicate_off_tree 
      Localinput_symbol_v.is_localinput_set_fence_variable_name_symbol_off_localinput_symbol
      sym_loi_t;;

let dol = List_v.element_n_count_list_of_list sym_loi_lvn_sl;;

test_number 5 (
(dol : (Localinput_symbol_t.localinput_symbol * int) list ) =
  [(Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
         (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_context_symbol
           (Localinput_set_fence_variable_name_context_symbol_t.Localinput_set_fence_variable_name_context_constructor
             "Con_ao")))),
    1);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
         (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
           (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
             (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
               "Aopef_he2p1"))))),
    2);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
         (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
           (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
             (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
               "Uni_len"))))),
    2);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
         (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
           (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
             (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
               "Uni_ang"))))),
    2)]
);;

let sym_dup_sl = List_v.non_once_list_off_list sym_loi_lvn_sl;;

test_number 6 (
( sym_dup_sl : Localinput_symbol_t.localinput_symbol list ) =
  [Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
        (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
          (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
            (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
              "Aopef_he2p1")))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
        (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
          (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
            (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
              "Uni_len")))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
        (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
          (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
            (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
              "Uni_ang")))))]
);;

test_number 7 (
sym_loi_t = provide bna_ibo
);;
