open Make_test_v;;

testing "Db1_parser_v with
   Db1_parser_u_triangle_isoacute.ml";;

(* Deleting Registers *)
Register_v.delete  Common_symbol_by_sole_index_register_v.register;;
Register_v.delete  Component_filename_list_by_database_db1_database_tag_register_v.register;;
Register_v.delete  Database_db1_content_list_list_by_database_db1_database_tag_register_v.register;;
Register_v.delete  Database_db1_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Database_db1_database_tag_by_domain_tag_register_v.register;;
Register_v.delete  Database_db1_symbol_by_sole_index_register_v.register;;
Register_v.delete  Database_db1_symbol_tree_by_database_db1_tag_register_v.register;;
Register_v.delete  Database_db1_tag_all_list_by_database_db1_domain_tag_register_v.register;;
Register_v.delete  Database_db1_tag_closure_by_database_db1_tag_register_v.register;;
Register_v.delete  Database_db1_tag_n_value_float_closure_by_database_db1_tag_register_v.register;;
Register_v.delete  Database_db1_tag_tree_by_database_db1_database_tag_register_v.register;;
Register_v.delete  Database_db1_tag_tree_by_database_db1_tag_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;
Register_v.delete  Son_database_db1_tag_list_by_father_database_db1_tag_register_v.register;;
Register_v.delete  String_by_database_db1_component_tag_register_v.register;;
Register_v.delete  String_by_database_db1_database_tag_register_v.register;;
Register_v.delete  String_list_by_database_db1_tag_register_v.register;;

(* Tracing *)

Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Db1_parser_u_triangle_isoacute.ml";;

*)

let nof = "../triangle_isoacute.db1";;
let sbu = File_v.scanf_scanning_in_channel_of_fullnameoffile nof;;

let ful_lex_l = Db1_lexeme_v.db1_lexeme_list_of_scanbuf sbu;;

test_number 1 (
ful_lex_l 
(* : Db1_lexeme_t.db1_lexeme list *)
=
  [Db1_lexeme_t.Db1_lexeme_coordinates_data
    Db1_lexeme_coordinates_data_t.Db1_lexeme_coordinates_data_coordinates_units_length;
   Db1_lexeme_t.Db1_lexeme_name "nanometer"; Db1_lexeme_t.Db1_lexeme_eol;
   Db1_lexeme_t.Db1_lexeme_coordinates_data
    Db1_lexeme_coordinates_data_t.Db1_lexeme_coordinates_data_coordinates_kind;
   Db1_lexeme_t.Db1_lexeme_name "cartesian"; Db1_lexeme_t.Db1_lexeme_eol;
   Db1_lexeme_t.Db1_lexeme_figure
    Db1_lexeme_figure_t.Db1_lexeme_figure_triangle;
   Db1_lexeme_t.Db1_lexeme_name "T"; Db1_lexeme_t.Db1_lexeme_eol;
   Db1_lexeme_t.Db1_lexeme_figure
    Db1_lexeme_figure_t.Db1_lexeme_figure_vertex;
   Db1_lexeme_t.Db1_lexeme_name "T_A"; Db1_lexeme_t.Db1_lexeme_float 0.1;
   Db1_lexeme_t.Db1_lexeme_float 0.2; Db1_lexeme_t.Db1_lexeme_float (-0.2);
   Db1_lexeme_t.Db1_lexeme_eol;
   Db1_lexeme_t.Db1_lexeme_figure
    Db1_lexeme_figure_t.Db1_lexeme_figure_vertex;
   Db1_lexeme_t.Db1_lexeme_name "T_B"; Db1_lexeme_t.Db1_lexeme_float 0.;
   Db1_lexeme_t.Db1_lexeme_float 0.; Db1_lexeme_t.Db1_lexeme_float (-0.2);
   Db1_lexeme_t.Db1_lexeme_eol;
   Db1_lexeme_t.Db1_lexeme_figure
    Db1_lexeme_figure_t.Db1_lexeme_figure_vertex;
   Db1_lexeme_t.Db1_lexeme_name "T_C"; Db1_lexeme_t.Db1_lexeme_float 0.2;
   Db1_lexeme_t.Db1_lexeme_float 0.; Db1_lexeme_t.Db1_lexeme_float (-0.2);
   Db1_lexeme_t.Db1_lexeme_eol]
);;

let lex_ll = List_v.burst_right_included_of_predicate_of_list (fun l -> l = Db1_lexeme_v.eol) ful_lex_l;;

test_number 2 (
lex_ll 
(* : Db1_lexeme_t.db1_lexeme list list *)
=
  [[Db1_lexeme_t.Db1_lexeme_coordinates_data
     Db1_lexeme_coordinates_data_t.Db1_lexeme_coordinates_data_coordinates_units_length;
    Db1_lexeme_t.Db1_lexeme_name "nanometer"; Db1_lexeme_t.Db1_lexeme_eol];
   [Db1_lexeme_t.Db1_lexeme_coordinates_data
     Db1_lexeme_coordinates_data_t.Db1_lexeme_coordinates_data_coordinates_kind;
    Db1_lexeme_t.Db1_lexeme_name "cartesian"; Db1_lexeme_t.Db1_lexeme_eol];
   [Db1_lexeme_t.Db1_lexeme_figure
     Db1_lexeme_figure_t.Db1_lexeme_figure_triangle;
    Db1_lexeme_t.Db1_lexeme_name "T"; Db1_lexeme_t.Db1_lexeme_eol];
   [Db1_lexeme_t.Db1_lexeme_figure
     Db1_lexeme_figure_t.Db1_lexeme_figure_vertex;
    Db1_lexeme_t.Db1_lexeme_name "T_A"; Db1_lexeme_t.Db1_lexeme_float 0.1;
    Db1_lexeme_t.Db1_lexeme_float 0.2; Db1_lexeme_t.Db1_lexeme_float (-0.2);
    Db1_lexeme_t.Db1_lexeme_eol];
   [Db1_lexeme_t.Db1_lexeme_figure
     Db1_lexeme_figure_t.Db1_lexeme_figure_vertex;
    Db1_lexeme_t.Db1_lexeme_name "T_B"; Db1_lexeme_t.Db1_lexeme_float 0.;
    Db1_lexeme_t.Db1_lexeme_float 0.; Db1_lexeme_t.Db1_lexeme_float (-0.2);
    Db1_lexeme_t.Db1_lexeme_eol];
   [Db1_lexeme_t.Db1_lexeme_figure
     Db1_lexeme_figure_t.Db1_lexeme_figure_vertex;
    Db1_lexeme_t.Db1_lexeme_name "T_C"; Db1_lexeme_t.Db1_lexeme_float 0.2;
    Db1_lexeme_t.Db1_lexeme_float 0.; Db1_lexeme_t.Db1_lexeme_float (-0.2);
    Db1_lexeme_t.Db1_lexeme_eol]]
);;

let dep_l = List.map Db1_parser_v.database_db1_procontent_of_db1_lexeme_list lex_ll ;;

test_number 3 (
dep_l
(* : (Database_db1_symbol_t.database_db1_symbol,
   Database_db1_symbol_t.database_db1_symbol list)
  Doublet_t.doublet *)
=
  [(Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_coordinates_units_length_symbol
         (Database_db1_element_coordinates_units_length_symbol_t.Database_db1_element_coordinates_units_length_constructor
           "nanometer"))),
    []);
   (Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_coordinates_kind_symbol
         (Database_db1_element_coordinates_kind_symbol_t.Database_db1_element_coordinates_kind_constructor
           "cartesian"))),
    []);
   (Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_component_symbol
       (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
         (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
           "T"))),
    []);
   (Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
         (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
           "T_A"))),
    [Database_db1_symbol_t.Database_db1_closure_symbol
      (Database_db1_closure_symbol_t.Database_db1_float_symbol
        (Database_db1_float_symbol_t.Database_db1_float_constructor
          "0.100000"));
     Database_db1_symbol_t.Database_db1_closure_symbol
      (Database_db1_closure_symbol_t.Database_db1_float_symbol
        (Database_db1_float_symbol_t.Database_db1_float_constructor
          "0.200000"));
     Database_db1_symbol_t.Database_db1_closure_symbol
      (Database_db1_closure_symbol_t.Database_db1_float_symbol
        (Database_db1_float_symbol_t.Database_db1_float_constructor
          "-0.200000"))]);
   (Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
         (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
           "T_B"))),
    [Database_db1_symbol_t.Database_db1_closure_symbol
      (Database_db1_closure_symbol_t.Database_db1_float_symbol
        (Database_db1_float_symbol_t.Database_db1_float_constructor
          "0.000000"));
     Database_db1_symbol_t.Database_db1_closure_symbol
      (Database_db1_closure_symbol_t.Database_db1_float_symbol
        (Database_db1_float_symbol_t.Database_db1_float_constructor
          "0.000000"));
     Database_db1_symbol_t.Database_db1_closure_symbol
      (Database_db1_closure_symbol_t.Database_db1_float_symbol
        (Database_db1_float_symbol_t.Database_db1_float_constructor
          "-0.200000"))]);
   (Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
         (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
           "T_C"))),
    [Database_db1_symbol_t.Database_db1_closure_symbol
      (Database_db1_closure_symbol_t.Database_db1_float_symbol
        (Database_db1_float_symbol_t.Database_db1_float_constructor
          "0.200000"));
     Database_db1_symbol_t.Database_db1_closure_symbol
      (Database_db1_closure_symbol_t.Database_db1_float_symbol
        (Database_db1_float_symbol_t.Database_db1_float_constructor
          "0.000000"));
     Database_db1_symbol_t.Database_db1_closure_symbol
      (Database_db1_closure_symbol_t.Database_db1_float_symbol
        (Database_db1_float_symbol_t.Database_db1_float_constructor
          "-0.200000"))])]
);;

let dec_l = Db1_parser_v.database_db1_content_list_of_database_db1_procontent_list dep_l;;

test_number 4 (
dec_l
(* :
   (Database_db1_symbol_t.database_db1_symbol,
   Database_db1_symbol_t.database_db1_symbol list)
   Doublet_t.doublet list *)
  =
  [(Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_component_symbol
       (Database_db1_component_symbol_t.Database_db1_component_triangle_symbol
         (Database_db1_component_triangle_symbol_t.Database_db1_component_triangle_constructor
           "T"))),
    [Database_db1_symbol_t.Database_db1_body_symbol
      (Database_db1_body_symbol_t.Database_db1_element_symbol
        (Database_db1_element_symbol_t.Database_db1_element_coordinates_units_length_symbol
          (Database_db1_element_coordinates_units_length_symbol_t.Database_db1_element_coordinates_units_length_constructor
            "nanometer")));
     Database_db1_symbol_t.Database_db1_body_symbol
      (Database_db1_body_symbol_t.Database_db1_element_symbol
        (Database_db1_element_symbol_t.Database_db1_element_coordinates_kind_symbol
          (Database_db1_element_coordinates_kind_symbol_t.Database_db1_element_coordinates_kind_constructor
            "cartesian")));
     Database_db1_symbol_t.Database_db1_body_symbol
      (Database_db1_body_symbol_t.Database_db1_element_symbol
        (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
          (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
            "T_A")));
     Database_db1_symbol_t.Database_db1_body_symbol
      (Database_db1_body_symbol_t.Database_db1_element_symbol
        (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
          (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
            "T_B")));
     Database_db1_symbol_t.Database_db1_body_symbol
      (Database_db1_body_symbol_t.Database_db1_element_symbol
        (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
          (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
            "T_C")))]);
   (Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_coordinates_units_length_symbol
         (Database_db1_element_coordinates_units_length_symbol_t.Database_db1_element_coordinates_units_length_constructor
           "nanometer"))),
    []);
   (Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_coordinates_kind_symbol
         (Database_db1_element_coordinates_kind_symbol_t.Database_db1_element_coordinates_kind_constructor
           "cartesian"))),
    []);
   (Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
         (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
           "T_A"))),
    [Database_db1_symbol_t.Database_db1_closure_symbol
      (Database_db1_closure_symbol_t.Database_db1_float_symbol
        (Database_db1_float_symbol_t.Database_db1_float_constructor
          "0.100000"));
     Database_db1_symbol_t.Database_db1_closure_symbol
      (Database_db1_closure_symbol_t.Database_db1_float_symbol
        (Database_db1_float_symbol_t.Database_db1_float_constructor
          "0.200000"));
     Database_db1_symbol_t.Database_db1_closure_symbol
      (Database_db1_closure_symbol_t.Database_db1_float_symbol
        (Database_db1_float_symbol_t.Database_db1_float_constructor
          "-0.200000"))]);
   (Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
         (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
           "T_B"))),
    [Database_db1_symbol_t.Database_db1_closure_symbol
      (Database_db1_closure_symbol_t.Database_db1_float_symbol
        (Database_db1_float_symbol_t.Database_db1_float_constructor
          "0.000000"));
     Database_db1_symbol_t.Database_db1_closure_symbol
      (Database_db1_closure_symbol_t.Database_db1_float_symbol
        (Database_db1_float_symbol_t.Database_db1_float_constructor
          "0.000000"));
     Database_db1_symbol_t.Database_db1_closure_symbol
      (Database_db1_closure_symbol_t.Database_db1_float_symbol
        (Database_db1_float_symbol_t.Database_db1_float_constructor
          "-0.200000"))]);
   (Database_db1_symbol_t.Database_db1_body_symbol
     (Database_db1_body_symbol_t.Database_db1_element_symbol
       (Database_db1_element_symbol_t.Database_db1_element_vertex_symbol
         (Database_db1_element_vertex_symbol_t.Database_db1_element_vertex_constructor
           "T_C"))),
    [Database_db1_symbol_t.Database_db1_closure_symbol
      (Database_db1_closure_symbol_t.Database_db1_float_symbol
        (Database_db1_float_symbol_t.Database_db1_float_constructor
          "0.200000"));
     Database_db1_symbol_t.Database_db1_closure_symbol
      (Database_db1_closure_symbol_t.Database_db1_float_symbol
        (Database_db1_float_symbol_t.Database_db1_float_constructor
          "0.000000"));
     Database_db1_symbol_t.Database_db1_closure_symbol
      (Database_db1_closure_symbol_t.Database_db1_float_symbol
        (Database_db1_float_symbol_t.Database_db1_float_constructor
          "-0.200000"))])]
);;

let cou = List.length dec_l;;
test_number 5 (
cou (* : int *) 
=
6
);;

