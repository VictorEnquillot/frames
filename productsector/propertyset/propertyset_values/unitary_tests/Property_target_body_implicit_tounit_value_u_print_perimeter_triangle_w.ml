open Make_test_v;;

testing "Property_target_body_implicit_tounit_value_v with
        Property_target_body_implicit_tounit_value_u_print_perimeter_triangle_w.ml";;

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

(* define Con_tw *)
(*        context *)
(*          databox "Triangle_w" *)
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

(* define Tri_w         *)
(*        external  *)
(*          type [ "figure" "set" "fence" "point" "constructor" ] *)
(*          external_name "W" *)
(*          external_context Con_tw *)
(*          end -- external *)
(*        end -- define *)

(* define Tri_h *)
(*        target  *)
(*          type [ "property" "operand" "body" "target" "created" "constructor" ] *)
(*          target_operator Hom_b_2 *)
(*          target_operand Tri_w *)
(*          end -- target *)
(*        end -- define *)

(* define Tri_t *)
(*        target  *)
(*          type [ "property" "operand" "body" "target" "created" "constructor" ] *)
(*          target_operator Tra_s *)
(*          target_operand Tri_h *)
(*          end -- target *)
(*        end -- define *)

(* define Uni_len *)
(*        external  *)
(*          type [ "units" "length" "bohr" ] *)
(*          end -- external *)
(*        end -- define *)

(* print Tri_t *)
(*       units [ Uni_len ] *)
(*       end -- print *)

(* stop *)

(* toplevel 
   #use "Property_target_body_implicit_tounit_value_u_print_perimeter_triangle_w.ml";; 

*)

open Property_target_body_implicit_tounit_value_v;;

let nam_ibo = "Print_perimeter_triangle_w";;
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
         "Print_perimeter_triangle_w")),
    [47; 1; 17; 6]);
   (Property_symbol_t.Property_target_symbol
     (Property_target_symbol_t.Property_target_body_symbol
       (Property_target_body_symbol_t.Property_target_body_implicit_symbol
         (Property_target_body_implicit_symbol_t.Property_target_body_implicit_tounit_symbol
           (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
             "Per_w")))),
    [1; 47; 1; 17; 6]);
   (Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_fence_symbol
       (Property_operator_fence_symbol_t.Property_operator_fence_tounit_symbol
         (Property_operator_fence_tounit_symbol_t.Property_operator_fence_tounit_print_symbol
           (Property_operator_fence_tounit_print_symbol_t.Property_operator_fence_tounit_print_constructor
             "Per_w")))),
    [1; 1; 47; 1; 17; 6]);
   (Property_symbol_t.Property_operand_symbol
     (Property_operand_symbol_t.Property_operand_body_symbol
       (Property_operand_body_symbol_t.Property_operand_body_target_symbol
         (Property_operand_body_target_symbol_t.Property_operand_body_target_measured_symbol
           (Property_operand_body_target_measured_symbol_t.Property_operand_body_target_measured_constructor
             "Per_w")))),
    [2; 1; 47; 1; 17; 6]);
   (Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_fence_symbol
       (Property_operator_fence_symbol_t.Property_operator_fence_creation_symbol
         (Property_operator_fence_creation_symbol_t.Property_operator_fence_creation_tomeasure_symbol
           (Property_operator_fence_creation_tomeasure_symbol_t.Property_operator_fence_creation_tomeasure_constructor
             "Ope_per")))),
    [1; 2; 1; 47; 1; 17; 6]);
   (Property_symbol_t.Property_operand_symbol
     (Property_operand_symbol_t.Property_operand_fence_symbol
       (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
         (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
           "Tri_w"))),
    [2; 2; 1; 47; 1; 17; 6])]
);;

(* Argument tag_pit "Per_w" *)

let pre_tag_pit_sof sof (s, i) = (Property_symbol_v.property_target_body_implicit_tounit_constructor sof = s);;
let nam_var_pit = "Per_w";;
let tag_pro_pit = List_v.only_element_of_predicate_off_list (pre_tag_pit_sof nam_var_pit) tag_pro_l;;

test_number 2 (
(tag_pro_pit : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_target_symbol
    (Property_target_symbol_t.Property_target_body_symbol
      (Property_target_body_symbol_t.Property_target_body_implicit_symbol
        (Property_target_body_implicit_symbol_t.Property_target_body_implicit_tounit_symbol
          (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
            "Per_w")))),
   [1; 47; 1; 17; 6])
);;

let tag_pit = Property_target_body_implicit_tounit_tag_v.property_target_body_implicit_tounit_tag_off_property_tag tag_pro_pit;;

test_number 3 (
( tag_pit :
  Property_target_body_implicit_tounit_symbol_t.property_target_body_implicit_tounit_symbol Tag_t.tag ) =
  (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
    "Per_w",
   [1; 47; 1; 17; 6])
);;

(* Containee Operator *)
let tag_pot = 
  Property_target_body_implicit_tounit_container_v.property_operator_fence_tounit_tag_of_tag
    tag_pit;;

test_number 4 (
(tag_pot :
  Property_operator_fence_tounit_symbol_t.property_operator_fence_tounit_symbol
  Tag_t.tag ) =
  (Property_operator_fence_tounit_symbol_t.Property_operator_fence_tounit_print_symbol
    (Property_operator_fence_tounit_print_symbol_t.Property_operator_fence_tounit_print_constructor
      "Per_w"),
   [1; 1; 47; 1; 17; 6])
);;

(* Containee Operand *)
let tag_pro_opd =
  Property_target_body_implicit_tounit_container_v.property_operand_tag_of_tag
    tag_pit
;;

test_number 5 (
(tag_pro_opd : Property_operand_symbol_t.property_operand_symbol Tag_t.tag ) =
  (Property_operand_symbol_t.Property_operand_body_symbol
    (Property_operand_body_symbol_t.Property_operand_body_target_symbol
      (Property_operand_body_target_symbol_t.Property_operand_body_target_measured_symbol
        (Property_operand_body_target_measured_symbol_t.Property_operand_body_target_measured_constructor
          "Per_w"))),
   [2; 1; 47; 1; 17; 6])
);;

let sym_pot = Tag_v.entity_off_tag tag_pot;;

test_number 6 (
(sym_pot : Property_operator_fence_tounit_symbol_t.property_operator_fence_tounit_symbol ) =
  Property_operator_fence_tounit_symbol_t.Property_operator_fence_tounit_print_symbol
   (Property_operator_fence_tounit_print_symbol_t.Property_operator_fence_tounit_print_constructor
     "Per_w")
);;

let tag_ptm = Tag_v.map_entity
    Property_operand_symbol_v.property_operand_body_target_measured_symbol_off_property_operand_symbol 
    tag_pro_opd;;

test_number 7 (
(tag_ptm :
  Property_operand_body_target_measured_symbol_t.property_operand_body_target_measured_symbol
  Tag_t.tag ) =
  (Property_operand_body_target_measured_symbol_t.Property_operand_body_target_measured_constructor
    "Per_w",
   [2; 1; 47; 1; 17; 6])
);;

let mea = Property_operand_body_target_measured_value_v.value_of_tag tag_ptm;;

test_number 8 (
(mea : (float, Units_t.units) Doublet_t.doublet ) =
  (9.00389691313216,
   Units_t.Units_actual
    (Units_actual_t.Units_actual_length Units_actual_length_t.Nanometer))
);;

(Format.fprintf Format.std_formatter "@.%s" (Measure_v.name mea));;

value_of_tag tag_pit;; 
