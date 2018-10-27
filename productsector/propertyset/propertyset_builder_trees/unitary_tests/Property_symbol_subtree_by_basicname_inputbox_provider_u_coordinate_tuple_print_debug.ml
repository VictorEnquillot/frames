open Make_test_v;;

testing "Property_symbol_subtree_by_basicname_inputbox_provider_v with
    Property_symbol_subtree_by_basicname_inputbox_provider_u_coordinate_tuple_print_debug.ml";;

(* Deleting Registers *)







(* Tracing *)


(* toplevel 
   #use "Property_symbol_subtree_by_basicname_inputbox_provider_u_coordinate_tuple_print_debug.ml";; 

*)

(* Input File *)

let nam_ibo = "Coordinate_tuple_print";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let nam_ibo = dir_inp ^ nam_inp;;

let sym_loi_t = Localinput_symbol_subtree_by_basicname_inputbox_provider_v.provide nam_ibo;;

let tag_loi_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide nam_ibo;;

let sym_roo = Tree_v.root_off_tree sym_loi_t;;

test_number 1 (
(sym_roo : Localinput_symbol_t.localinput_symbol)
=
Localinput_symbol_t.Localinput_file
  "/keep/sources/ocaml_top/setup/frames/inputset/files/Coordinate_tuple_print"
);;

open Property_symbol_subtree_by_basicname_inputbox_provider_v;;

let sym_pro_dom = Property_symbol_v.property_domain "property";;

let sym_pro_ifi = Property_symbol_v.property_localinput_file nam_ibo;;

let tag_loi_com = List.find (fun (s, i) -> Localinput_symbol_v.is_localinput_command_print s) tag_loi_l;;
let tag_ico = Tag_v.map_entity Localinput_symbol_v.localinput_command_symbol_off_localinput_symbol tag_loi_com;;

let nam_var = 
  Localinput_variable_name_by_localinput_body_handle_command_tag_provider_v.provide
    tag_ico;;

test_number 2 (
(nam_var : string ) = 
"Ctc_a"
);;

let sym_pro_tun_stl = 
  property_as_target_implicit_unit_symbol_subtree_list_of_localinput_fullnameoffile 
    nam_ibo;;

test_number 3 (
( sym_pro_tun_stl : Property_symbol_t.property_symbol Tree_t.tree list ) =
 [Tree_t.Inner
    (Property_symbol_t.Property_body_symbol
      (Property_body_symbol_t.Property_set_body_operand_target_symbol
        (Property_set_body_operand_target_symbol_t.Property_target_body_implicit_unit_symbol
          (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
            "Ctc_a"))),
    [Tree_t.Leaf
      (Property_symbol_t.Property_fence_symbol
        (Property_fence_symbol_t.Operator_fence_symbol
          (Operator_fence_symbol_t.Operator_fence_tounit
            (Operator_tounit_symbol_t.Operator_print "Ctc_a", [1; 3; 12]))));
     Tree_t.Leaf
      (Property_symbol_t.Property_fence_symbol
        (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
          (Property_set_fence_operand_external_symbol_t.Property_set_body_operand_elementary_tag
            (Elementary_symbol_t.Elementary_body_symbol
              (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
                (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
                  (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
                    (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
                      "T_A")))),
             [1; 1; 4]))))])]
);;

(* Operand *)

let kin_var = Localinput_variable_kind_by_localinput_set_fence_variable_name_entity_tag_provider_v.provide nam_var;;

test_number 4 (
(kin_var : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_keyword_symbol
   Localinput_keyword_symbol_t.Localinput_keyword_external
);;

let con_var = Context_name_by_external_localinput_set_fence_variable_name_entity_tag_provider_v.provide nam_var ;;

test_number 5 ( 
(con_var : string ) = 
"Con_db1"
);;

let nam_dom = Domain_name_by_context_localinput_set_fence_variable_name_entity_tag_provider_v.provide con_var in
test_number 6 ( 
(nam_dom : string ) = 
"elementary"
);;

let nam_dba = Database_name_by_context_localinput_set_fence_variable_name_entity_tag_provider_v.provide con_var;;

test_number 7 ( 
(nam_dba : string ) = 
"db1"
);;

let tag_ecr = Elementary_createdby_tag_by_database_name_provider_v.provide nam_dba;;

test_number 8 (
(tag_ecr : Elementary_createdby_symbol_t.elementary_createdby_symbol Tag_t.tag ) =
  (Elementary_createdby_symbol_t.Elementary_database "db1", [1; 4])
);;

let sof_ele = String_off_in_database_by_external_localinput_set_fence_variable_name_entity_tag_provider_v.provide nam_var;;

test_number 9 ( 
(sof_ele : string ) = 
"T_A"
);;

let tag_ele_l =  
  Elementary_tag_all_list_by_elementary_createdby_tag_provider_v.provide 
    tag_ecr;;

let tag_ele =
    List_v.only_element_of_predicate_off_list 
      (fun t -> Elementary_tag_v.string_off t = sof_ele)
      tag_ele_l;;

test_number 10 (
(tag_ele : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
(Elementary_symbol_t.Elementary_body_symbol
   (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
      (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
         (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
            (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
               "T_A")))),
 [1; 1; 4])
);;

let sym_pro_t = Property_symbol_subtree_by_basicname_inputbox_provider_v.provide nam_ibo;; 

test_number 11 (
( sym_pro_t : Property_symbol_t.property_symbol Tree_t.tree ) =
 Tree_t.Inner
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_domain "property"),
   [Tree_t.Inner
     (Property_symbol_t.Property_context_symbol
       (Property_context_symbol_t.Property_localinput_file
         "/keep/sources/ocaml_top/setup/frames/inputset/files/Coordinate_tuple_print"),
     [Tree_t.Inner
       (Property_symbol_t.Property_body_symbol
         (Property_body_symbol_t.Property_set_body_operand_target_symbol
           (Property_set_body_operand_target_symbol_t.Property_target_body_implicit_unit_symbol
             (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
               "Ctc_a"))),
       [Tree_t.Leaf
         (Property_symbol_t.Property_fence_symbol
           (Property_fence_symbol_t.Operator_fence_symbol
             (Operator_fence_symbol_t.Operator_fence_tounit
               (Operator_tounit_symbol_t.Operator_print "Ctc_a", [1; 3; 12]))));
        Tree_t.Leaf
         (Property_symbol_t.Property_fence_symbol
           (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
             (Property_set_fence_operand_external_symbol_t.Property_set_body_operand_elementary_tag
               (Elementary_symbol_t.Elementary_body_symbol
                 (Elementary_body_symbol_t.Elementary_coordinate_tuple_symbol
                   (Elementary_coordinate_tuple_symbol_t.Elementary_coordinate_tuple_homogeneous_symbol
                     (Elementary_coordinate_tuple_homogeneous_symbol_t.Elementary_coordinate_tuple_cartesian_symbol
                       (Elementary_coordinate_tuple_cartesian_symbol_t.Elementary_coordinate_tuple_cartesian_constructor
                         "T_A")))),
                [1; 1; 4]))))])])])
);;


