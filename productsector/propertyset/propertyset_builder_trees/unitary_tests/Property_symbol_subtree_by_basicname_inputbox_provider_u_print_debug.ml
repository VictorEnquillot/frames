open Make_test_v;;

testing "Property_symbol_subtree_by_basicname_inputbox_provider_v with
    Property_symbol_subtree_by_basicname_inputbox_provider_u_print_debug.ml";;

(* Deleting Registers *)









(* Tracing *)


(* toplevel 
   #use "Property_symbol_subtree_by_basicname_inputbox_provider_u_print_debug.ml";; 

*)

(* Input File *)

let nam_ibo = "Print";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let nam_ibo = dir_inp ^ nam_inp;;

let sym_loi_t = Localinput_symbol_subtree_by_basicname_inputbox_provider_v.provide nam_ibo;;

test_number 1 (
(sym_loi_t : Localinput_symbol_t.localinput_symbol Tree_t.tree) =

  Tree_t.Inner
   (Localinput_symbol_t.Localinput_file
     "/keep/sources/ocaml_top/setup/frames/inputset/files/Print",
   [Tree_t.Inner
     (Localinput_symbol_t.Localinput_command_symbol
       Localinput_command_symbol_t.Localinput_command_define,
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_variable_symbol
         (Localinput_variable_symbol_t.Localinput_variable_name "Poi_a"));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_keyword_symbol
         Localinput_keyword_symbol_t.Localinput_keyword_external,
       [Tree_t.Inner
         (Localinput_symbol_t.Localinput_keyword_symbol
           Localinput_keyword_symbol_t.Localinput_keyword_type,
         [Tree_t.Leaf
           (Localinput_symbol_t.Localinput_constant_symbol
             (Localinput_constant_symbol_t.Localinput_constant_string "figure"));
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_constant_symbol
             (Localinput_constant_symbol_t.Localinput_constant_string "point"))]);
        Tree_t.Inner
         (Localinput_symbol_t.Localinput_keyword_symbol
           Localinput_keyword_symbol_t.Localinput_keyword_name,
         [Tree_t.Leaf
           (Localinput_symbol_t.Localinput_basic_symbol
             (Localinput_basic_symbol_t.Localinput_basic_string "T_A"))]);
        Tree_t.Inner
         (Localinput_symbol_t.Localinput_keyword_symbol
           Localinput_keyword_symbol_t.Localinput_keyword_context,
         [Tree_t.Leaf
           (Localinput_symbol_t.Localinput_basic_symbol
             (Localinput_basic_symbol_t.Localinput_basic_string "Con_db1"))])]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_keyword_symbol
         Localinput_keyword_symbol_t.Localinput_keyword_end)]);
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_command_symbol
       Localinput_command_symbol_t.Localinput_command_print,
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_variable_symbol
         (Localinput_variable_symbol_t.Localinput_variable_name "Poi_a"));
      Tree_t.Inner
       (Localinput_symbol_t.Localinput_keyword_symbol
         (Localinput_keyword_symbol_t.Localinput_keyword_units_symbol
           Localinput_keyword_units_symbol_t.Localinput_keyword_units_constructor),
       [Tree_t.Inner
         (Localinput_symbol_t.Localinput_keyword_symbol
           Localinput_keyword_symbol_t.Localinput_keyword_units_item,
         [Tree_t.Leaf
           (Localinput_symbol_t.Localinput_basic_symbol
             (Localinput_basic_symbol_t.Localinput_basic_string "length"));
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_basic_symbol
             (Localinput_basic_symbol_t.Localinput_basic_string "meter"))]);
        Tree_t.Inner
         (Localinput_symbol_t.Localinput_keyword_symbol
           Localinput_keyword_symbol_t.Localinput_keyword_units_item,
         [Tree_t.Leaf
           (Localinput_symbol_t.Localinput_basic_symbol
             (Localinput_basic_symbol_t.Localinput_basic_string "angle"));
          Tree_t.Leaf
           (Localinput_symbol_t.Localinput_basic_symbol
             (Localinput_basic_symbol_t.Localinput_basic_string "radian"))]);
        Tree_t.Leaf
         (Localinput_symbol_t.Localinput_keyword_symbol
           Localinput_keyword_symbol_t.Localinput_keyword_end)]);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_keyword_symbol
         Localinput_keyword_symbol_t.Localinput_keyword_end)]);
    Tree_t.Inner
     (Localinput_symbol_t.Localinput_command_symbol
       Localinput_command_symbol_t.Localinput_command_print,
     [Tree_t.Leaf
       (Localinput_symbol_t.Localinput_keyword_symbol
         Localinput_keyword_symbol_t.Localinput_keyword_statistics);
      Tree_t.Leaf
       (Localinput_symbol_t.Localinput_keyword_symbol
         Localinput_keyword_symbol_t.Localinput_keyword_end)]);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_command_symbol
       Localinput_command_symbol_t.Localinput_command_stop)])
);;

open Property_symbol_subtree_by_basicname_inputbox_provider_v;;

let tag_loi_pow_l =
  Localinput_as_command_print_or_write_tag_list_by_basicname_inputbox_provider_v.provide 
    nam_ibo;;

let tag_ico_pow_l = List.map (* Coerce Down *)
    (Tag_v.map_entity Localinput_symbol_v.localinput_command_symbol_off_localinput_symbol)
    tag_loi_pow_l;;

test_number 2 (
(tag_ico_pow_l : Localinput_command_symbol_t.localinput_command_symbol Tag_t.tag list ) =
  [(Localinput_command_symbol_t.Localinput_command_print, [2; 34]);
   (Localinput_command_symbol_t.Localinput_command_print, [3; 34])]
);;

(* Point Poi_a *)
let tag_ico = List.nth tag_ico_pow_l 0;;

test_number 3 (
(tag_ico : Localinput_command_symbol_t.localinput_command_symbol Tag_t.tag )
  =
(Localinput_command_symbol_t.Localinput_command_print, [2; 34])
);;

let localinput_as_command_print_or_write_symbol_subtree_list_of_localinput_fullnameoffile nam_ibo =
  let tag_loi_pow_stl =
    Localinput_as_command_print_or_write_tag_subtree_list_by_basicname_inputbox_provider_v.provide
      nam_ibo
  in
  List.map (Tree_v.map Tag_v.entity_off_tag) tag_loi_pow_stl 
;;

let localinput_as_command_print_or_write_symbol_list_of_localinput_fullnameoffile nam_ibo =
  let sym_loi_pow_stl =
    localinput_as_command_print_or_write_symbol_subtree_list_of_localinput_fullnameoffile 
      nam_ibo
  in
  List.map Tree_v.root_off_tree sym_loi_pow_stl
;;

(* Target or Localinput_variable_name Branch *)

let topson_localinput_variable_name_symbol_of_localinput_symbol_tree sym_loi_t =
  let sym_loi_lts_l = Tree_v.topson_leaf_node_list_off_tree sym_loi_t in
  let sym_loi_var_l = List.filter Localinput_symbol_v.is_localinput_variable_name sym_loi_lts_l in
  List_v.element_off_one_element_list sym_loi_var_l
;;

let localinput_variable_name_name_list_of_localinput_as_command_print_or_write_tag_subtree_list sym_loi_pow_stl =
  let sym_loi_var_l = List.map 
      topson_localinput_variable_name_symbol_of_localinput_symbol_tree 
      sym_loi_pow_stl
  in
  List.map Localinput_symbol_v.string_off sym_loi_var_l
;;

let localinput_variable_name_name_list_of_localinput_fullnameoffile nam_ibo =
  let sym_loi_pow_stl =
    localinput_as_command_print_or_write_symbol_subtree_list_of_localinput_fullnameoffile 
      nam_ibo
  in
  localinput_variable_name_name_list_of_localinput_as_command_print_or_write_tag_subtree_list sym_loi_pow_stl 
;;

let localinput_variable_name_name_n_kind_list_of_localinput_fullnameoffile nam_ibo =
  let nam_var_l =
    localinput_variable_name_name_list_of_localinput_fullnameoffile 
      nam_ibo 
  in
  let kin_var_l = List.map 
      Localinput_variable_kind_by_localinput_set_fence_variable_name_entity_tag_provider_v.provide 
      nam_var_l
  in
  Doublet_list_v.make nam_var_l kin_var_l
;;

(* Localinput_variable_target Branch *)

let localinput_as_variable_target_symbol_list_of_localinput_fullnameoffile nam_ibo =
  let nam_n_kin_var_l =
    localinput_variable_name_name_n_kind_list_of_localinput_fullnameoffile 
      nam_ibo 
  in
  
  List.filter (fun (n, k) -> Localinput_symbol_v.is_localinput_keyword_target k) nam_n_kin_var_l
;;

(* Localinput_variable_external Branch *)

let localinput_as_variable_external_symbol_list_of_localinput_fullnameoffile nam_ibo =
  let nam_n_kin_var_l =
    localinput_variable_name_name_n_kind_list_of_localinput_fullnameoffile 
      nam_ibo 
  in
  
  List.filter (fun (n, k) -> Localinput_symbol_v.is_localinput_keyword_external k) nam_n_kin_var_l
;;


let localinput_as_variable_external_symbol_of_variable_name nam_iva =
  Localinput_as_variable_external_symbol_by_localinput_set_fence_variable_name_entity_tag_provider_v.provide nam_iva 
;;

  
let tag_loi_com_t = 
  Localinput_tag_subtree_by_localinput_body_handle_command_tag_provider_v.provide 
    tag_ico;;
let sym_loi_com_t = Tree_v.map Tag_v.entity_off_tag tag_loi_com_t;;
let sym_loi_vna =
    topson_localinput_variable_name_symbol_of_localinput_symbol_tree 
      sym_loi_com_t;;

test_number 4 (
(sym_loi_vna : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_variable_symbol
   (Localinput_variable_symbol_t.Localinput_variable_name "Poi_a")
);;

let nam_ivn = Localinput_symbol_v.string_off sym_loi_vna;;

test_number 5 (
(nam_ivn : string ) =
 "Poi_a"
);;

let str_mak_ext_l = 
      Localinput_variable_type_string_list_by_localinput_set_fence_variable_name_entity_tag_provider_v.provide 
        nam_ivn;;

test_number 6 (
(str_mak_ext_l : string list ) = 
["figure"; "point"]
);;

 let str_mak_ext = List_v.name_underscored_off_string_list str_mak_ext_l;; 

let nam_dom = List.hd str_mak_ext_l;;
let str_mak_pro = ("property_set_body_operand_" ^ nam_dom ^ "_symbol" );;
let sym_pro_lto = Property_symbol_v.make str_mak_pro str_mak_ext;;

let sym_pro_lto_st = Tree_v.make_of_leaf sym_pro_lto;;

test_number 7 (
( sym_pro_lto_st : Property_symbol_t.property_symbol Tree_t.tree ) =
Tree_t.Leaf
  (Property_symbol_t.Property_set_body_operand_symbol
     (Property_set_body_operand_symbol_t.Property_set_body_operand_figure_symbol "figure_point"))
);;

let sym_pro_lto_st = property_as_operand_symbol_subtree_of_localinput_command_print_tag tag_ico;;
test_number 8 (
( sym_pro_lto_st : Property_symbol_t.property_symbol Tree_t.tree ) =
Tree_t.Leaf
  (Property_symbol_t.Property_set_body_operand_symbol
     (Property_set_body_operand_symbol_t.Property_set_body_operand_figure_symbol "figure_point"))
);;
 

let sym_pro_ifi = Property_symbol_v.property_localinput_file_constructor nam_ibo ;;

let sym_pro_tar = 
  property_as_target_unit_symbol_of_localinput_command_tag 
    tag_ico;;

  let sym_pro_oun_st = 
    Property_as_operator_tounit_symbol_subtree_by_localinput_command_print_tag_provider_v.provide 
      tag_ico;;

let sym_pro_tar_st =
    property_as_target_unit_symbol_subtree_of_localinput_command_tag 
    tag_ico;;


test_number 9 (
(sym_pro_tar_st : 'a Tree_t.tree ) = 
Tree_t.Inner
 (Property_symbol_t.Property_set_body_operand_target_symbol
   Property_set_body_operand_target_symbol_t.Property_target_body_implicit_unit,
 [Tree_t.Inner
   (Property_symbol_t.Operator_fence_symbol
     (Operator_fence_symbol_t.Operator_fence_tounit "operator_print"),
   [Tree_t.Leaf
     (Property_symbol_t.Property_external_symbol
       (Property_external_symbol_t.Property_external_elementary_symbol
         "elementary_units_length_meter"));
    Tree_t.Leaf
     (Property_symbol_t.Property_external_symbol
       (Property_external_symbol_t.Property_external_elementary_symbol
         "elementary_units_angle_radian"))]);
  Tree_t.Leaf
   (Property_symbol_t.Property_set_body_operand_symbol
     (Property_set_body_operand_symbol_t.Property_set_body_operand_figure_symbol "figure_point"))])
);;


(* statitics *)

let tag_ico = List.nth tag_ico_pow_l 1;;

test_number 10 (
(tag_ico : Localinput_command_symbol_t.localinput_command_symbol Tag_t.tag )
  =
(Localinput_command_symbol_t.Localinput_command_print, [3; 34])
);;

let tag_loi_com_st = 
  Localinput_tag_subtree_by_localinput_body_handle_command_tag_provider_v.provide 
    tag_ico;;
let sym_loi_com_st = Tree_v.map Tag_v.entity_off_tag tag_loi_com_st;;

test_number 11 (
(sym_loi_com_st : Localinput_symbol_t.localinput_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Localinput_symbol_t.Localinput_command_symbol
     Localinput_command_symbol_t.Localinput_command_print,
   [Tree_t.Leaf
     (Localinput_symbol_t.Localinput_keyword_symbol
       Localinput_keyword_symbol_t.Localinput_keyword_statistics);
    Tree_t.Leaf
     (Localinput_symbol_t.Localinput_keyword_symbol
       Localinput_keyword_symbol_t.Localinput_keyword_end)])
);; 

let sym_loi_lea =
  Tree_v.only_topson_leaf_node_of_node_predicate_off_tree 
    (fun s -> not (Localinput_symbol_v.is_localinput_keyword_end s))
    sym_loi_com_st;;

test_number 12 (
( sym_loi_lea : Localinput_symbol_t.localinput_symbol ) =
  Localinput_symbol_t.Localinput_keyword_symbol
   Localinput_keyword_symbol_t.Localinput_keyword_statistics
);;

let sym_pro_t = Property_symbol_subtree_by_basicname_inputbox_provider_v.provide nam_ibo;;

test_number 13 (
( sym_pro_t : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Property_symbol_t.Property_environment_symbol
     (Property_environment_symbol_t.Property_localinput_file_symbol
       (Property_localinput_file_symbol_t.Property_localinput_file_constructor
         "/keep/sources/ocaml_top/setup/frames/inputset/files/Print")),
   [Tree_t.Inner
     (Property_symbol_t.Property_set_body_operand_target_symbol
       Property_set_body_operand_target_symbol_t.Property_target_body_implicit_unit,
     [Tree_t.Inner
       (Property_symbol_t.Operator_fence_symbol
         (Operator_fence_symbol_t.Operator_fence_tounit "operator_print"),
       [Tree_t.Leaf
         (Property_symbol_t.Property_external_symbol
           (Property_external_symbol_t.Property_external_elementary_symbol
             "elementary_units_length_meter"));
        Tree_t.Leaf
         (Property_symbol_t.Property_external_symbol
           (Property_external_symbol_t.Property_external_elementary_symbol
             "elementary_units_angle_radian"))]);
      Tree_t.Leaf
       (Property_symbol_t.Property_set_body_operand_symbol
         (Property_set_body_operand_symbol_t.Property_set_body_operand_figure_symbol
           "figure_point"))]);
    Tree_t.Inner
     (Property_symbol_t.Property_set_body_operand_target_symbol
       Property_set_body_operand_target_symbol_t.Property_target_body_implicit_unit,
     [Tree_t.Inner
       (Property_symbol_t.Operator_fence_symbol
         (Operator_fence_symbol_t.Operator_fence_tounit "operator_print"),
       [Tree_t.Empty])])])
);;
