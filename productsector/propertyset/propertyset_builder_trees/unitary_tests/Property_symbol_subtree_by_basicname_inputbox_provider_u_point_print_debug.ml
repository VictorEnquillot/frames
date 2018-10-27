open Make_test_v;;

testing "Property_symbol_subtree_by_basicname_inputbox_provider_v with
    Property_symbol_subtree_by_basicname_inputbox_provider_u_point_print_debug.ml";;

(* Deleting Registers *)


(* Tracing *)


(* Debugging *)


(* toplevel 
   #use "Property_symbol_subtree_by_basicname_inputbox_provider_u_point_print_debug.ml";; 

*)

(* Input File *)

let nam_ibo = "Point_print";;

let sym_pro_ifi = Property_symbol_v.property_context_inputfile_constructor nam_ibo;; 

test_number 1 (
(sym_pro_ifi : Property_symbol_t.property_symbol) =
  Property_symbol_t.Property_context_symbol
   (Property_context_symbol_t.Property_context_inputfile_symbol
     (Property_context_inputfile_symbol_t.Property_context_inputfile_constructor
       "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Point_print"))
);;

let tag_loi_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide nam_ibo;;
  
let pre_tag_lhc (s, i) = Localinput_symbol_v.is_localinput_body_handle_command_symbol_off_localinput_symbol s;;

let tag_loi_lhc_l = List.filter pre_tag_lhc tag_loi_l;;

test_number 2 (
(tag_loi_lhc_l : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Con_db1"))))),
    [1; 40; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Poi_a"))))),
    [2; 40; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Uni_len"))))),
    [3; 40; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_creation_symbol
           (Localinput_body_handle_command_creation_symbol_t.Localinput_body_handle_command_creation_define_symbol
             (Localinput_body_handle_command_creation_define_symbol_t.Localinput_body_handle_command_creation_define_constructor
               "Uni_ang"))))),
    [4; 40; 11]);
   (Localinput_symbol_t.Localinput_body_symbol
     (Localinput_body_symbol_t.Localinput_body_handle_symbol
       (Localinput_body_handle_symbol_t.Localinput_body_handle_command_symbol
         (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_symbol
           (Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
             (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
               "Poi_a"))))),
    [5; 40; 11])]
);;

let pre_tag_lup (s, i) = Localinput_symbol_v.is_localinput_body_handle_command_unit_print_constructor s;;
let pre_tag_lup_sof sof (s, i) = (Localinput_symbol_v.localinput_body_handle_command_unit_print_constructor sof = s);;

let nam_ivn_lup = "Poi_a";;
let tag_loi_lup = List_v.only_element_of_predicate_off_list (pre_tag_lup_sof nam_ivn_lup) tag_loi_l;;
let tag_ico_Poi_a = Tag_v.map_entity Localinput_symbol_v.localinput_body_handle_command_symbol_off_localinput_symbol tag_loi_lup;;

test_number 3 (
(tag_ico_Poi_a :
  Localinput_body_handle_command_symbol_t.localinput_body_handle_command_symbol
  Tag_t.tag ) =
  (Localinput_body_handle_command_symbol_t.Localinput_body_handle_command_unit_symbol
    (Localinput_body_handle_command_unit_symbol_t.Localinput_body_handle_command_unit_print_symbol
      (Localinput_body_handle_command_unit_print_symbol_t.Localinput_body_handle_command_unit_print_constructor
        "Poi_a")),
   [5; 40; 11])
);;

(*
let nam_var = 
  Localinput_variable_name_by_localinput_body_handle_command_tag_provider_v.provide
    tag_ico;;

test_number 4 (
(nam_var : string ) = 
"Poi_a"
);;

(* Operand external Poi_a aka T_A*)

let kin_var = Localinput_variable_kind_by_localinput_set_fence_variable_name_entity_tag_provider_v.provide nam_var;;

test_number 5 (
(kin_var : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_keyword_symbol
   Localinput_keyword_symbol_t.Localinput_keyword_external
);;

let con_var = Context_name_by_external_localinput_set_fence_variable_name_entity_tag_provider_v.provide nam_var ;;

test_number 6 ( 
(con_var : string ) = 
"Con_db1"
);;

let nam_dom = Domain_name_by_context_localinput_set_fence_variable_name_entity_tag_provider_v.provide con_var in
test_number 7 ( 
(nam_dom : string ) = 
"figure"
);;

let nam_dba = Database_name_by_context_localinput_set_fence_variable_name_entity_tag_provider_v.provide con_var;;

test_number 8 ( 
(nam_dba : string ) = 
"db1"
);;

let tag_ecr = Figure_createdby_tag_by_database_name_provider_v.provide nam_dba;;

test_number 9 (
(tag_ecr : Figure_createdby_symbol_t.figure_createdby_symbol Tag_t.tag ) =
  (Figure_createdby_symbol_t.Figure_database_symbol
    (Figure_database_symbol_t.Figure_database_constructor "db1"),
   [1; 6])
);;

let sof_fig = String_off_in_database_by_external_localinput_set_fence_variable_name_entity_tag_provider_v.provide nam_var;;

test_number 10 ( 
(sof_fig : string ) = 
"T_A"
);;

let tag_fig_l =  
  Figure_tag_all_list_by_figure_createdby_tag_provider_v.provide 
    tag_ecr;;

let tag_fig =
    List_v.only_element_of_predicate_off_list 
      (fun t -> Figure_tag_v.string_off t = sof_fig)
      tag_fig_l;;

test_number 11 (
(tag_fig : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_fence_symbol
      (Figure_fence_symbol_t.Figure_point_symbol
        (Figure_point_symbol_t.Figure_point_constructor "T_A"))),
   [1; 3; 1; 6])
);;

(* let property_as_target_implicit_unit_symbol_subtree_list_of_localinput_fullnameoffile nam_ibo = *)

let tag_loi_pow_l =
  Localinput_as_command_print_or_write_tag_list_by_basicname_inputbox_provider_v.provide 
    nam_ibo ;;

test_number 12 (
(tag_loi_pow_l : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_command_symbol
     Localinput_command_symbol_t.Localinput_command_print,
    [3; 29])]
);;

let tag_ico_pow_l = List.map (* Coerce Down *)
    (Tag_v.map_entity Localinput_symbol_v.localinput_command_symbol_off_localinput_symbol)
    tag_loi_pow_l;;

test_number 13 (
(tag_ico_pow_l :
  Localinput_command_symbol_t.localinput_command_symbol Tag_t.tag list ) =
  [(Localinput_command_symbol_t.Localinput_command_print, [3; 29])]
);;

let sym_pro_tim_stl = 
  List.map
    Property_as_target_implicit_unit_symbol_subtree_by_localinput_body_handle_command_unit_tag_provider_v.provide
    tag_ico_pow_l;;

let sym_pro_tim_stl = 
  property_as_target_implicit_unit_symbol_subtree_list_of_localinput_fullnameoffile 
    nam_ibo;;

test_number 14 (
( sym_pro_tim_stl : Property_symbol_t.property_symbol Tree_t.tree list ) =
 [Tree_t.Inner
    (Property_symbol_t.Property_body_symbol
      (Property_body_symbol_t.Property_set_body_operand_target_symbol
        (Property_set_body_operand_target_symbol_t.Property_target_body_implicit_unit_symbol
          (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
            "Poi_a"))),
    [Tree_t.Leaf
      (Property_symbol_t.Property_fence_symbol
        (Property_fence_symbol_t.Operator_fence_symbol
          (Operator_fence_symbol_t.Operator_fence_tounit
            (Operator_tounit_symbol_t.Operator_print "Poi_a", [1; 29; 12]))));
     Tree_t.Leaf
      (Property_symbol_t.Property_fence_symbol
        (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
          (Property_set_fence_operand_external_symbol_t.Property_set_body_operand_figure_tag
            (Figure_symbol_t.Figure_field_symbol
              (Figure_field_symbol_t.Figure_fence_symbol
                (Figure_fence_symbol_t.Figure_point_symbol
                  (Figure_point_symbol_t.Figure_point_constructor "Poi_a"))),
             [1; 29; 6]))))])]
);;

let sym_dom = Domain_symbol_v.domain_symbol_of_list_index 12;;

test_number 15 (
(sym_dom : Domain_symbol_t.domain_symbol ) = 
Domain_symbol_t.Operator
);;

let sym_dom = Domain_symbol_v.domain_symbol_of_list_index 6;;

test_number 16 (
(sym_dom : Domain_symbol_t.domain_symbol ) = 
Domain_symbol_t.Figure
);;

let sym_pro_t = Property_symbol_subtree_by_basicname_inputbox_provider_v.provide nam_ibo;; 

test_number 17 (
( sym_pro_t : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_domain "property"),
   [Tree_t.Inner
     (Property_symbol_t.Property_context_symbol
       (Property_context_symbol_t.Property_localinput_file
         "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_print"),
     [Tree_t.Inner
       (Property_symbol_t.Property_body_symbol
         (Property_body_symbol_t.Property_set_body_operand_target_symbol
           (Property_set_body_operand_target_symbol_t.Property_target_body_implicit_unit_symbol
             (Property_target_body_implicit_unit_symbol_t.Property_target_body_implicit_unit_constructor
               "Poi_a"))),
       [Tree_t.Leaf
         (Property_symbol_t.Property_fence_symbol
           (Property_fence_symbol_t.Operator_fence_symbol
             (Operator_fence_symbol_t.Operator_fence_tounit
               (Operator_tounit_symbol_t.Operator_print "Poi_a", [1; 29; 12]))));
        Tree_t.Leaf
         (Property_symbol_t.Property_fence_symbol
           (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
             (Property_set_fence_operand_external_symbol_t.Property_set_body_operand_figure_tag
               (Figure_symbol_t.Figure_field_symbol
                 (Figure_field_symbol_t.Figure_fence_symbol
                   (Figure_fence_symbol_t.Figure_point_symbol
                     (Figure_point_symbol_t.Figure_point_constructor "Poi_a"))),
                [1; 29; 6]))))])])])
);;
*)
