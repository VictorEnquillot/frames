open Make_test_v;;

testing "Property_operand_target_created_container_v with
    Property_operand_target_created_container_u_point_homothety_debug.ml";;

(* Deleting Registers *)

Register_v.delete  Cpu_by_module_name_n_function_name_register_v.register;;
Register_v.delete  Debug_by_module_name_register_v.register;;
Register_v.delete  Input_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Input_fence_variable_kind_symbol_by_word_capitalized_register_v.register;;
Register_v.delete  Input_fence_variable_name_symbol_by_word_capitalized_register_v.register;;
Register_v.delete  Input_symbol_by_sole_index_register_v.register;;
Register_v.delete  Input_tag_tree_by_input_fullnameoffile_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;
Register_v.delete  Property_as_son_tag_list_by_property_as_father_tag_register_v.register;;
Register_v.delete  Property_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Property_symbol_by_sole_index_register_v.register;;
Register_v.delete  Property_symbol_subtree_by_input_tag_register_v.register;;
Register_v.delete  Property_tag_all_list_by_input_fullnameoffile_register_v.register;;
Register_v.delete  Property_tag_tree_by_input_fullnameoffile_register_v.register;;
Register_v.delete  Property_tag_tree_by_property_tag_register_v.register;;

(* Tracing *)

Parameters_general_register_v.store_force "trace-build" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-retrieve" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* Debuging *)

Debug_by_module_name_register_v.store "Input_parser_v" "nodebug";;
Debug_by_module_name_register_v.store "Input_parser_define_v" "nodebug";;
Debug_by_module_name_register_v.store "Input_parser_operator_block_v" "nodebug";;
Debug_by_module_name_register_v.store "Input_parser_tools_v" "nodebug";;

(* toplevel 
   #use "Property_operand_target_created_container_u_point_homothety_debug.ml";; 

*)

(* Input File *)

let nof_inp = "Point_homothety.inp";;
let fno_inp = Input_fullnameoffile_by_input_nameoffile_provider_v.provide nof_inp;;
Parameters_general_register_v.store "input-file" fno_inp;;

let tag_pro_t = Property_tag_tree_by_input_fullnameoffile_provider_v.provide fno_inp;;

test_number 1 (
(tag_pro_t : Property_symbol_t.property_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Property_symbol_t.Property_context_symbol
      (Property_context_symbol_t.Property_context_domain_symbol
        (Property_context_domain_symbol_t.Property_context_domain_constructor
          "property")),
     [18]),
   [Tree_t.Inner
     ((Property_symbol_t.Property_context_symbol
        (Property_context_symbol_t.Property_context_inputfile_symbol
          (Property_context_inputfile_symbol_t.Property_context_inputfile_constructor
            "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Point_homothety.inp")),
       [38; 18]),
     [Tree_t.Inner
       ((Property_symbol_t.Property_target_implicit_symbol
          (Property_target_implicit_symbol_t.Property_target_implicit_unit_symbol
            (Property_target_implicit_unit_symbol_t.Property_target_implicit_unit_constructor
              "Poi_h")),
         [1; 38; 18]),
       [Tree_t.Leaf
         (Property_symbol_t.Property_operator_symbol
           (Property_operator_symbol_t.Property_operator_tounit_symbol
             (Property_operator_tounit_symbol_t.Property_operator_tounit_print_symbol
               (Property_operator_tounit_print_symbol_t.Property_operator_tounit_print_constructor
                 "Poi_h"))),
          [1; 1; 38; 18]);
        Tree_t.Inner
         ((Property_symbol_t.Property_operand_symbol
            (Property_operand_symbol_t.Property_operand_target_symbol
              (Property_operand_target_symbol_t.Property_operand_target_created_symbol
                (Property_operand_target_created_symbol_t.Property_operand_target_created_constructor
                  "Poi_h"))),
           [2; 1; 38; 18]),
         [Tree_t.Leaf
           (Property_symbol_t.Property_operator_symbol
             (Property_operator_symbol_t.Property_operator_creation_symbol
               (Property_operator_creation_symbol_t.Property_operator_creation_toentity_symbol
                 (Property_operator_creation_toentity_symbol_t.Property_operator_creation_toentity_constructor
                   "Hom_b_2"))),
            [1; 2; 1; 38; 18]);
          Tree_t.Leaf
           (Property_symbol_t.Property_operand_symbol
             (Property_operand_symbol_t.Property_operand_external_symbol
               (Property_operand_external_symbol_t.Property_operand_external_constructor
                 "Poi_a")),
            [2; 2; 1; 38; 18])])])])])
);;

let tag_pro_l = Property_tag_all_list_by_input_fullnameoffile_provider_v.provide fno_inp;;

open Property_operand_target_created_container_v;;

(* Argument tag_ptc "Poi_h" *)

let pre_tag_ptc_sof sof (s, i) = (Property_symbol_v.property_operand_target_created_constructor sof = s);;
let nam_ivn_ptc = "Poi_h";;
let tag_pro_ptc_l = List.filter (pre_tag_ptc_sof nam_ivn_ptc) tag_pro_l;;

let tag_pro_ptc = List_v.only_element_of_predicate_off_list (pre_tag_ptc_sof nam_ivn_ptc) tag_pro_l;;

test_number 2 (
(tag_pro_ptc : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_operand_symbol
    (Property_operand_symbol_t.Property_operand_target_symbol
      (Property_operand_target_symbol_t.Property_operand_target_created_symbol
        (Property_operand_target_created_symbol_t.Property_operand_target_created_constructor
          "Poi_h"))),
   [2; 1; 38; 18])
);;
 
(** {6 Builder Tag List} *)

let tag_ptc = Tag_v.map_entity (* Coerce Down *) 
    Property_symbol_v.property_operand_target_created_symbol_off_property_symbol
  tag_pro_ptc;;

test_number 3 (
(tag_ptc :
  Property_operand_target_created_symbol_t.property_operand_target_created_symbol
  Tag_t.tag ) =
  (Property_operand_target_created_symbol_t.Property_operand_target_created_constructor
    "Poi_h",
   [2; 1; 38; 18])
);;

let tag_pro_l = builder_tag_list tag_ptc;;

test_number 4 (
( tag_pro_l : Property_symbol_t.property_symbol Tag_t.tag list ) =
  [(Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_creation_symbol
       (Property_operator_creation_symbol_t.Property_operator_creation_toentity_symbol
         (Property_operator_creation_toentity_symbol_t.Property_operator_creation_toentity_constructor
           "Hom_b_2"))),
    [1; 2; 1; 38; 18]);
   (Property_symbol_t.Property_operand_symbol
     (Property_operand_symbol_t.Property_operand_external_symbol
       (Property_operand_external_symbol_t.Property_operand_external_constructor
         "Poi_a")),
    [2; 2; 1; 38; 18])]
);;  
  
(** {6 Builder Duo} *)

let tag_d = builder_tag_duo tag_ptc;;

test_number 5 (
(tag_d : Property_symbol_t.property_symbol Tag_t.tag Duo_t.duo ) =
  ((Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_creation_symbol
       (Property_operator_creation_symbol_t.Property_operator_creation_toentity_symbol
         (Property_operator_creation_toentity_symbol_t.Property_operator_creation_toentity_constructor
           "Hom_b_2"))),
    [1; 2; 1; 38; 18]),
   (Property_symbol_t.Property_operand_symbol
     (Property_operand_symbol_t.Property_operand_external_symbol
       (Property_operand_external_symbol_t.Property_operand_external_constructor
         "Poi_a")),
    [2; 2; 1; 38; 18]))
);;

(** {6 Container} *)

let con_ptc = container_of_tag tag_ptc;;

test_number 6 (
(con_ptc :  
   (Property_operator_creation_symbol_t.property_operator_creation_symbol
   Tag_t.tag, Property_operand_symbol_t.property_operand_symbol Tag_t.tag)
  Doublet_t.doublet ) =
  ((Property_operator_creation_symbol_t.Property_operator_creation_toentity_symbol
     (Property_operator_creation_toentity_symbol_t.Property_operator_creation_toentity_constructor
       "Hom_b_2"),
    [1; 2; 1; 38; 18]),
   (Property_operand_symbol_t.Property_operand_external_symbol
     (Property_operand_external_symbol_t.Property_operand_external_constructor
       "Poi_a"),
    [2; 2; 1; 38; 18]))
);;

(** {9 Operator Tag} *)

let tag_pro_poc = property_as_operator_creation_tag tag_ptc;;

test_number 7 (
(tag_pro_poc : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_operator_symbol
    (Property_operator_symbol_t.Property_operator_creation_symbol
      (Property_operator_creation_symbol_t.Property_operator_creation_toentity_symbol
        (Property_operator_creation_toentity_symbol_t.Property_operator_creation_toentity_constructor
          "Hom_b_2"))),
   [1; 2; 1; 38; 18])
);;

let tag_poc = property_operator_creation_tag tag_ptc;;

test_number 8 (
( tag_poc :
  Property_operator_creation_symbol_t.property_operator_creation_symbol
  Tag_t.tag ) =
  (Property_operator_creation_symbol_t.Property_operator_creation_toentity_symbol
    (Property_operator_creation_toentity_symbol_t.Property_operator_creation_toentity_constructor
      "Hom_b_2"),
   [1; 2; 1; 38; 18])
);;

(** {9 Operand Tag} *)

let tag_pro_pop = property_as_operand_tag tag_ptc;;

test_number 9 (
(tag_pro_pop : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_operand_symbol
    (Property_operand_symbol_t.Property_operand_external_symbol
      (Property_operand_external_symbol_t.Property_operand_external_constructor
        "Poi_a")),
   [2; 2; 1; 38; 18])
);;

let tag_pop = property_operand_tag tag_ptc;;

test_number 10 (
(tag_pop : Property_operand_symbol_t.property_operand_symbol Tag_t.tag ) =
  (Property_operand_symbol_t.Property_operand_external_symbol
    (Property_operand_external_symbol_t.Property_operand_external_constructor
      "Poi_a"),
   [2; 2; 1; 38; 18])
);;

(** {6 Fence Tag off Tag} *)

let fen_pro_ptc_l = fence_as_list tag_ptc;;

test_number 11 (
(fen_pro_ptc_l : Property_symbol_t.property_symbol Tag_t.tag list ) =
 [(Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_creation_symbol
       (Property_operator_creation_symbol_t.Property_operator_creation_toentity_symbol
         (Property_operator_creation_toentity_symbol_t.Property_operator_creation_toentity_constructor
           "Hom_b_2"))),
    [1; 2; 1; 38; 18]);
   (Property_symbol_t.Property_operand_symbol
     (Property_operand_symbol_t.Property_operand_external_symbol
       (Property_operand_external_symbol_t.Property_operand_external_constructor
         "Poi_a")),
    [2; 2; 1; 38; 18])]
);; 

