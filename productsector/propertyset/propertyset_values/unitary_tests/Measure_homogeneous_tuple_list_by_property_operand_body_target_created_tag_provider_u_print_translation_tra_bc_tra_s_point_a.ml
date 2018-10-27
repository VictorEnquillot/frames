open Make_test_v;;

testing "Measure_homogeneous_tuple_list_by_property_operand_body_target_created_tag_provider_v with
        Measure_homogeneous_tuple_list_by_property_operand_body_target_created_tag_provider_u_print_translation_tra_bc_tra_s_point_a.ml";;

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
   #use "Measure_homogeneous_tuple_list_by_property_operand_body_target_created_tag_provider_u_print_translation_tra_bc_tra_s_point_a.ml";; 

*)

open Measure_homogeneous_tuple_list_by_property_operand_body_target_created_tag_provider_v;; 

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
    [18; 6]);
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_inputbase_symbol
       (Property_context_inputbase_symbol_t.Property_context_inputbase_constructor
         "local")),
    [1; 17; 6]);
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_inputbox_symbol
       (Property_context_inputbox_symbol_t.Property_context_inputbox_constructor
         "Print_translation_tra_bc_tra_s_point_a")),
    [40; 1; 17; 6]);
   (Property_symbol_t.Property_target_symbol
     (Property_target_symbol_t.Property_target_body_symbol
       (Property_target_body_symbol_t.Property_target_body_implicit_symbol
         (Property_target_body_implicit_symbol_t.Property_target_body_implicit_tounit_symbol
           (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
             "Poi_u")))),
    [1; 40; 1; 17; 6]);
   (Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_fence_symbol
       (Property_operator_fence_symbol_t.Property_operator_fence_tounit_symbol
         (Property_operator_fence_tounit_symbol_t.Property_operator_fence_tounit_print_symbol
           (Property_operator_fence_tounit_print_symbol_t.Property_operator_fence_tounit_print_constructor
             "Poi_u")))),
    [1; 1; 40; 1; 17; 6]);
   (Property_symbol_t.Property_operand_symbol
     (Property_operand_symbol_t.Property_operand_body_symbol
       (Property_operand_body_symbol_t.Property_operand_body_target_symbol
         (Property_operand_body_target_symbol_t.Property_operand_body_target_created_symbol
           (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
             "Poi_u")))),
    [2; 1; 40; 1; 17; 6]);
   (Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_fence_symbol
       (Property_operator_fence_symbol_t.Property_operator_fence_creation_symbol
         (Property_operator_fence_creation_symbol_t.Property_operator_fence_creation_toentity_symbol
           (Property_operator_fence_creation_toentity_symbol_t.Property_operator_fence_creation_toentity_constructor
             "Tra_s")))),
    [1; 2; 1; 40; 1; 17; 6]);
   (Property_symbol_t.Property_operand_symbol
     (Property_operand_symbol_t.Property_operand_body_symbol
       (Property_operand_body_symbol_t.Property_operand_body_target_symbol
         (Property_operand_body_target_symbol_t.Property_operand_body_target_created_symbol
           (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
             "Poi_t")))),
    [2; 2; 1; 40; 1; 17; 6]);
   (Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_fence_symbol
       (Property_operator_fence_symbol_t.Property_operator_fence_creation_symbol
         (Property_operator_fence_creation_symbol_t.Property_operator_fence_creation_toentity_symbol
           (Property_operator_fence_creation_toentity_symbol_t.Property_operator_fence_creation_toentity_constructor
             "Tra_bc")))),
    [1; 2; 2; 1; 40; 1; 17; 6]);
   (Property_symbol_t.Property_operand_symbol
     (Property_operand_symbol_t.Property_operand_fence_symbol
       (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
         (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
           "Poi_a"))),
    [2; 2; 2; 1; 40; 1; 17; 6])]
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
   [2; 2; 2; 1; 40; 1; 17; 6])
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
   [2; 1; 40; 1; 17; 6])
);;

(* Argument tag_ptc "Poi_t" *)

let tag_ptc = Property_operand_body_target_created_tag_v.property_operand_body_target_created_tag_off_property_tag tag_pro_poi_u;;

test_number 4 (
( tag_ptc :
  Property_operand_body_target_created_symbol_t.property_operand_body_target_created_symbol
  Tag_t.tag ) =
  (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
    "Poi_u",
   [2; 1; 40; 1; 17; 6])
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
     [2; 1; 40; 1; 17; 6]),
   [Tree_t.Leaf
     (Property_symbol_t.Property_operator_symbol
       (Property_operator_symbol_t.Property_operator_fence_symbol
         (Property_operator_fence_symbol_t.Property_operator_fence_creation_symbol
           (Property_operator_fence_creation_symbol_t.Property_operator_fence_creation_toentity_symbol
             (Property_operator_fence_creation_toentity_symbol_t.Property_operator_fence_creation_toentity_constructor
               "Tra_s")))),
      [1; 2; 1; 40; 1; 17; 6]);
    Tree_t.Inner
     ((Property_symbol_t.Property_operand_symbol
        (Property_operand_symbol_t.Property_operand_body_symbol
          (Property_operand_body_symbol_t.Property_operand_body_target_symbol
            (Property_operand_body_target_symbol_t.Property_operand_body_target_created_symbol
              (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
                "Poi_t")))),
       [2; 2; 1; 40; 1; 17; 6]),
     [Tree_t.Leaf
       (Property_symbol_t.Property_operator_symbol
         (Property_operator_symbol_t.Property_operator_fence_symbol
           (Property_operator_fence_symbol_t.Property_operator_fence_creation_symbol
             (Property_operator_fence_creation_symbol_t.Property_operator_fence_creation_toentity_symbol
               (Property_operator_fence_creation_toentity_symbol_t.Property_operator_fence_creation_toentity_constructor
                 "Tra_bc")))),
        [1; 2; 2; 1; 40; 1; 17; 6]);
      Tree_t.Leaf
       (Property_symbol_t.Property_operand_symbol
         (Property_operand_symbol_t.Property_operand_fence_symbol
           (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
             (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
               "Poi_a"))),
        [2; 2; 2; 1; 40; 1; 17; 6])])])
);;

(* Path from External up to Current *)

let tag_pro_ptc_l =
    path_from_target_to_target_of_property_as_operand_body_target_created_tag 
      tag_pro_ptc;;

let tag_ptc_l =
    List.map 
      Property_operand_body_target_created_tag_v.property_operand_body_target_created_tag_off_property_tag
      tag_pro_ptc_l;;

test_number 7 (
(tag_ptc_l :
  Property_operand_body_target_created_symbol_t.property_operand_body_target_created_symbol
  Tag_t.tag list ) =
  [(Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
     "Poi_t",
    [2; 2; 1; 40; 1; 17; 6]);
   (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
     "Poi_u",
    [2; 1; 40; 1; 17; 6])]
);;

(* Measure_homogeneous_tuple_list for Operand_external *)

let tag_pro_pfe = Tree_v.only_node_of_node_predicate_off_tree 
    (fun (s, i) -> (Property_symbol_v.is_property_operand_fence_external_constructor s) )
    tag_pro_ptc_st;;

let tag_pfe =
    property_operand_fence_external_tag_of_property_as_operand_body_target_created 
      tag_pro_ptc;;

test_number 8 (
( tag_pfe :
  Property_operand_fence_external_symbol_t.property_operand_fence_external_symbol
  Tag_t.tag ) =
  (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
    "Poi_a",
   [2; 2; 2; 1; 40; 1; 17; 6])
);;

let mea_hom_opd_ext_tl =
    Measure_homogeneous_tuple_list_by_property_operand_fence_external_tag_provider_v.provide
      tag_pfe;;

test_number 9 (
(mea_hom_opd_ext_tl : Measure_t.measure Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((0.5,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)),
     (0.499999999999999889,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)),
     (0.707106781186547573,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)))]
);;

(* Recursion on tag_ptc_l Step _1_ *)

let mea_hom_opd_1_tl = mea_hom_opd_ext_tl;; 

let tag_ptc_1_l = tag_ptc_l;;

let tag_ptc_1_tl = List.tl tag_ptc_1_l;;

let tag_ptc_1_cur = List.hd tag_ptc_1_l;;

test_number 10 (
(tag_ptc_1_cur :
  Property_operand_body_target_created_symbol_t.property_operand_body_target_created_symbol
  Tag_t.tag ) =
  (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
    "Poi_t",
   [2; 2; 1; 40; 1; 17; 6])
);;

(* Containee Operator *)
let tag_pct_1_ope =
  Property_operand_body_target_created_container_v.property_operator_fence_creation_toentity_tag_of_tag
    tag_ptc_1_cur;;

test_number 11 (
(tag_pct_1_ope :
  Property_operator_fence_creation_toentity_symbol_t.property_operator_fence_creation_toentity_symbol
  Tag_t.tag ) =
  (Property_operator_fence_creation_toentity_symbol_t.Property_operator_fence_creation_toentity_constructor
    "Tra_bc",
   [1; 2; 2; 1; 40; 1; 17; 6])
);;

let nam_var_1_ope = Property_operator_fence_creation_toentity_tag_v.string_off tag_pct_1_ope;;
let bna_var_1_ope = Basicname_v.basicname_variable_operator_of_string nam_var_1_ope;;

test_number 12 (
(bna_var_1_ope : Basicname_t.basicname ) =
Basicname_t.Variable_operator "Tra_bc"
);;

(* Operation *)
let bna_1_opt =
  Basicname_operation_by_basicname_variable_operator_n_basicname_inputbox_provider_v.provide
    (bna_var_1_ope, bna_ibo);;

test_number 13 (
(bna_1_opt : Basicname_t.basicname ) = 
Basicname_t.Operation "translation"
);;

let nam_opt = Basicname_v.string_off bna_1_opt;;
 
(* Measure_homogeneous_tuple_list of Cofactor_entity *)

let mea_hom_cof_1_tl =
  Cofactor_entity_measure_homogeneous_tuple_list_by_property_operator_fence_creation_toentity_tag_provider_v.provide
    tag_pct_1_ope;;
 
test_number 14 (
(mea_hom_cof_1_tl : Measure_t.measure Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((1.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)),
     (0.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)),
     (0.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)));
   Tuple_t.Trio
    ((6.12303176911188629e-17,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)),
     (1.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)),
     (1.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)))]
);;

let mea_hom_cur_1_tl =
  Coordinate_operation_measure_v.translation 
    mea_hom_opd_1_tl 
    mea_hom_cof_1_tl
;;

test_number 15 (
(mea_hom_cur_1_tl :
  (float, Units_t.units) Doublet_t.doublet Tuple_t.tuple list ) =
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

(****** Recursion on tag_ptc_l Step _2_ *)

let mea_hom_opd_2_tl = mea_hom_cur_1_tl;; 

let tag_ptc_2_l = tag_ptc_1_tl;;

let tag_ptc_2_tl = List.tl tag_ptc_2_l;;

let tag_ptc_2_cur = List.hd tag_ptc_2_l;;

test_number 16 (
(tag_ptc_2_cur :
  Property_operand_body_target_created_symbol_t.property_operand_body_target_created_symbol
  Tag_t.tag ) =
  (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
    "Poi_u",
   [2; 1; 40; 1; 17; 6])
);;

(* Containee Operator *)
let tag_pct_2_ope =
  Property_operand_body_target_created_container_v.property_operator_fence_creation_toentity_tag_of_tag
    tag_ptc_2_cur;;

test_number 17 (
(tag_pct_2_ope :
  Property_operator_fence_creation_toentity_symbol_t.property_operator_fence_creation_toentity_symbol
  Tag_t.tag ) =
  (Property_operator_fence_creation_toentity_symbol_t.Property_operator_fence_creation_toentity_constructor
    "Tra_s",
   [1; 2; 1; 40; 1; 17; 6])
);;

let nam_var_2_ope = Property_operator_fence_creation_toentity_tag_v.string_off tag_pct_2_ope;;
let bna_var_2_ope = Basicname_v.basicname_variable_operator_of_string nam_var_2_ope;;

test_number 18 (
(bna_var_2_ope : Basicname_t.basicname ) =
Basicname_t.Variable_operator "Tra_s"
);;

(* Operation *)
let bna_2_opt =
  Basicname_operation_by_basicname_variable_operator_n_basicname_inputbox_provider_v.provide
    (bna_var_2_ope, bna_ibo);;

test_number 19 (
(bna_2_opt : Basicname_t.basicname ) = 
Basicname_t.Operation "translation"
);;

let nam_opt = Basicname_v.string_off bna_2_opt;;
 
(* Measure_homogeneous_tuple_list of Cofactor_entity *)

let mea_hom_cof_2_tl =
  Cofactor_entity_measure_homogeneous_tuple_list_by_property_operator_fence_creation_toentity_tag_provider_v.provide
    tag_pct_2_ope;;
 
test_number 20 (
(mea_hom_cof_2_tl : Measure_t.measure Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((0.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)),
     (1.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)),
     (1.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)));
   Tuple_t.Trio
    ((1.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)),
     (0.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)),
     (0.,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)))]
);;

let mea_hom_cur_2_tl =
  Coordinate_operation_measure_v.translation 
    mea_hom_opd_2_tl 
    mea_hom_cof_2_tl
;;

test_number 21 (
(mea_hom_cur_2_tl :
  (float, Units_t.units) Doublet_t.doublet Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((0.5,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)),
     (0.5,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)),
     (0.707106781186547462,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)))]
);;

let boo_tl = Tuple_list_v.map2 Measure_v.are_equal_at_epsilon_float mea_hom_cur_2_tl mea_hom_opd_ext_tl;;
let boo = Tuple_list_v.only_element_of_repeated_tuple_list boo_tl;;

test_number 22 (
boo
);; 
