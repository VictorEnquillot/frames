open Make_test_v;;

testing "Measured_float_tuple_list_by_property_operand_body_target_created_tag_provider_v with
        Measured_float_tuple_list_by_property_operand_body_target_created_tag_provider_u_print_translation_tra_bc_tra_s_point_a.ml";;

(* Deleting Registers *)
(* Tracing *)
Trace_what_by_module_name_register_v.store "Measure_homogeneous_tuple_list_by_property_operand_body_target_created_tag_provider_v" "debug";;

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

(* coordinates_units_length  bohr *)
(* coordinates_units_angle   radian *)
(* coordinates_kind          spherical  *)
(* figure_kind point *)
(* figure_name A *)
(* vertex A_A       1. 0.785398163397448279 0.785398163397448279 *)

(* Poi_a            1.         pi/4               pi/4           *)
(* Poi_a            0.5        0.5            (Sqrt 2)/2         *)
(* Poi_a            0.5        0.5         0.70710678118654757   bohr *)

(* BC              -1.0        1.0                1.0            angstrom *)
(* S                1.0       -1.0               -1.0            angstrom *)

(* stop *)

(* toplevel 
   #use "Measured_float_tuple_list_by_property_operand_body_target_created_tag_provider_u_print_translation_tra_bc_tra_s_point_a.ml";; 

*)

open Measured_float_tuple_list_by_property_operand_body_target_created_tag_provider_v;; 

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

(* Argument tag_ptc "Poi_u" *)

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

(* Poi_a -- Tra_bc --> Poi_t --> Tra_s --> Poi_u *) 

(* Path from External up to Current [Poi_t; Poi_u] *)

let tag_ptc_l =
  Property_tag_path_from_target_to_target_by_property_operand_body_target_created_tag_provider_v.provide
    tag_ptc;;

test_number 6 (
(tag_ptc_l :
  Property_operand_body_target_created_symbol_t.property_operand_body_target_created_symbol
  Tag_t.tag list ) =
  [(Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
     "Poi_t",
    [2; 2; 1; 59; 1; 17; 6]);
   (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
     "Poi_u",
    [2; 1; 59; 1; 17; 6])]
);;

(* Measured_float_tuple_list for Operand_external *)
  
let tag_pfe =
  Property_operand_fence_external_tag_by_property_operand_body_target_created_provider_v.provide 
    tag_ptc
;;

test_number 7 (
(tag_pfe :
   Property_operand_fence_external_symbol_t.property_operand_fence_external_symbol
   Tag_t.tag ) =
(Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
   "Poi_a",
 [2; 2; 2; 1; 59; 1; 17; 6])
);;

let flo_opd_ext_mtl =
    Measured_float_tuple_list_by_property_operand_fence_external_tag_provider_v.provide
      tag_pfe
;;

let sqrt2on2 = sqrt (2.) /. (2.);;

test_number 8 (
(sqrt2on2 : float ) = 
0.707106781186547573
);;

test_number 9 (
(flo_opd_ext_mtl :
  (float Uno_t.uno Tuple_t.tuple, Units_t.units) Doublet_t.doublet list ) =
  [(Tuple_t.Trio (0.5, 0.499999999999999889, 0.707106781186547573),
    Units_t.Units_actual
     (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr))]
);;

let flo_poi_a_mt = List.hd flo_opd_ext_mtl;;
let flo_poi_a_t_bohr = Measured_float_tuple_v.float_tuple_off_measured_float_tuple flo_poi_a_mt;;

test_number 10 (
(flo_poi_a_t_bohr : float Uno_t.uno Tuple_t.tuple ) =
  Tuple_t.Trio (0.5, 0.499999999999999889, 0.707106781186547573)
);;

(* Recursions *)
(* Step 1 : Poi_a -- Tra_bc --> Poi_t *) 

let flo_opd_mtl_1 = flo_opd_ext_mtl;;
let tag_ptc_cur_1 = List.hd tag_ptc_l;; (* Poi_t *)
let tag_ptc_tl_1 = List.tl tag_ptc_l;;

(* Containee Operator *)
let tag_pct_ope =
  Property_operand_body_target_created_container_v.property_operator_fence_creation_toentity_tag_of_tag
    tag_ptc_cur_1;;

test_number 11 (
(tag_pct_ope :
   Property_operator_fence_creation_toentity_symbol_t.property_operator_fence_creation_toentity_symbol
   Tag_t.tag ) =
(Property_operator_fence_creation_toentity_symbol_t.Property_operator_fence_creation_toentity_constructor
   "Tra_bc",
 [1; 2; 2; 1; 59; 1; 17; 6])
);;

let nam_var_ope = Property_operator_fence_creation_toentity_tag_v.string_off tag_pct_ope;;
let bna_var_ope = Basicname_v.basicname_variable_operator_of_string nam_var_ope;;

test_number 12 (
(bna_var_ope : Basicname_t.basicname ) =
  Basicname_t.Variable_operator "Tra_bc"
);;

(* Operation *)
let bna_opt =
  Basicname_operation_by_basicname_variable_operator_n_basicname_inputbox_provider_v.provide
    (bna_var_ope, bna_ibo)
;;

let nam_opt = Basicname_v.string_off bna_opt;;

test_number 13 (
(nam_opt : string ) = 
"translation"
);;

let flo_cof_mt_1 =
   Cofactor_entity_measured_float_tuple_by_property_operator_fence_creation_toentity_tag_provider_v.provide
     tag_pct_ope 
;;

(* BC -1.0, 1.0, 1.0 Angstrom *)
(* BC -1.88972612456506184,  1.88972612456506184, 1.88972612456506184 Bohr *)

let bohr_to_angstrom = 0.52917721092;;
let angstrom_to_bohr = 1. /. 0.52917721092;;

test_number 14 (
(angstrom_to_bohr : float ) = 
1.88972612456506184
);;

test_number 15 (
(flo_cof_mt_1 : (float Uno_t.uno Tuple_t.tuple, Units_t.units) Doublet_t.doublet ) =
(Tuple_t.Trio (-0.999999999999999889, 1., 1.),
 Units_t.Units_actual
  (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))
);;

let flo_vec_bc_t_angstrom = Measured_float_tuple_v.float_tuple_off_measured_float_tuple flo_cof_mt_1;;

test_number 16 (
(flo_vec_bc_t_angstrom : float Uno_t.uno Tuple_t.tuple ) =
Tuple_t.Trio (-0.999999999999999889, 1., 1.)
);;

let flo_vec_bc_t_bohr = Float_tuple_v.multiply_of_float_tuple_of_float flo_vec_bc_t_angstrom angstrom_to_bohr ;;
test_number 17 (
(flo_vec_bc_t_bohr : float Tuple_t.tuple ) =
  Tuple_t.Trio
   (-1.88972612456506162, 1.88972612456506184, 1.88972612456506184)
);;

let flo_cur_mtl_1 = List.map
    (fun o ->
      Coordinate_operation_measured_float_tuple_v.translation_point_measured_float_tuple_of_operand_measured_float_tuple_of_vector_measured_float_tuple 
    o 
    flo_cof_mt_1
)
  flo_opd_mtl_1;;

let poi_t_x = 0.5 +. (-1.88972612456506184);;
test_number 18 (
(poi_t_x : float ) = 
-1.38972612456506184
);;

let poi_t_y = 0.5 +. 1.88972612456506184;;
test_number 19 (
(poi_t_y : float ) = 
2.38972612456506184
);;

let poi_t_z = 0.707106781186547573 +. 1.88972612456506184;;
test_number 20 (
(poi_t_z : float ) = 
2.5968329057516093
);;

let poi_t_t = Float_tuple_v.addition_of_float_tuple_of_float_tuple flo_poi_a_t_bohr flo_vec_bc_t_bohr;;

(* Poi_t -1.38972612456506162, 2.38972612456506184, 2.5968329057516093) *)
test_number 21 (
(flo_cur_mtl_1 : (float Tuple_t.tuple, Units_t.units) Doublet_t.doublet list ) =
[(Tuple_t.Trio
    (-1.38972612456506162, 2.38972612456506184, 2.5968329057516093),
  Units_t.Units_actual
    (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr))]
);;

(* Step 2 : Poi_t -- Tra_s --> Poi_u *) 

let flo_opd_mtl_2 = flo_opd_mtl_1;;
let tag_ptc_cur_2 = List.hd tag_ptc_tl_1;; (* Poi_u *)

(* Containee Operator *)
let tag_pct_ope =
  Property_operand_body_target_created_container_v.property_operator_fence_creation_toentity_tag_of_tag
    tag_ptc_cur_2;;

test_number 22 (
(tag_pct_ope :
   Property_operator_fence_creation_toentity_symbol_t.property_operator_fence_creation_toentity_symbol
   Tag_t.tag ) =
  (Property_operator_fence_creation_toentity_symbol_t.Property_operator_fence_creation_toentity_constructor
    "Tra_s",
   [1; 2; 1; 59; 1; 17; 6])
);;

let nam_var_ope = Property_operator_fence_creation_toentity_tag_v.string_off tag_pct_ope;;
let bna_var_ope = Basicname_v.basicname_variable_operator_of_string nam_var_ope;;

test_number 23 (
(bna_var_ope : Basicname_t.basicname ) =
  Basicname_t.Variable_operator "Tra_s"
);;

(* Operation *)
let bna_opt =
  Basicname_operation_by_basicname_variable_operator_n_basicname_inputbox_provider_v.provide
    (bna_var_ope, bna_ibo)
;;

let nam_opt = Basicname_v.string_off bna_opt;;

test_number 24 (
(nam_opt : string ) = 
"translation"
);;

let flo_cof_mt_2 =
   Cofactor_entity_measured_float_tuple_by_property_operator_fence_creation_toentity_tag_provider_v.provide
     tag_pct_ope 
;;

(* Tra_s  1.0 -1.0 -1.0 *)
test_number 25 (
(flo_cof_mt_2 : (float Uno_t.uno Tuple_t.tuple, Units_t.units) Doublet_t.doublet ) =
  (Tuple_t.Trio (1., -1., -1.),
   Units_t.Units_actual
     (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))
);;

let flo_vec_s_t_bohr = Float_tuple_v.multiply_of_float_tuple_of_float flo_vec_bc_t_bohr (-1.);;

test_number 26 (
(flo_vec_s_t_bohr : float Tuple_t.tuple ) =
  Tuple_t.Trio
   (1.88972612456506162, -1.88972612456506184, -1.88972612456506184)
);;

let flo_cur_mtl_2 = List.map
    (fun o ->
      Coordinate_operation_measured_float_tuple_v.translation_point_measured_float_tuple_of_operand_measured_float_tuple_of_vector_measured_float_tuple 
    o 
    flo_cof_mt_2
)
  flo_opd_mtl_2;;

test_number 27 (
(flo_cur_mtl_2 : (float Tuple_t.tuple, Units_t.units) Doublet_t.doublet list ) =
[(Tuple_t.Trio
    (2.38972612456506184, -1.38972612456506184, -1.18261934337851438),
  Units_t.Units_actual
    (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr))]
);;

let flo_mtl = provide tag_ptc;;

test_number 28 (
( flo_mtl :
  (float Uno_t.uno Tuple_t.tuple, Units_t.units) Doublet_t.doublet list ) =
  [(Tuple_t.Trio (0.500000000000000222, 0.5, 0.707106781186547462),
    Units_t.Units_actual    
     (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr))]
);;

let flo_mt_u = List.hd flo_mtl;;
let flo_mt_a = List.hd flo_opd_ext_mtl;;

let boo = Measured_float_tuple_v.are_equal_of_epsilon Constants_v.zero_double flo_mt_u flo_mt_a;;

test_number 29 (
(boo : bool ) = 
true
);;
