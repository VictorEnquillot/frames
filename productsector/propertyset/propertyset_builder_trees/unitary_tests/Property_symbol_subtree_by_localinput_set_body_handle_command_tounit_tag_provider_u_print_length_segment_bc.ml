open Make_test_v;;

testing "Property_symbol_subtree_by_localinput_set_body_handle_command_tounit_tag_provider_v with
        Property_symbol_subtree_by_localinput_set_body_handle_command_tounit_tag_provider_u_print_length_segment_bc.ml";;

(* Deleting Registers *)

(* Tracing *)

(* define Con_db1  *)
(*        context *)
(*          database "db1" *)
(*          domain "figure" *)
(*          end -- context *)
(*        end -- define *)

(* define Len *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "tomeasure" "constructor"] *)
(*          operation "length" *)
(*          ondomain "figure"   *)
(*          end -- operator *)
(*        end -- define *)

(* define Seg_bc *)
(*        external  *)
(*          type [ "figure" "set" "body" "segment" "constructor" ] *)
(*          external_name "BC" *)
(*          external_context Con_db1 *)
(*          end -- external *)
(*        end -- define *)

(* define Len_bc *)
(*        target  *)
(*          type [ "property" "operand" "target" "measured" "constructor" ] *)
(*          target_operator Len *)
(*          target_operand Seg_bc *)
(* 	    end -- target *)
(*        end -- define *)

(* define Uni_len *)
(*        external  *)
(*          type [ "units" "length" "bohr" ] *)
(*          external_context Con_nwc *)
(*          end -- external *)
(*        end -- define *)

(* print Len_bc *)
(*       units [ Uni_len ] *)
(*       end -- print *)

(* stop *)

(* toplevel 
   #use "Property_symbol_subtree_by_localinput_set_body_handle_command_tounit_tag_provider_u_print_length_segment_bc.ml";; 

*)

open Property_symbol_subtree_by_localinput_set_body_handle_command_tounit_tag_provider_v;;

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_length_segment_bc";;
let tag_loi_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide bna_ibo;;

let tag_loi_lct = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> Localinput_symbol_v.is_localinput_set_body_handle_command_tounit_print_constructor s)
    tag_loi_l
;;

test_number 1 (
( tag_loi_lct : Localinput_symbol_t.localinput_symbol Tag_t.tag ) =
  (Localinput_symbol_t.Localinput_set_symbol
    (Localinput_set_symbol_t.Localinput_set_body_symbol
      (Localinput_set_body_symbol_t.Localinput_set_body_handle_symbol
        (Localinput_set_body_handle_symbol_t.Localinput_set_body_handle_command_symbol
          (Localinput_set_body_handle_command_symbol_t.Localinput_set_body_handle_command_tounit_symbol
            (Localinput_set_body_handle_command_tounit_symbol_t.Localinput_set_body_handle_command_tounit_print_symbol
              (Localinput_set_body_handle_command_tounit_print_symbol_t.Localinput_set_body_handle_command_tounit_print_constructor
                "Len_bc")))))),
   [6; 42; 1; 22; 1])
);;

(* Argument *)

let tag_lct = Localinput_set_body_handle_command_tounit_tag_v.localinput_set_body_handle_command_tounit_tag_off_localinput_tag tag_loi_lct;;

test_number 2 (
( tag_lct :
    Localinput_set_body_handle_command_tounit_symbol_t.localinput_set_body_handle_command_tounit_symbol
    Tag_t.tag ) =
(Localinput_set_body_handle_command_tounit_symbol_t.Localinput_set_body_handle_command_tounit_print_symbol
   (Localinput_set_body_handle_command_tounit_print_symbol_t.Localinput_set_body_handle_command_tounit_print_constructor
      "Len_bc"),
 [6; 42; 1; 22; 1])
);;

let sym_lct = Tag_v.entity_off_tag tag_lct;;

test_number 3 (
( sym_lct :
  Localinput_set_body_handle_command_tounit_symbol_t.localinput_set_body_handle_command_tounit_symbol)  =
  Localinput_set_body_handle_command_tounit_symbol_t.Localinput_set_body_handle_command_tounit_print_symbol
   (Localinput_set_body_handle_command_tounit_print_symbol_t.Localinput_set_body_handle_command_tounit_print_constructor
     "Len_bc")
);;

let soi_lct = Tag_v.sole_index_off_tag tag_lct;;

let nam_var = Localinput_set_body_handle_command_tounit_symbol_v.string_off sym_lct;;

test_number 4 (
(nam_var : string ) = 
"Len_bc"
);;

(* Operator Tounit *)

let sym_pro_ope = 
  Property_symbol_v.property_operator_fence_tounit_print_constructor 
    nam_var;;

test_number 5 (
( sym_pro_ope : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Property_operator_symbol
   (Property_operator_symbol_t.Property_operator_fence_symbol
     (Property_operator_fence_symbol_t.Property_operator_fence_tounit_symbol
       (Property_operator_fence_tounit_symbol_t.Property_operator_fence_tounit_print_symbol
         (Property_operator_fence_tounit_print_symbol_t.Property_operator_fence_tounit_print_constructor
           "Len_bc"))))
);;

let sym_pro_ope_f = Tree_v.make_of_leaf sym_pro_ope ;;

test_number 6 (
( sym_pro_ope_f : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Leaf sym_pro_ope
);;

(* Operand Target_implicit *)

let sym_pro_pit = 
  Property_symbol_v.property_target_body_implicit_tounit_constructor 
    nam_var;;

test_number 7 (
(sym_pro_pit : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Property_target_symbol
   (Property_target_symbol_t.Property_target_body_symbol
     (Property_target_body_symbol_t.Property_target_body_implicit_symbol
       (Property_target_body_implicit_symbol_t.Property_target_body_implicit_tounit_symbol
         (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
           "Len_bc"))))
);;

(* Operand Entity Target or External from Definition *)

let sym_lcd = 
  Localinput_set_body_handle_command_creation_define_symbol_v.localinput_set_body_handle_command_creation_define_constructor 
    nam_var 
;;

test_number 8 (
( sym_lcd :
  Localinput_set_body_handle_command_creation_define_symbol_t.localinput_set_body_handle_command_creation_define_symbol ) =
  Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
   "Len_bc"
);;

let tag_lne_opd = 
  Localinput_set_fence_variable_name_entity_tag_by_basicname_inputbox_n_localinput_set_body_handle_command_creation_define_symbol_provider_v.provide
    (bna_ibo, sym_lcd);;

test_number 9 (
(tag_lne_opd :
  Localinput_set_fence_variable_name_entity_symbol_t.localinput_set_fence_variable_name_entity_symbol
  Tag_t.tag ) =
  (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_target_symbol
    (Localinput_set_fence_variable_name_entity_target_symbol_t.Localinput_set_fence_variable_name_entity_target_constructor
      "Len_bc"),
   [1; 2; 4; 42; 1; 22; 1])
);;

(* Target Subtree got recursively *)

let sym_pro_opd_st =
  Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_v.provide 
    tag_lne_opd;;

let sym_pro_st = Tree_v.make_of_node sym_pro_pit (sym_pro_ope_f :: [sym_pro_opd_st]) ;;

test_number 10 (
sym_pro_st = provide tag_lct
);;
