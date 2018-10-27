open Make_test_v;;

testing "Measure_homogeneous_tuple_list_by_property_operand_body_target_created_tag_provider_v with
        Measure_homogeneous_tuple_list_by_property_operand_body_target_created_tag_provider_u_print_homothety_hom_b_2_translation_tra_s_point_a.ml";;

(* Deleting Registers *)


(* Tracing *)

(* 
Trace_what_by_module_name_register_v.store "Measure_homogeneous_tuple_list_by_property_operand_body_target_created_tag_provider_v" 
*) 

"debug";;

(* define Con_bc *)
(*        context *)
(*          databox "segment_BC" *)
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

(* define Cen_b *)
(*        external  *)
(*          type [ "figure" "set" "fence" "point" "constructor" ] *)
(*          external_name "BC_B" *)
(*          external_context Con_bc *)
(*          end -- external *)
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

(* define Hom_b_2 *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "transformation" "constructor" ] *)
(*          operation "homothety" *)
(*          ondomain "figure" *)
(*          cofactor  *)
(*            cofactor_entity Cen_b  *)
(*            cofactor_basic 2.0  *)
(* 	   end -- cofactor *)
(*          end -- operator *)
(*        end -- define *)

(* define Poi_a         *)
(*        external  *)
(*          type [ "figure" "set" "fence" "point" "constructor" ] *)
(*          external_name "A" *)
(*          external_context Con_pa *)
(*          end -- external *)
(*        end -- define *)

(* define Poi_h *)
(*        target  *)
(*          type [ "property" "operand" "body" "target" "created" "constructor" ] *)
(*          target_operator Hom_b_2 *)
(*          target_operand Poi_a *)
(*          end -- target *)
(*        end -- define *)

(* define Poi_t *)
(*        target  *)
(*          type [ "property" "operand" "body" "target" "created" "constructor" ] *)
(*          target_operator Tra_s *)
(*          target_operand Poi_h *)
(*          end -- target *)
(*        end -- define *)

(* define Uni_len *)
(*        external  *)
(*          type [ "units" "length" "bohr" ] *)
(*          end -- external *)
(*        end -- define *)

(* print Poi_t *)
(*       units [ Uni_len ] *)
(*       end -- print *)

(* stop *)

(* toplevel 
   #use "Measure_homogeneous_tuple_list_by_property_operand_body_target_created_tag_provider_u_print_homothety_hom_b_2_translation_tra_s_point_a.ml";; 

*)

open Measure_homogeneous_tuple_list_by_property_operand_body_target_created_tag_provider_v;; 

let nam_ibo = "Print_homothety_hom_b_2_translation_tra_s_point_a";;
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
         "Print_homothety_hom_b_2_translation_tra_s_point_a")),
    [40; 1; 17; 6]);
   (Property_symbol_t.Property_target_symbol
     (Property_target_symbol_t.Property_target_body_symbol
       (Property_target_body_symbol_t.Property_target_body_implicit_symbol
         (Property_target_body_implicit_symbol_t.Property_target_body_implicit_tounit_symbol
           (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
             "Poi_t")))),
    [1; 40; 1; 17; 6]);
   (Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_fence_symbol
       (Property_operator_fence_symbol_t.Property_operator_fence_tounit_symbol
         (Property_operator_fence_tounit_symbol_t.Property_operator_fence_tounit_print_symbol
           (Property_operator_fence_tounit_print_symbol_t.Property_operator_fence_tounit_print_constructor
             "Poi_t")))),
    [1; 1; 40; 1; 17; 6]);
   (Property_symbol_t.Property_operand_symbol
     (Property_operand_symbol_t.Property_operand_body_symbol
       (Property_operand_body_symbol_t.Property_operand_body_target_symbol
         (Property_operand_body_target_symbol_t.Property_operand_body_target_created_symbol
           (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
             "Poi_t")))),
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
             "Poi_h")))),
    [2; 2; 1; 40; 1; 17; 6]);
   (Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_fence_symbol
       (Property_operator_fence_symbol_t.Property_operator_fence_creation_symbol
         (Property_operator_fence_creation_symbol_t.Property_operator_fence_creation_toentity_symbol
           (Property_operator_fence_creation_toentity_symbol_t.Property_operator_fence_creation_toentity_constructor
             "Hom_b_2")))),
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

let nam_var_poi_h = "Poi_h";;
let tag_pro_poi_h = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> (Property_symbol_v.property_operand_body_target_created_constructor nam_var_poi_h = s) )
	tag_pro_l;;

test_number 3 (
(tag_pro_poi_h: Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_operand_symbol
    (Property_operand_symbol_t.Property_operand_body_symbol
      (Property_operand_body_symbol_t.Property_operand_body_target_symbol
        (Property_operand_body_target_symbol_t.Property_operand_body_target_created_symbol
          (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
            "Poi_h")))),
   [2; 2; 1; 40; 1; 17; 6])
);;

let nam_var_poi_t = "Poi_t";;
let tag_pro_poi_t = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> (Property_symbol_v.property_operand_body_target_created_constructor nam_var_poi_t = s) )
	tag_pro_l;;

test_number 4 (
(tag_pro_poi_t: Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_operand_symbol
    (Property_operand_symbol_t.Property_operand_body_symbol
      (Property_operand_body_symbol_t.Property_operand_body_target_symbol
        (Property_operand_body_target_symbol_t.Property_operand_body_target_created_symbol
          (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
            "Poi_t")))),
   [2; 1; 40; 1; 17; 6])
);;

(* Argument tag_ptc "Poi_t" *)

let tag_ptc = Property_operand_body_target_created_tag_v.property_operand_body_target_created_tag_off_property_tag tag_pro_poi_t;;

test_number 5 (
( tag_ptc :
  Property_operand_body_target_created_symbol_t.property_operand_body_target_created_symbol
  Tag_t.tag ) =
  (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
    "Poi_t",
   [2; 1; 40; 1; 17; 6])
);;

let soi_ptc = Tag_v.sole_index_off_tag tag_ptc;;
  
test_number 6 (
bna_ibo = Basicname_inputbox_by_any_sole_index_provider_v.provide soi_ptc
);;

let tag_pro_ptc = Property_operand_body_target_created_tag_v.property_tag_of_property_operand_body_target_created_tag tag_ptc;;

let tag_pro_ptc_st = Property_tag_subtree_by_property_tag_provider_v.provide tag_pro_ptc;;

test_number 7 (
(tag_pro_ptc_st : Property_symbol_t.property_symbol Tag_t.tag Tree_t.tree ) =
 Tree_t.Inner
   ((Property_symbol_t.Property_operand_symbol
      (Property_operand_symbol_t.Property_operand_body_symbol
        (Property_operand_body_symbol_t.Property_operand_body_target_symbol
          (Property_operand_body_target_symbol_t.Property_operand_body_target_created_symbol
            (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
              "Poi_t")))),
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
                "Poi_h")))),
       [2; 2; 1; 40; 1; 17; 6]),
     [Tree_t.Leaf
       (Property_symbol_t.Property_operator_symbol
         (Property_operator_symbol_t.Property_operator_fence_symbol
           (Property_operator_fence_symbol_t.Property_operator_fence_creation_symbol
             (Property_operator_fence_creation_symbol_t.Property_operator_fence_creation_toentity_symbol
               (Property_operator_fence_creation_toentity_symbol_t.Property_operator_fence_creation_toentity_constructor
                 "Hom_b_2")))),
        [1; 2; 2; 1; 40; 1; 17; 6]);
      Tree_t.Leaf
       (Property_symbol_t.Property_operand_symbol
         (Property_operand_symbol_t.Property_operand_fence_symbol
           (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
             (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
               "Poi_a"))),
        [2; 2; 2; 1; 40; 1; 17; 6])])])
);;

(* Path from External (Poi_a) up to Current (Poi_h) *)

let tag_ptc_l =
    Property_tag_path_from_target_to_target_by_property_operand_body_target_created_tag_provider_v.provide
      tag_ptc;;

test_number 8 (
(tag_ptc_l :
  Property_operand_body_target_created_symbol_t.property_operand_body_target_created_symbol
  Tag_t.tag list ) =
  [(Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
     "Poi_h",
    [2; 2; 1; 40; 1; 17; 6]);
   (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
     "Poi_t",
    [2; 1; 40; 1; 17; 6])]
);;

(* Measure_homogeneous_tuple_list for Operand_external *)
let tag_pfe =
  Property_operand_fence_external_tag_by_property_operand_body_target_created_provider_v.provide 
    tag_ptc ;;

test_number 9 (
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

test_number 10 (
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

(* A (0.5, 0.5, Sqrt (2.)/. 2.) *)
(* sqrt (2.)/.2. : float = 0.707106781186547573 *)
(* atan (1.)     : float = 0.785398163397448279 *)

(* Recursion on tag_ptc_l Step _1_ Poi_a -> Hom_b_2 -> Poi_h *)

let mea_hom_opd_1_tl = mea_hom_opd_ext_tl;; 

let tag_ptc_1_l = tag_ptc_l;;

let tag_ptc_1_tl = List.tl tag_ptc_1_l;;

let tag_ptc_1_cur = List.hd tag_ptc_1_l;;

test_number 11 (
(tag_ptc_1_cur :
  Property_operand_body_target_created_symbol_t.property_operand_body_target_created_symbol
  Tag_t.tag ) =
  (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
    "Poi_h",
   [2; 2; 1; 40; 1; 17; 6])
);;

(* Containee Operator *)
let tag_pct_1_ope =
  Property_operand_body_target_created_container_v.property_operator_fence_creation_toentity_tag_of_tag
    tag_ptc_1_cur;;

test_number 12 (
(tag_pct_1_ope :
  Property_operator_fence_creation_toentity_symbol_t.property_operator_fence_creation_toentity_symbol
  Tag_t.tag ) =
  (Property_operator_fence_creation_toentity_symbol_t.Property_operator_fence_creation_toentity_constructor
    "Hom_b_2",
   [1; 2; 2; 1; 40; 1; 17; 6])
);;

let nam_var_1_ope = Property_operator_fence_creation_toentity_tag_v.string_off tag_pct_1_ope;;
let bna_var_1_ope = Basicname_v.basicname_variable_operator_of_string nam_var_1_ope;;

test_number 13 (
(bna_var_1_ope : Basicname_t.basicname ) =
Basicname_t.Variable_operator "Hom_b_2"
);;

(* Operation *)
let bna_1_opt =
  Basicname_operation_by_basicname_variable_operator_n_basicname_inputbox_provider_v.provide
    (bna_var_1_ope, bna_ibo);;

test_number 14 (
(bna_1_opt : Basicname_t.basicname ) = 
Basicname_t.Operation "homothety"
);;

let nam_opt = Basicname_v.string_off bna_1_opt;;
 
(* Measure_homogeneous_tuple_list of Cofactor_entity BC_B *)

let mea_hom_cof_1_tl =
  Cofactor_entity_measure_homogeneous_tuple_list_by_property_operator_fence_creation_toentity_tag_provider_v.provide
    tag_pct_1_ope;;

let mea_hom_cof_1_t = List.hd mea_hom_cof_1_tl;;

test_number 15 (
(mea_hom_cof_1_t : Measure_t.measure Tuple_t.tuple) =
Tuple_t.Trio
  ((1.,
    Units_t.Units_actual
      (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)),
   (0.,
    Units_t.Units_actual
      (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)),
   (0.,
    Units_t.Units_actual
      (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)))
);;

(* B (1.0, 0.0, 0.0) *)

let flo_cof_bas =
  Cofactor_basic_float_by_property_operator_fence_creation_toentity_tag_provider_v.provide
    tag_pct_1_ope ;;

test_number 16 (
(flo_cof_bas : float ) = 
2.
);;

let mea_hom_cur_1_tl =
  Coordinate_operation_measure_v.homothety 
    mea_hom_opd_1_tl 
    mea_hom_cof_1_t
    flo_cof_bas
;;

test_number 17 (
(mea_hom_cur_1_tl :
  (float, Units_t.units) Doublet_t.doublet Tuple_t.tuple list ) =
[Tuple_t.Trio
   ((0.,
     Units_t.Units_canonical
       (Units_canonical_t.Units_canonical_classical
          Units_canonical_classical_t.Canonical_classical_length_angstrom)),
    (0.999999999999999778,
     Units_t.Units_canonical
       (Units_canonical_t.Units_canonical_classical
          Units_canonical_classical_t.Canonical_classical_length_angstrom)),
    (1.41421356237309515,
     Units_t.Units_canonical
       (Units_canonical_t.Units_canonical_classical
          Units_canonical_classical_t.Canonical_classical_length_angstrom)))]
);;

(* H = (0., 1.0, Sqrt (2.) *)

(* Recursion on tag_ptc_l Step _2_ Poi_h -> Tra_s -> Poi_t *)

let mea_hom_opd_2_tl = mea_hom_cur_1_tl;; 

let tag_ptc_2_l = tag_ptc_1_tl;;

let tag_ptc_2_tl = List.tl tag_ptc_2_l;;

let tag_ptc_2_cur = List.hd tag_ptc_2_l;;

test_number 18 (
(tag_ptc_2_cur :
  Property_operand_body_target_created_symbol_t.property_operand_body_target_created_symbol
  Tag_t.tag ) =
  (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
    "Poi_t",
   [2; 1; 40; 1; 17; 6])
);;

(* Containee Operator *)
let tag_pct_2_ope =
  Property_operand_body_target_created_container_v.property_operator_fence_creation_toentity_tag_of_tag
    tag_ptc_2_cur;;

test_number 19 (
(tag_pct_2_ope :
  Property_operator_fence_creation_toentity_symbol_t.property_operator_fence_creation_toentity_symbol
  Tag_t.tag ) =
  (Property_operator_fence_creation_toentity_symbol_t.Property_operator_fence_creation_toentity_constructor
    "Tra_s",
   [1; 2; 1; 40; 1; 17; 6])
);;

let nam_var_2_ope = Property_operator_fence_creation_toentity_tag_v.string_off tag_pct_2_ope;;
let bna_var_2_ope = Basicname_v.basicname_variable_operator_of_string nam_var_2_ope;;

test_number 20 (
(bna_var_2_ope : Basicname_t.basicname ) =
Basicname_t.Variable_operator "Tra_s"
);;

(* Operation *)
let bna_2_opt =
  Basicname_operation_by_basicname_variable_operator_n_basicname_inputbox_provider_v.provide
    (bna_var_2_ope, bna_ibo);;

test_number 21 (
(bna_2_opt : Basicname_t.basicname ) = 
Basicname_t.Operation "translation"
);;

let nam_opt = Basicname_v.string_off bna_2_opt;;
 
(* Measure_homogeneous_tuple_list of Cofactor_entity *)

let mea_hom_cof_2_tl =
  Cofactor_entity_measure_homogeneous_tuple_list_by_property_operator_fence_creation_toentity_tag_provider_v.provide
    tag_pct_2_ope;;
 
test_number 22 (
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

(* S = (0, 1., 1) (1. 0. 0) *)

let mea_hom_cur_2_tl =
  Coordinate_operation_measure_v.translation 
    mea_hom_opd_2_tl 
    mea_hom_cof_2_tl
;;

test_number 23 (
(mea_hom_cur_2_tl :
  (float, Units_t.units) Doublet_t.doublet Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((-1.,
      Units_t.Units_canonical
       (Units_canonical_t.Units_canonical_classical
         Units_canonical_classical_t.Canonical_classical_length_angstrom)),
     (1.99999999999999978,
      Units_t.Units_canonical
       (Units_canonical_t.Units_canonical_classical
         Units_canonical_classical_t.Canonical_classical_length_angstrom)),
     (2.41421356237309492,
      Units_t.Units_canonical
       (Units_canonical_t.Units_canonical_classical
         Units_canonical_classical_t.Canonical_classical_length_angstrom)))]
);;

(* T (-1.0, 2.0, 1. +. Sqrt (2.)/.2)) *)

test_number 24 (
mea_hom_cur_2_tl = provide tag_ptc
);;
