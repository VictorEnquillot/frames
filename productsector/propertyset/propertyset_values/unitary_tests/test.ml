open Make_test_v;;

testing "Property_operand_body_target_created_value_v with
        Property_operand_body_target_created_value_u_print_translation_tra_bc_tra_s_point_a.ml";;

(* Deleting Registers *)
(* Tracing *)

(* define Con_bc *)
(*        context *)
(*          databox "segment_BC" *)
(*          database "db1points" *)
(*          domain "figure" *)
(*          sector "internal" *)
(*          end -- context *)
(*        end -- define *)

(* define Con_s *)
(*        context *)
(*          databox "segment_S" *)
(*          database "db1points" *)
(*          domain "figure" *)
(*          sector "internal" *)
(*          end -- context *)
(*        end -- define *)

(* define Con_pa *)
(*        context *)
(*          databox "Point_a" *)
(*          database "db1points" *)
(*          domain "figure" *)
(*          sector "internal" *)
(*          end -- context *)
(*        end -- define *)

(* define Seg_bc *)
(*        external  *)
(*          type [ "figure" "set" "body" "segment" "constructor" ] *)
(*          external_name "BC" *)
(*          external_context Con_bc *)
(*          end -- external *)
(*        end -- define *)

(* define Seg_s *)
(*        external  *)
(*          type [ "figure" "set" "body" "segment" "constructor" ] *)
(*          external_name "S" *)
(*          external_context Con_s *)
(*          end -- external *)
(*        end -- define *)

(* define Tra_bc *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "transformation" "constructor" ] *)
(*          operation "translation" *)
(*          ondomain "figure"   *)
(*          cofactor  *)
(*            cofactor_entity Seg_bc *)
(*            end -- cofactor	 *)
(*          end -- operator *)
(*        end -- define *)

(* define Tra_s *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "transformation" "constructor" ] *)
(*          operation "translation" *)
(*          ondomain "figure"   *)
(*          cofactor  *)
(*            cofactor_entity Seg_s *)
(*            end -- cofactor	 *)
(*          end -- operator *)
(*        end -- define *)

(* define Poi_a         *)
(*        external  *)
(*          type [ "figure" "set" "fence" "point" "constructor" ] *)
(*          external_name "A" *)
(*          external_context Con_pa *)
(*          end -- external *)
(*        end -- define *)

(* define Poi_t *)
(*        target  *)
(*          type [ "property" "operand" "body" "target" "created" "constructor" ] *)
(*          target_operator Tra_bc *)
(*          target_operand Poi_a *)
(*          end -- target *)
(*        end -- define *)

(* define Poi_u *)
(*        target  *)
(*          type [ "property" "operand" "body" "target" "created" "constructor" ] *)
(*          target_operator Tra_s *)
(*          target_operand Poi_t *)
(*          end -- target *)
(*        end -- define *)

(* define Uni_len *)
(*        external  *)
(*          type [ "units" "length" "bohr" ] *)
(*          end -- external *)
(*        end -- define *)

(* print Poi_u *)
(*       units [ Uni_len ] *)
(*       end -- print *)

(* stop *)

(* toplevel 
   #use "Property_operand_body_target_created_value_u_print_translation_tra_bc_tra_s_point_a.ml";; 

*)

open Property_operand_body_target_created_value_v;; 

let nam_ibo = "Print_translation_tra_bc_tra_s_point_a";;
let nam_iba = "local";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;
let bna_iba = Basicname_v.basicname_inputbase_of_string nam_iba;;

let tag_pro_l = Property_tag_all_list_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide (bna_ibo, bna_iba);;

test_number 1 (
( tag_pro_l : Property_symbol_t.property_symbol Tag_t.tag list ) =
  [(Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_sector_symbol
       (Property_context_sector_symbol_t.Property_context_sector_constructor
         "product")),
    [6]);
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_domain_symbol
       (Property_context_domain_symbol_t.Property_context_domain_constructor
         "property")),
    [17; 6]);
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_inputbase_symbol
       (Property_context_inputbase_symbol_t.Property_context_inputbase_constructor
         "local")),
    [1; 17; 6]);
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_inputbox_symbol
       (Property_context_inputbox_symbol_t.Property_context_inputbox_constructor
         "Print_translation_tra_bc_tra_s_point_a")),
    [59; 1; 17; 6]);
   (Property_symbol_t.Property_target_symbol
     (Property_target_symbol_t.Property_target_body_symbol
       (Property_target_body_symbol_t.Property_target_body_implicit_symbol
         (Property_target_body_implicit_symbol_t.Property_target_body_implicit_tounit_symbol
           (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
             "Poi_u")))),
    [1; 59; 1; 17; 6]);
   (Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_fence_symbol
       (Property_operator_fence_symbol_t.Property_operator_fence_tounit_symbol
         (Property_operator_fence_tounit_symbol_t.Property_operator_fence_tounit_print_symbol
           (Property_operator_fence_tounit_print_symbol_t.Property_operator_fence_tounit_print_constructor
             "Poi_u")))),
    [1; 1; 59; 1; 17; 6]);
   (Property_symbol_t.Property_operand_symbol
     (Property_operand_symbol_t.Property_operand_body_symbol
       (Property_operand_body_symbol_t.Property_operand_body_target_symbol
         (Property_operand_body_target_symbol_t.Property_operand_body_target_created_symbol
           (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
             "Poi_u")))),
    [2; 1; 59; 1; 17; 6]);
   (Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_fence_symbol
       (Property_operator_fence_symbol_t.Property_operator_fence_creation_symbol
         (Property_operator_fence_creation_symbol_t.Property_operator_fence_creation_toentity_symbol
           (Property_operator_fence_creation_toentity_symbol_t.Property_operator_fence_creation_toentity_constructor
             "Tra_s")))),
    [1; 2; 1; 59; 1; 17; 6]);
   (Property_symbol_t.Property_operand_symbol
     (Property_operand_symbol_t.Property_operand_body_symbol
       (Property_operand_body_symbol_t.Property_operand_body_target_symbol
         (Property_operand_body_target_symbol_t.Property_operand_body_target_created_symbol
           (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
             "Poi_t")))),
    [2; 2; 1; 59; 1; 17; 6]);
   (Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_fence_symbol
       (Property_operator_fence_symbol_t.Property_operator_fence_creation_symbol
         (Property_operator_fence_creation_symbol_t.Property_operator_fence_creation_toentity_symbol
           (Property_operator_fence_creation_toentity_symbol_t.Property_operator_fence_creation_toentity_constructor
             "Tra_bc")))),
    [1; 2; 2; 1; 59; 1; 17; 6]);
   (Property_symbol_t.Property_operand_symbol
     (Property_operand_symbol_t.Property_operand_fence_symbol
       (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
         (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
           "Poi_a"))),
    [2; 2; 2; 1; 59; 1; 17; 6])]
);;

let nam_var_poi_a = "Poi_a";;
let tag_pro_poi_a = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> (Property_symbol_v.property_operand_fence_external_constructor nam_var_poi_a = s) )
	tag_pro_l;;

test_number 2 (
(tag_pro_poi_a : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_operand_symbol
    (Property_operand_symbol_t.Property_operand_fence_symbol
      (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
        (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
          "Poi_a"))),
   [2; 2; 2; 1; 59; 1; 17; 6])
);;

let nam_var_poi_u = "Poi_u";;
let tag_pro_poi_u = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> (Property_symbol_v.property_operand_body_target_created_constructor nam_var_poi_u = s) )
	tag_pro_l;;

test_number 3 (
(tag_pro_poi_u: Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_operand_symbol
    (Property_operand_symbol_t.Property_operand_body_symbol
      (Property_operand_body_symbol_t.Property_operand_body_target_symbol
        (Property_operand_body_target_symbol_t.Property_operand_body_target_created_symbol
          (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
            "Poi_u")))),
   [2; 1; 59; 1; 17; 6])
);;

(* Argument tag_ptc "Poi_t" *)

let tag_ptc = Property_operand_body_target_created_tag_v.property_operand_body_target_created_tag_off_property_tag tag_pro_poi_u;;

test_number 4 (
( tag_ptc :
  Property_operand_body_target_created_symbol_t.property_operand_body_target_created_symbol
  Tag_t.tag ) =
  (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
    "Poi_u",
   [2; 1; 59; 1; 17; 6])
);;

let soi_ptc = Tag_v.sole_index_off_tag tag_ptc;;
  
test_number 5 (
bna_ibo = Basicname_inputbox_by_any_sole_index_provider_v.provide soi_ptc
);;

let tag_pro_ptc = Property_operand_body_target_created_tag_v.property_tag_of_property_operand_body_target_created_tag tag_ptc;;

let tag_pro_ptc_st = Property_tag_subtree_by_property_tag_provider_v.provide tag_pro_ptc;;

test_number 6 (
(tag_pro_ptc_st : Property_symbol_t.property_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Property_symbol_t.Property_operand_symbol
      (Property_operand_symbol_t.Property_operand_body_symbol
        (Property_operand_body_symbol_t.Property_operand_body_target_symbol
          (Property_operand_body_target_symbol_t.Property_operand_body_target_created_symbol
            (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
              "Poi_u")))),
     [2; 1; 59; 1; 17; 6]),
   [Tree_t.Leaf
     (Property_symbol_t.Property_operator_symbol
       (Property_operator_symbol_t.Property_operator_fence_symbol
         (Property_operator_fence_symbol_t.Property_operator_fence_creation_symbol
           (Property_operator_fence_creation_symbol_t.Property_operator_fence_creation_toentity_symbol
             (Property_operator_fence_creation_toentity_symbol_t.Property_operator_fence_creation_toentity_constructor
               "Tra_s")))),
      [1; 2; 1; 59; 1; 17; 6]);
    Tree_t.Inner
     ((Property_symbol_t.Property_operand_symbol
        (Property_operand_symbol_t.Property_operand_body_symbol
          (Property_operand_body_symbol_t.Property_operand_body_target_symbol
            (Property_operand_body_target_symbol_t.Property_operand_body_target_created_symbol
              (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
                "Poi_t")))),
       [2; 2; 1; 59; 1; 17; 6]),
     [Tree_t.Leaf
       (Property_symbol_t.Property_operator_symbol
         (Property_operator_symbol_t.Property_operator_fence_symbol
           (Property_operator_fence_symbol_t.Property_operator_fence_creation_symbol
             (Property_operator_fence_creation_symbol_t.Property_operator_fence_creation_toentity_symbol
               (Property_operator_fence_creation_toentity_symbol_t.Property_operator_fence_creation_toentity_constructor
                 "Tra_bc")))),
        [1; 2; 2; 1; 59; 1; 17; 6]);
      Tree_t.Leaf
       (Property_symbol_t.Property_operand_symbol
         (Property_operand_symbol_t.Property_operand_fence_symbol
           (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
             (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
               "Poi_a"))),
        [2; 2; 2; 1; 59; 1; 17; 6])])])
);;

let tag_pro_pfe = Tree_v.only_node_of_node_predicate_off_tree 
    (fun (s, i) -> (Property_symbol_v.is_property_operand_fence_external_constructor s) )
    tag_pro_ptc_st;;

test_number 7 (
(tag_pro_pfe : Property_symbol_t.property_symbol Tag_t.tag )=
  (Property_symbol_t.Property_operand_symbol
    (Property_operand_symbol_t.Property_operand_fence_symbol
      (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
        (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
          "Poi_a"))),
   [2; 2; 2; 1; 59; 1; 17; 6])
);;

let tag_pat_pro_l = 
    Tree_v.path_of_node_off_tree 
      tag_pro_pfe 
      tag_pro_ptc_st;;

let tag_pat_pro_ll = Tree_v.path_list_of_node_off_tree tag_pro_pfe tag_pro_ptc_st;;

test_number 8 (
(tag_pat_pro_ll : Property_symbol_t.property_symbol Tag_t.tag list list ) =
  [[(Property_symbol_t.Property_operand_symbol
      (Property_operand_symbol_t.Property_operand_fence_symbol
        (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
          (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
            "Poi_a"))),
     [2; 2; 2; 1; 59; 1; 17; 6]);
    (Property_symbol_t.Property_operand_symbol
      (Property_operand_symbol_t.Property_operand_body_symbol
        (Property_operand_body_symbol_t.Property_operand_body_target_symbol
          (Property_operand_body_target_symbol_t.Property_operand_body_target_created_symbol
            (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
              "Poi_t")))),
     [2; 2; 1; 59; 1; 17; 6]);
    (Property_symbol_t.Property_operand_symbol
      (Property_operand_symbol_t.Property_operand_body_symbol
        (Property_operand_body_symbol_t.Property_operand_body_target_symbol
          (Property_operand_body_target_symbol_t.Property_operand_body_target_created_symbol
            (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
              "Poi_u")))),
     [2; 1; 59; 1; 17; 6])]]
);;


let tag_pro_ptc_l = List.filter (fun (s, i) -> Property_symbol_v.is_property_operand_body_target_created_constructor s) tag_pat_pro_l;;

test_number 9 (
(tag_pro_ptc_l : Property_symbol_t.property_symbol Tag_t.tag list ) =
  [(Property_symbol_t.Property_operand_symbol
     (Property_operand_symbol_t.Property_operand_body_symbol
       (Property_operand_body_symbol_t.Property_operand_body_target_symbol
         (Property_operand_body_target_symbol_t.Property_operand_body_target_created_symbol
           (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
             "Poi_t")))),
    [2; 2; 1; 59; 1; 17; 6]);
   (Property_symbol_t.Property_operand_symbol
     (Property_operand_symbol_t.Property_operand_body_symbol
       (Property_operand_body_symbol_t.Property_operand_body_target_symbol
         (Property_operand_body_target_symbol_t.Property_operand_body_target_created_symbol
           (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
             "Poi_u")))),
    [2; 1; 59; 1; 17; 6])]
);;

(* Containee Operator *)

let tag_pct = 
    Property_operand_body_target_created_container_v.property_operator_fence_creation_toentity_tag_of_tag 
      tag_ptc;;

test_number 10 (
(tag_pct :
  Property_operator_fence_creation_toentity_symbol_t.property_operator_fence_creation_toentity_symbol
  Tag_t.tag ) =
  (Property_operator_fence_creation_toentity_symbol_t.Property_operator_fence_creation_toentity_constructor
    "Tra_s",
   [1; 2; 1; 59; 1; 17; 6])
);;

let nam_var_ope = Property_operator_fence_creation_toentity_tag_v.string_off tag_pct;;
let bna_var_ope = Basicname_v.basicname_variable_operator_of_string nam_var_ope;;

test_number 11 (
(bna_var_ope : Basicname_t.basicname ) =
  Basicname_t.Variable_operator "Tra_s"
);;

(* Containee Operand *)

let tag_pod =
  Property_operand_body_target_created_container_v.property_operand_tag_of_tag 
    tag_ptc;;

test_number 12 (
(tag_pod : Property_operand_symbol_t.property_operand_symbol Tag_t.tag ) =
  (Property_operand_symbol_t.Property_operand_body_symbol
    (Property_operand_body_symbol_t.Property_operand_body_target_symbol
      (Property_operand_body_target_symbol_t.Property_operand_body_target_created_symbol
        (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
          "Poi_t"))),
   [2; 2; 1; 59; 1; 17; 6])
);;

let tag_ptc = Tag_v.map_entity 
    Property_operand_symbol_v.property_operand_body_target_created_symbol_off_property_operand_symbol 
    tag_pod;;

test_number 13 (
(tag_ptc :
  Property_operand_body_target_created_symbol_t.property_operand_body_target_created_symbol
  Tag_t.tag ) =
  (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
    "Poi_t",
   [2; 2; 1; 59; 1; 17; 6])
);;

let mea_hom_tl =
  Measure_homogeneous_tuple_list_by_property_operand_body_target_created_tag_provider_v.provide tag_ptc;;

test_number 14 ( 
(mea_hom_tl : (float, Units_t.units) Doublet_t.doublet Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((2.38972612456506184,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)),
     (-1.38972612456506184,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)),
     (-1.18261934337851438,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)))]
);;
