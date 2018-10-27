open Make_test_v;;

testing "Measure_homogeneous_tuple_list_by_basicname_operation_n_measure_homogeneous_tuple_list_provider_v with
        Measure_homogeneous_tuple_list_by_basicname_operation_n_measure_homogeneous_tuple_list_provider_u_print_translation_tra_bc_point_a.ml";;

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
   #use "Measure_homogeneous_tuple_list_by_basicname_operation_n_measure_homogeneous_tuple_list_provider_u_print_translation_tra_bc_point_a.ml";; 

*)

(* open Measure_homogeneous_tuple_list_by_basicname_operation_n_measure_homogeneous_tuple_list_provider_v;; *)

let nam_ibo = "Print_translation_tra_bc_point_a";;
let nam_iba = "local";;
let nam_opt = "translation";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;
let bna_iba = Basicname_v.basicname_inputbase_of_string nam_iba;;
let bna_opt = Basicname_v.basicname_operation_of_string nam_iba;;

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
         "Print_translation_tra_bc_point_a")),
    [54; 1; 17; 6]);
   (Property_symbol_t.Property_target_symbol
     (Property_target_symbol_t.Property_target_body_symbol
       (Property_target_body_symbol_t.Property_target_body_implicit_symbol
         (Property_target_body_implicit_symbol_t.Property_target_body_implicit_tounit_symbol
           (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
             "Poi_t")))),
    [1; 54; 1; 17; 6]);
   (Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_fence_symbol
       (Property_operator_fence_symbol_t.Property_operator_fence_tounit_symbol
         (Property_operator_fence_tounit_symbol_t.Property_operator_fence_tounit_print_symbol
           (Property_operator_fence_tounit_print_symbol_t.Property_operator_fence_tounit_print_constructor
             "Poi_t")))),
    [1; 1; 54; 1; 17; 6]);
   (Property_symbol_t.Property_operand_symbol
     (Property_operand_symbol_t.Property_operand_body_symbol
       (Property_operand_body_symbol_t.Property_operand_body_target_symbol
         (Property_operand_body_target_symbol_t.Property_operand_body_target_created_symbol
           (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
             "Poi_t")))),
    [2; 1; 54; 1; 17; 6]);
   (Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_fence_symbol
       (Property_operator_fence_symbol_t.Property_operator_fence_creation_symbol
         (Property_operator_fence_creation_symbol_t.Property_operator_fence_creation_toentity_symbol
           (Property_operator_fence_creation_toentity_symbol_t.Property_operator_fence_creation_toentity_constructor
             "Tra_bc")))),
    [1; 2; 1; 54; 1; 17; 6]);
   (Property_symbol_t.Property_operand_symbol
     (Property_operand_symbol_t.Property_operand_fence_symbol
       (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
         (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
           "Poi_a"))),
    [2; 2; 1; 54; 1; 17; 6])]
);;

let pre_tag_ptm_sof sof (s, i) = (Property_symbol_v.property_operand_body_target_created_constructor sof = s);;
let nam_var_ptm = "Poi_t";;
let tag_pro_ptm = List_v.only_element_of_predicate_off_list (pre_tag_ptm_sof nam_var_ptm) tag_pro_l;;

test_number 2 (
(tag_pro_ptm : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_operand_symbol
    (Property_operand_symbol_t.Property_operand_body_symbol
      (Property_operand_body_symbol_t.Property_operand_body_target_symbol
        (Property_operand_body_target_symbol_t.Property_operand_body_target_created_symbol
          (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
            "Poi_t")))),
   [2; 1; 54; 1; 17; 6])
);;

(* Argument tag_ptm "Poi_t" *)

let tag_ptm = Property_operand_body_target_created_tag_v.property_operand_body_target_created_tag_off_property_tag tag_pro_ptm;;

test_number 3 (
( tag_ptm :
  Property_operand_body_target_created_symbol_t.property_operand_body_target_created_symbol
  Tag_t.tag ) =
  (Property_operand_body_target_created_symbol_t.Property_operand_body_target_created_constructor
    "Poi_t",
   [2; 1; 54; 1; 17; 6])
);;

let soi_ptm = Tag_v.sole_index_off_tag tag_ptm;;
  
test_number 4 (
bna_ibo = Basicname_inputbox_by_any_sole_index_provider_v.provide soi_ptm
);;

(* Containee Operator *)

let tag_pct = 
    Property_operand_body_target_created_container_v.property_operator_fence_creation_toentity_tag_of_tag 
      tag_ptm;;

test_number 5 (
(tag_pct :
  Property_operator_fence_creation_toentity_symbol_t.property_operator_fence_creation_toentity_symbol
  Tag_t.tag ) =
  (Property_operator_fence_creation_toentity_symbol_t.Property_operator_fence_creation_toentity_constructor
    "Tra_bc",
   [1; 2; 1; 54; 1; 17; 6])
);;

let nam_var_ope = Property_operator_fence_creation_toentity_tag_v.string_off tag_pct;;

let bna_var_ope = Basicname_v.basicname_variable_operator_of_string nam_var_ope;;

test_number 6 (
(bna_var_ope : Basicname_t.basicname ) =
  Basicname_t.Variable_operator "Tra_bc"
);;

(* Operation *)  
let bna_opt = 
  Basicname_operation_by_basicname_variable_operator_n_basicname_inputbox_provider_v.provide
    (bna_var_ope, bna_ibo)
;;

test_number 7 (
(bna_opt : Basicname_t.basicname ) = 
Basicname_t.Operation "translation"
);;

(* Ondomain *)  
let bna_ond = 
  Basicname_ondomain_by_basicname_variable_operator_n_basicname_inputbox_provider_v.provide
    (bna_var_ope, bna_ibo);;

test_number 8 (
(bna_ond : Basicname_t.basicname ) = 
Basicname_t.Ondomain "figure"
);;

(* Containee Operand *)

let tag_pod =
  Property_operand_body_target_created_container_v.property_operand_tag_of_tag 
    tag_ptm;;

test_number 9 (
(tag_pod : Property_operand_symbol_t.property_operand_symbol Tag_t.tag ) =
  (Property_operand_symbol_t.Property_operand_fence_symbol
    (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
      (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
        "Poi_a")),
   [2; 2; 1; 54; 1; 17; 6])
);;

let nam_var_pod = Property_operand_tag_v.string_off tag_pod;;

test_number 10 (
(nam_var_pod : string ) = 
"Poi_a"
);;

let bna_var_ext = Basicname_v.basicname_variable_external_of_string nam_var_pod;;

test_number 11 (
(bna_var_ext : Basicname_t.basicname ) =
  Basicname_t.Variable_external "Poi_a"
);;

let bna_dom_ext = 
    Basicname_domain_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
      (bna_var_ext, bna_ibo);;

test_number 12 (
(bna_dom_ext : Basicname_t.basicname ) = Basicname_t.Domain "figure"
);;

(* Measure *)
test_number 13 (
Basicname_v.string_off bna_ond = Basicname_v.string_off bna_dom_ext
);;

(* Measure_homogeneous_tuple_list of Operand *)
let mea_tl = 
  Measure_homogeneous_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
    (bna_var_ext, bna_ibo);;

test_number 14 (
(mea_tl : Measure_t.measure Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((0.5,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Meter)),
     (0.499999999999999889,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Meter)),
     (0.707106781186547573,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Meter)))]
);;

(* Calculation *)
let mea = Measure_by_basicname_operation_n_measure_homogeneous_tuple_list_provider_v.provide 
	(bna_opt, mea_tl);;

let sqrt_3 = sqrt (3.);;

test_number 15 ( 
(mea : (float, Units_t.units) Doublet_t.doublet ) =
  (sqrt_3,
   Units_t.Units_actual
    (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom))
);;
