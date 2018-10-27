open Make_test_v;;

testing "Localinput_parser_tree_by_basicname_inputbox_provider_v with
        Localinput_parser_tree_by_basicname_inputbox_provider_u_print_point_a.ml";;

(* Deleting Registers *)


(* Tracing *)

(*
 Trace_what_by_module_name_register_v.store "Localinput_parser_tree_by_basicname_inputbox_provider_v" "debug";;
*)

(* define Con_a *)
(*        context *)
(*          databox "Point_a" *)
(*          database "db1points" *)
(*          domain "figure" *)
(*          sector "internal" *)
(*          end -- context *)
(*        end -- define *)

(* define Poi_a *)
(*        external  *)
(*          type [ "figure" "set" "fence" "point" "constructor" ] *)
(*          external_name "T_A" *)
(*          external_context Con_a *)
(*          end -- external *)
(*        end -- define *)

(* define Uni_len *)
(*        external  *)
(*          type [ "units" "length" "bohr" ] *)
(*          end -- external *)
(*        end -- define *)

(* define Uni_ang *)
(*        external  *)
(*          type [ "units" "angle" "radian" ] *)
(*          end -- external *)
(*        end -- define *)

(* print Poi_a *)
(*       units [ Uni_len Uni_ang ] *)
(*       end -- print *)

(* stop *)

(* toplevel 
   #use "Localinput_parser_tree_by_basicname_inputbox_provider_u_print_point_a.ml";;

*)

open Localinput_parser_tree_by_basicname_inputbox_provider_v;;

let nam_mod = "Localinput_parser_tree_by_basicname_inputbox_provider_v";;
let nam_ibo = "Print_point_a";;
let nam_iba = "local";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;
let bna_iba = Basicname_v.basicname_inputbase_of_string nam_iba;;

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
      "Con_a");
   Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
    (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
      "Poi_a");
   Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
    (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
      "Uni_len");
   Localinput_lexer_command_symbol_t.Localinput_lexer_command_define_symbol
    (Localinput_lexer_command_define_symbol_t.Localinput_lexer_command_define_constructor
      "Uni_ang");
   Localinput_lexer_command_symbol_t.Localinput_lexer_command_print_symbol
    (Localinput_lexer_command_print_symbol_t.Localinput_lexer_command_print_constructor
      "Poi_a");
   Localinput_lexer_command_symbol_t.Localinput_lexer_command_stop_symbol
    (Localinput_lexer_command_stop_symbol_t.Localinput_lexer_command_stop_constructor
      "Print_point_a")]
);;

 let sym_loi_stl = List.map 
      (fun sl ->
	(Localinput_parser_handle_command_subtree_by_basicname_inputbox_n_localinput_lexer_command_symbol_provider_v.provide (bna_ibo, sl)
	)
      )  
      sym_lco_l;;

let sym_loi_inn_l = List.flatten (List.map Tree_v.inner_node_list_off_tree sym_loi_stl);;

test_number 2 (
(sym_loi_inn_l : Localinput_symbol_t.localinput_symbol list ) =
  [Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
        (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
          (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
            (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
              (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
                "Con_a"))))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
        (Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol
          (Localinput_set_body_block_define_symbol_t.Localinput_set_body_block_define_constructor
            "Con_a"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
        (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_variable_kind_symbol
          (Localinput_set_body_handle_variable_kind_symbol_t.Localinput_set_body_handle_variable_context_symbol
            (Localinput_set_body_handle_variable_context_symbol_t.Localinput_set_body_handle_variable_context_constructor
              "Con_a")))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
        (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol
          (Localinput_set_body_block_variable_external_symbol_t.Localinput_set_body_block_variable_external_constructor
            "Point_a"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
        (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
          (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
            (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
              (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
                "Poi_a"))))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
        (Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol
          (Localinput_set_body_block_define_symbol_t.Localinput_set_body_block_define_constructor
            "Poi_a"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
        (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_variable_kind_symbol
          (Localinput_set_body_handle_variable_kind_symbol_t.Localinput_set_body_handle_variable_external_symbol
            (Localinput_set_body_handle_variable_external_symbol_t.Localinput_set_body_handle_variable_external_constructor
              "Poi_a")))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
        (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol
          (Localinput_set_body_block_variable_external_symbol_t.Localinput_set_body_block_variable_external_constructor
            "Poi_a"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_box_symbol
        (Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol
          (Localinput_set_body_box_type_symbol_t.Localinput_set_body_box_type_constructor
            "Poi_a"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_list_symbol
        (Localinput_set_body_list_symbol_t.Localinput_set_body_list_variable_type_symbol
          (Localinput_set_body_list_variable_type_symbol_t.Localinput_set_body_list_variable_type_constructor
            "Poi_a"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
        (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
          (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
            (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
              (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
                "Uni_len"))))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
        (Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol
          (Localinput_set_body_block_define_symbol_t.Localinput_set_body_block_define_constructor
            "Uni_len"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
        (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_variable_kind_symbol
          (Localinput_set_body_handle_variable_kind_symbol_t.Localinput_set_body_handle_variable_external_symbol
            (Localinput_set_body_handle_variable_external_symbol_t.Localinput_set_body_handle_variable_external_constructor
              "Uni_len")))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
        (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol
          (Localinput_set_body_block_variable_external_symbol_t.Localinput_set_body_block_variable_external_constructor
            "Uni_len"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_box_symbol
        (Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol
          (Localinput_set_body_box_type_symbol_t.Localinput_set_body_box_type_constructor
            "Uni_len"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_list_symbol
        (Localinput_set_body_list_symbol_t.Localinput_set_body_list_variable_type_symbol
          (Localinput_set_body_list_variable_type_symbol_t.Localinput_set_body_list_variable_type_constructor
            "Uni_len"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
        (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
          (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_creation_symbol
            (Localinput_set_body_handle_command_creation_symbol_t.Localinput_set_body_handle_command_creation_define_symbol
              (Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
                "Uni_ang"))))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
        (Localinput_set_body_block_symbol_t.Localinput_set_body_block_define_symbol
          (Localinput_set_body_block_define_symbol_t.Localinput_set_body_block_define_constructor
            "Uni_ang"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
        (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_variable_kind_symbol
          (Localinput_set_body_handle_variable_kind_symbol_t.Localinput_set_body_handle_variable_external_symbol
            (Localinput_set_body_handle_variable_external_symbol_t.Localinput_set_body_handle_variable_external_constructor
              "Uni_ang")))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
        (Localinput_set_body_block_symbol_t.Localinput_set_body_block_variable_external_symbol
          (Localinput_set_body_block_variable_external_symbol_t.Localinput_set_body_block_variable_external_constructor
            "Uni_ang"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_box_symbol
        (Localinput_set_body_box_symbol_t.Localinput_set_body_box_type_symbol
          (Localinput_set_body_box_type_symbol_t.Localinput_set_body_box_type_constructor
            "Uni_ang"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_list_symbol
        (Localinput_set_body_list_symbol_t.Localinput_set_body_list_variable_type_symbol
          (Localinput_set_body_list_variable_type_symbol_t.Localinput_set_body_list_variable_type_constructor
            "Uni_ang"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
        (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
          (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_tounit_symbol
            (Localinput_set_body_handle_command_tounit_symbol_t.Localinput_set_body_handle_command_tounit_print_symbol
              (Localinput_set_body_handle_command_tounit_print_symbol_t.Localinput_set_body_handle_command_tounit_print_constructor
                "Poi_a"))))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_block_symbol
        (Localinput_set_body_block_symbol_t.Localinput_set_body_block_print_symbol
          (Localinput_set_body_block_print_symbol_t.Localinput_set_body_block_print_constructor
            "Poi_a"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_box_symbol
        (Localinput_set_body_box_symbol_t.Localinput_set_body_box_units_symbol
          (Localinput_set_body_box_units_symbol_t.Localinput_set_body_box_units_constructor
            "Poi_a"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_list_symbol
        (Localinput_set_body_list_symbol_t.Localinput_set_body_list_variable_name_external_symbol
          (Localinput_set_body_list_variable_name_external_symbol_t.Localinput_set_body_list_variable_name_external_constructor
            "Poi_a"))))]
);;

let sym_loi_lea_l = List.flatten (List.map Tree_v.leaf_node_list_off_tree sym_loi_stl);;
let sym_loi_lfc_l = List.filter Localinput_symbol_v.is_localinput_set_fence_cell_symbol_off_localinput_symbol sym_loi_lea_l ;;

test_number 3 (
(sym_loi_lfc_l : Localinput_symbol_t.localinput_symbol list ) =
  [Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
        (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_databox_symbol
          (Localinput_set_fence_cell_databox_symbol_t.Localinput_set_fence_cell_databox_constructor
            "Point_a"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
        (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_database_symbol
          (Localinput_set_fence_cell_database_symbol_t.Localinput_set_fence_cell_database_constructor
            "db1points"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
        (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_domain_symbol
          (Localinput_set_fence_cell_domain_symbol_t.Localinput_set_fence_cell_domain_constructor
            "figure"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
        (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_sector_symbol
          (Localinput_set_fence_cell_sector_symbol_t.Localinput_set_fence_cell_sector_constructor
            "internal"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
        (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_external_name_symbol
          (Localinput_set_fence_cell_external_name_symbol_t.Localinput_set_fence_cell_external_name_constructor
            "T_A"))));
   Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_fence_symbol
      (Localinput_set_fence_symbol_t.Localinput_set_fence_cell_symbol
        (Localinput_set_fence_cell_symbol_t.Localinput_set_fence_cell_external_context_symbol
          (Localinput_set_fence_cell_external_context_symbol_t.Localinput_set_fence_cell_external_context_constructor
            "Con_a"))))]
);;

let sym_loi_ibo = Localinput_symbol_v.localinput_context_inputbox_constructor nam_ibo;;

test_number 4 (
(sym_loi_ibo : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_context_symbol
   (Localinput_context_symbol_t.Localinput_context_inputbox_symbol
     (Localinput_context_inputbox_symbol_t.Localinput_context_inputbox_constructor
       "Print_point_a"))
);;

let sym_loi_t = Tree_v.make_of_node sym_loi_ibo sym_loi_stl;;

test_number 5 (
 sym_loi_t = provide bna_ibo
);;

(* test_raises_some_exc Stack.top sym_lex_con_s;; *)
