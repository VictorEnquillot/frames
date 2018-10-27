open Make_test_v;;

testing "Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_v with
        Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_u_print_length_segment_bc.ml";;

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

(* toplevel 
   #use "Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_u_print_length_segment_bc.ml";; 

*)

open Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_v;;

let nam_ibo = "Print_length_segment_bc";;
let nam_iba = "local";;

(* Arguments *)

let bna_iba = Basicname_v.basicname_inputbase_of_string nam_iba;;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

let tag_pro_qua =
  Property_as_context_tag_quatuor_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide
    (bna_ibo, bna_iba);;

test_number 1 (
(tag_pro_qua :
  Property_symbol_t.property_symbol Tag_t.tag Quatuor_t.quatuor ) =
  ((Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_inputbox_symbol
       (Property_context_inputbox_symbol_t.Property_context_inputbox_constructor
         "Print_length_segment_bc")),
    [41; 1; 18; 6]),
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_inputbase_symbol
       (Property_context_inputbase_symbol_t.Property_context_inputbase_constructor
         "local")),
    [1; 18; 6]),
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_domain_symbol
       (Property_context_domain_symbol_t.Property_context_domain_constructor
         "property")),
    [18; 6]),
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_sector_symbol
       (Property_context_sector_symbol_t.Property_context_sector_constructor
         "product")),
    [6]))
);;

let (tag_pro_ibo, tag_pro_iba, tag_pro_pcd, tag_pro_pcs) = tag_pro_qua;;

let sym_pro_ibo_st =
    Property_symbol_subtree_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide
      (bna_ibo, bna_iba);;

test_number 2 (
( sym_pro_ibo_st : Property_symbol_t.property_symbol Tree_t.tree ) =
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

let soi_pro_ibo = Tag_v.sole_index_off_tag tag_pro_ibo;;

let soi_pro_ibo_st = 
  Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
    sym_pro_ibo_st 
    soi_pro_ibo ;;

test_number 3 (
(soi_pro_ibo_st : Sole_index_t.sole_index Tree_t.tree ) =
  Tree_t.Inner ([41; 1; 18; 6],
   [Tree_t.Inner ([1; 41; 1; 18; 6],
     [Tree_t.Leaf [1; 1; 41; 1; 18; 6];
      Tree_t.Inner ([2; 1; 41; 1; 18; 6],
       [Tree_t.Leaf [1; 2; 1; 41; 1; 18; 6];
        Tree_t.Leaf [2; 2; 1; 41; 1; 18; 6]])])])
);;

let tag_pro_ibo_st = Tree_v.map2 Tag_v.make sym_pro_ibo_st soi_pro_ibo_st;;

let tag_pro_iba_st = Tree_v.make_of_node tag_pro_iba [tag_pro_ibo_st];;

let tag_pro_pcd_st = Tree_v.make_of_node tag_pro_pcd [tag_pro_iba_st];;
  
let tag_pro_t = Tree_v.make_of_node tag_pro_pcs [tag_pro_pcd_st];;

test_number 4 (
( tag_pro_t : Property_symbol_t.property_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Property_symbol_t.Property_context_symbol
      (Property_context_symbol_t.Property_context_sector_symbol
        (Property_context_sector_symbol_t.Property_context_sector_constructor
          "product")),
     [6]),
   [Tree_t.Inner
     ((Property_symbol_t.Property_context_symbol
        (Property_context_symbol_t.Property_context_domain_symbol
          (Property_context_domain_symbol_t.Property_context_domain_constructor
            "property")),
       [18; 6]),
     [Tree_t.Inner
       ((Property_symbol_t.Property_context_symbol
          (Property_context_symbol_t.Property_context_inputbase_symbol
            (Property_context_inputbase_symbol_t.Property_context_inputbase_constructor
              "local")),
         [1; 18; 6]),
       [Tree_t.Inner
         ((Property_symbol_t.Property_context_symbol
            (Property_context_symbol_t.Property_context_inputbox_symbol
              (Property_context_inputbox_symbol_t.Property_context_inputbox_constructor
                "Print_length_segment_bc")),
           [41; 1; 18; 6]),
         [Tree_t.Inner
           ((Property_symbol_t.Property_target_symbol
              (Property_target_symbol_t.Property_target_body_symbol
                (Property_target_body_symbol_t.Property_target_body_implicit_symbol
                  (Property_target_body_implicit_symbol_t.Property_target_body_implicit_tounit_symbol
                    (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
                      "Len_bc")))),
             [1; 41; 1; 18; 6]),
           [Tree_t.Leaf
             (Property_symbol_t.Property_operator_symbol
               (Property_operator_symbol_t.Property_operator_fence_symbol
                 (Property_operator_fence_symbol_t.Property_operator_fence_tounit_symbol
                   (Property_operator_fence_tounit_symbol_t.Property_operator_fence_tounit_print_symbol
                     (Property_operator_fence_tounit_print_symbol_t.Property_operator_fence_tounit_print_constructor
                       "Len_bc")))),
              [1; 1; 41; 1; 18; 6]);
            Tree_t.Inner
             ((Property_symbol_t.Property_operand_symbol
                (Property_operand_symbol_t.Property_operand_body_symbol
                  (Property_operand_body_symbol_t.Property_operand_body_target_symbol
                    (Property_operand_body_target_symbol_t.Property_operand_body_target_measured_symbol
                      (Property_operand_body_target_measured_symbol_t.Property_operand_body_target_measured_constructor
                        "Len_bc")))),
               [2; 1; 41; 1; 18; 6]),
             [Tree_t.Leaf
               (Property_symbol_t.Property_operator_symbol
                 (Property_operator_symbol_t.Property_operator_fence_symbol
                   (Property_operator_fence_symbol_t.Property_operator_fence_creation_symbol
                     (Property_operator_fence_creation_symbol_t.Property_operator_fence_creation_tomeasure_symbol
                       (Property_operator_fence_creation_tomeasure_symbol_t.Property_operator_fence_creation_tomeasure_constructor
                         "Ope_len")))),
                [1; 2; 1; 41; 1; 18; 6]);
              Tree_t.Leaf
               (Property_symbol_t.Property_operand_symbol
                 (Property_operand_symbol_t.Property_operand_fence_symbol
                   (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
                     (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
                       "Seg_bc"))),
                [2; 2; 1; 41; 1; 18; 6])])])])])])])
);;

test_number 5 (
tag_pro_t = provide (bna_ibo, bna_iba)
);;
