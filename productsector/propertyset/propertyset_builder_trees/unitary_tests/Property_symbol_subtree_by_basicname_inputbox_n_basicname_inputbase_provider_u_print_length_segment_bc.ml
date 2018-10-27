open Make_test_v;;

testing "Property_symbol_subtree_by_basicname_inputbox_n_basicname_inputbase_provider_v
        Property_symbol_subtree_by_basicname_inputbox_n_basicname_inputbase_provider_u_print_length_segment_bc.ml";

(* Deleting Registers *)

(* Tracing *)
(* Trace_what_by_module_name_register_v.store "Property_symbol_subtree_by_basicname_inputbox_n_basicname_inputbase_provider_v" "debug";;*)

(* define Con_db1  *)
(*        context *)
(* 	    database "db1" *)
(*          domain "figure" *)
(* 	    end -- context *)
(*        end -- define *)

(* define Len *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "tomeasure" "constructor"] *)
(* 	    operation "length" *)
(* 	    ondomain "figure"   *)
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
(* 	    target_operator Len *)
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
   #use "Property_symbol_subtree_by_basicname_inputbox_n_basicname_inputbase_provider_u_print_length_segment_bc.ml";;

*)

open Property_symbol_subtree_by_basicname_inputbox_n_basicname_inputbase_provider_v;;

let nam_ibo = "Print_length_segment_bc";;
let nam_iba = "local";;

let bna_iba = Basicname_v.basicname_inputbase_of_string nam_iba;;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

test_number 1 (
(bna_ibo : Basicname_t.basicname ) =
Basicname_t.Inputbox "Print_length_segment_bc"
);;

let tag_lct_l = 
     Localinput_set_body_handle_command_tounit_tag_list_by_basicname_inputbox_provider_v.provide
       bna_ibo;;

test_number 2 (
(tag_lct_l :
  Localinput_set_body_handle_command_tounit_symbol_t.localinput_set_body_handle_command_tounit_symbol
  Tag_t.tag list ) =
  [(Localinput_set_body_handle_command_tounit_symbol_t.Localinput_set_body_handle_command_tounit_print_symbol
     (Localinput_set_body_handle_command_tounit_print_symbol_t.Localinput_set_body_handle_command_tounit_print_constructor
       "Len_bc"),
    [6; 42; 1; 22; 1])]
);;

let sym_pro_stl = List.map 
    Property_symbol_subtree_by_localinput_set_body_handle_command_tounit_tag_provider_v.provide
      tag_lct_l;;

let cou = List.length sym_pro_stl;;

test_number 3 (
(cou : int) = 
1
);;

test_number 4 (
(sym_pro_stl : Property_symbol_t.property_symbol Tree_t.tree list ) =
  [Tree_t.Inner
    (Property_symbol_t.Property_target_symbol
      (Property_target_symbol_t.Property_target_body_symbol
        (Property_target_body_symbol_t.Property_target_body_implicit_symbol
          (Property_target_body_implicit_symbol_t.Property_target_body_implicit_tounit_symbol
            (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
              "Len_bc")))),
    [Tree_t.Leaf
      (Property_symbol_t.Property_operator_symbol
        (Property_operator_symbol_t.Property_operator_fence_symbol
          (Property_operator_fence_symbol_t.Property_operator_fence_tounit_symbol
            (Property_operator_fence_tounit_symbol_t.Property_operator_fence_tounit_print_symbol
              (Property_operator_fence_tounit_print_symbol_t.Property_operator_fence_tounit_print_constructor
                "Len_bc")))));
     Tree_t.Inner
      (Property_symbol_t.Property_operand_symbol
        (Property_operand_symbol_t.Property_operand_body_symbol
          (Property_operand_body_symbol_t.Property_operand_body_target_symbol
            (Property_operand_body_target_symbol_t.Property_operand_body_target_measured_symbol
              (Property_operand_body_target_measured_symbol_t.Property_operand_body_target_measured_constructor
                "Len_bc")))),
      [Tree_t.Leaf
        (Property_symbol_t.Property_operator_symbol
          (Property_operator_symbol_t.Property_operator_fence_symbol
            (Property_operator_fence_symbol_t.Property_operator_fence_creation_symbol
              (Property_operator_fence_creation_symbol_t.Property_operator_fence_creation_tomeasure_symbol
                (Property_operator_fence_creation_tomeasure_symbol_t.Property_operator_fence_creation_tomeasure_constructor
                  "Ope_len")))));
       Tree_t.Leaf
        (Property_symbol_t.Property_operand_symbol
          (Property_operand_symbol_t.Property_operand_fence_symbol
            (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
              (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
                "Seg_bc"))))])])]
);;

let sym_pro_pbo = Property_symbol_v.property_context_inputbox_constructor nam_ibo;;

test_number 5 (
(sym_pro_pbo : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Property_context_symbol
   (Property_context_symbol_t.Property_context_inputbox_symbol
     (Property_context_inputbox_symbol_t.Property_context_inputbox_constructor
       "Print_length_segment_bc"))
);;

let sym_pro_st = Tree_v.make_of_node sym_pro_pbo sym_pro_stl;;

test_number 6 (
(sym_pro_st : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_inputbox_symbol
       (Property_context_inputbox_symbol_t.Property_context_inputbox_constructor
         "Print_length_segment_bc")),
   [Tree_t.Inner
     (Property_symbol_t.Property_target_symbol
       (Property_target_symbol_t.Property_target_body_symbol
         (Property_target_body_symbol_t.Property_target_body_implicit_symbol
           (Property_target_body_implicit_symbol_t.Property_target_body_implicit_tounit_symbol
             (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
               "Len_bc")))),
     [Tree_t.Leaf
       (Property_symbol_t.Property_operator_symbol
         (Property_operator_symbol_t.Property_operator_fence_symbol
           (Property_operator_fence_symbol_t.Property_operator_fence_tounit_symbol
             (Property_operator_fence_tounit_symbol_t.Property_operator_fence_tounit_print_symbol
               (Property_operator_fence_tounit_print_symbol_t.Property_operator_fence_tounit_print_constructor
                 "Len_bc")))));
      Tree_t.Inner
       (Property_symbol_t.Property_operand_symbol
         (Property_operand_symbol_t.Property_operand_body_symbol
           (Property_operand_body_symbol_t.Property_operand_body_target_symbol
             (Property_operand_body_target_symbol_t.Property_operand_body_target_measured_symbol
               (Property_operand_body_target_measured_symbol_t.Property_operand_body_target_measured_constructor
                 "Len_bc")))),
       [Tree_t.Leaf
         (Property_symbol_t.Property_operator_symbol
           (Property_operator_symbol_t.Property_operator_fence_symbol
             (Property_operator_fence_symbol_t.Property_operator_fence_creation_symbol
               (Property_operator_fence_creation_symbol_t.Property_operator_fence_creation_tomeasure_symbol
                 (Property_operator_fence_creation_tomeasure_symbol_t.Property_operator_fence_creation_tomeasure_constructor
                   "Ope_len")))));
        Tree_t.Leaf
         (Property_symbol_t.Property_operand_symbol
           (Property_operand_symbol_t.Property_operand_fence_symbol
             (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
               (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
                 "Seg_bc"))))])])])
);;

test_number 7 (
sym_pro_st = provide (bna_ibo, bna_iba) 
);;
