open Make_test_v;;

testing "Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_v with
    Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_u_point_print_debug.ml";;

(* Deleting Registers *)







(* Tracing *)


(* toplevel 
   #use "Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_u_point_print_debug.ml";; 

*)

(* Input File *)

let nam_ibo = "Point_print";;

let sym_loi_t = Localinput_symbol_subtree_by_basicname_inputbox_provider_v.provide nam_ibo;;

let sym_roo = Tree_v.root_off_tree sym_loi_t;;

test_number 1 (
(sym_roo : Localinput_symbol_t.localinput_symbol)
=
Localinput_symbol_t.Localinput_file
  "/keep/sources/ocaml_top/setup/frames/inputset/files/Point_print"
);;

open Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_v;;

let nam_ivn = "Poi_a";;

let nam_ivn_cur = nam_ivn;;

let kin_ivn_cur = 
      Localinput_variable_kind_by_localinput_set_fence_variable_name_entity_tag_provider_v.provide 
	nam_ivn_cur;;

test_number 2 ( 
(kin_ivn_cur : Localinput_symbol_t.localinput_symbol) =
Localinput_symbol_t.Localinput_keyword_symbol
  Localinput_keyword_symbol_t.Localinput_keyword_external
);;

let tag_fig_ext = 
  Figure_tag_by_localinput_set_fence_variable_name_entity_tag_provider_v.provide 
    nam_ivn_cur;;

test_number 3 (
(tag_fig_ext : Figure_symbol_t.figure_symbol Tag_t.tag ) =
  (Figure_symbol_t.Figure_field_symbol
    (Figure_field_symbol_t.Figure_fence_symbol
      (Figure_fence_symbol_t.Figure_point_symbol
        (Figure_point_symbol_t.Figure_point_constructor "Poi_a"))),
   [1; 29; 6])
);;

let sym_pro_ext = 
  Property_symbol_v.property_set_body_operand_figure_tag 
    tag_fig_ext ;;

test_number 4 (
(sym_pro_ext : Property_symbol_t.property_symbol ) =
Property_symbol_t.Property_fence_symbol
  (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
     (Property_set_fence_operand_external_symbol_t.Property_set_body_operand_figure_tag
	(Figure_symbol_t.Figure_field_symbol
           (Figure_field_symbol_t.Figure_fence_symbol
              (Figure_fence_symbol_t.Figure_point_symbol
		 (Figure_point_symbol_t.Figure_point_constructor "Poi_a"))),
         [1; 29; 6])))
);;

let sym_pro_st = Tree_v.make_of_leaf sym_pro_ext;;

test_number 5 (
(sym_pro_st : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Property_symbol_t.Property_fence_symbol
      (Property_fence_symbol_t.Property_set_fence_operand_external_symbol
	 (Property_set_fence_operand_external_symbol_t.Property_set_body_operand_figure_tag
            (Figure_symbol_t.Figure_field_symbol
               (Figure_field_symbol_t.Figure_fence_symbol
		  (Figure_fence_symbol_t.Figure_point_symbol
		     (Figure_point_symbol_t.Figure_point_constructor "Poi_a"))),
             [1; 29; 6]))))
);;

test_number 6 (
sym_pro_st = provide nam_ivn
);;
