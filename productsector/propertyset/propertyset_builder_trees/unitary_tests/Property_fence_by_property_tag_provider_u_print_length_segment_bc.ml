open Make_test_v;;

testing "Property_fence_by_property_tag_provider_v with
        Property_fence_by_property_tag_provider_u_print_length_segment_bc.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Property_fence_by_property_tag_provider_u_print_length_segment_bc.ml";; 

*)

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
(*          type [ "property" "set" "body" "operand" "target" "measured" "constructor" ] *)
(*          target_operator Len *)
(*          target_operand Seg_bc *)
(*          end -- target *)
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

open Property_fence_by_property_tag_provider_v;;

let nam_ibo = "Print_length_segment_bc";;
let nam_iba = "local";;

let tag_pro_l =
  Property_tag_all_list_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide
    (nam_ibo, nam_iba);;

(* Argument : Property_target_body_implicit_tounit_constructor *) 

let tag_pro_pit = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> Property_symbol_v.is_property_target_body_implicit_tounit_constructor s)
    tag_pro_l
;;

test_number 1 (
(tag_pro_pit : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_set_symbol
    (Property_set_symbol_t.Property_set_body_symbol
      (Property_set_body_symbol_t.Property_target_body_implicit_symbol
        (Property_target_body_implicit_symbol_t.Property_target_body_implicit_tounit_symbol
          (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
            "Len_bc")))),
   [1; 41; 1; 18; 6])
);;

let tag_pro_pit_st = 
    Property_tag_subtree_by_property_tag_provider_v.provide tag_pro_pit
;;

let fen_pro_pit = Tree_v.leaf_node_list_off_tree tag_pro_pit_st;;

test_number 2 (
(fen_pro_pit : Property_symbol_t.property_symbol Tag_t.tag list ) =
  [(Property_symbol_t.Property_set_symbol
     (Property_set_symbol_t.Property_set_fence_symbol
       (Property_set_fence_symbol_t.Operator_fence_symbol
         (Operator_fence_symbol_t.Operator_fence_tounit_symbol
           (Operator_fence_tounit_symbol_t.Operator_fence_tounit_print_symbol
             (Operator_fence_tounit_print_symbol_t.Operator_fence_tounit_print_constructor
               "Len_bc"))))),
    [1; 1; 41; 1; 18; 6]);
   (Property_symbol_t.Property_set_symbol
     (Property_set_symbol_t.Property_set_fence_symbol
       (Property_set_fence_symbol_t.Operator_fence_symbol
         (Operator_fence_symbol_t.Operator_fence_creation_symbol
           (Operator_fence_creation_symbol_t.Operator_fence_creation_tomeasure_symbol
             (Operator_fence_creation_tomeasure_symbol_t.Operator_fence_creation_tomeasure_constructor
               "Len"))))),
    [1; 2; 1; 41; 1; 18; 6]);
   (Property_symbol_t.Property_set_symbol
     (Property_set_symbol_t.Property_set_fence_symbol
       (Property_set_fence_symbol_t.Property_set_fence_operand_external_symbol
         (Property_set_fence_operand_external_symbol_t.Property_set_fence_operand_external_constructor
           "Seg_bc"))),
    [2; 2; 1; 41; 1; 18; 6])]
);;

test_number 3 (
fen_pro_pit = provide tag_pro_pit
);;
