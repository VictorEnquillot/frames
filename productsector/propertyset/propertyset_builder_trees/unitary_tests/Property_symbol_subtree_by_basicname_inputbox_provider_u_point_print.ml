open Make_test_v;;

testing "Property_symbol_subtree_by_basicname_inputbox_provider_v with
    Property_symbol_subtree_by_basicname_inputbox_provider_u_point_print.ml";;

(* Deleting Registers *)







(* Tracing *)


(* toplevel 
   #use "Property_symbol_subtree_by_basicname_inputbox_provider_u_point_print.ml";; 

*)

(* Input File *)

let nam_ibo = "Point_print";;
let dir_inp ="/keep/sources/ocaml_top/setup/frames/inputset/files/";;
let nam_ibo = dir_inp ^ nam_inp;;

let sym_loi_t = Localinput_symbol_subtree_by_basicname_inputbox_provider_v.provide nam_ibo;;

let sym_roo = Tree_v.root_off_tree sym_loi_t;;

test_number 1 (
(sym_roo : Localinput_symbol_t.localinput_symbol)
=
Localinput_symbol_t.Localinput_file
  "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_print"
);;

let sym_pro_t = Property_symbol_subtree_by_basicname_inputbox_provider_v.provide nam_ibo;;

test_number 2 (
( sym_pro_t : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Property_symbol_t.Property_environment_symbol
     (Property_environment_symbol_t.Property_localinput_file_symbol
       (Property_localinput_file_symbol_t.Property_localinput_file_constructor
         "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_print")),
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
           "figure_point_constructor T_A"))])])
);;
