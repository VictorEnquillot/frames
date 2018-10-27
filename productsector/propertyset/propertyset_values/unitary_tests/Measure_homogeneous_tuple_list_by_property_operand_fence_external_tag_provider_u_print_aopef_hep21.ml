open Make_test_v;;

testing "Measure_homogeneous_tuple_list_by_property_operand_fence_external_tag_provider_v with
        Measure_homogeneous_tuple_list_by_property_operand_fence_external_tag_provider_u_print_aopef_hep21.ml";;

(* Deleting Registers *)


(* Tracing *)

(* define Con_ao  *)
(*        context *)
(*          domain "skeleton" *)
(* 	    database "nwchem" *)
(* 	    databox "cc_pvtz" *)
(* 	    end -- context *)
(*        end -- define *)

(* define Aopef_hep21	 *)
(*        external  *)
(*          type [ "skeleton" "set" "fence" "centered" "aopef" "constructor" ] *)
(*          external_name "he p 2 1" *)
(*          external_context Con_ao *)
(*          end -- external *)
(*        end -- define *)

(* define Uni_len  *)
(*        external  *)
(*          type [ "units" "length" "bohr" ] *)
(*          external_context Con_ao *)
(*          end -- external *)
(*        end -- define *)

(* define Uni_ang  *)
(*        external  *)
(*          type [ "units" "angle" "radian" ] *)
(*          external_context Con_ao *)
(*          end -- external *)
(*        end -- define *)

(* print Aopef_hep21  *)
(*       units [ Uni_len Uni_ang ] *)
(*       end -- print *)

(* stop *)

(* toplevel 
   #use "Measure_homogeneous_tuple_list_by_property_operand_fence_external_tag_provider_u_print_aopef_hep21.ml";; 

*)

open Measure_homogeneous_tuple_list_by_property_operand_fence_external_tag_provider_v;;

let nam_ibo = "Print_aopef_hep21";;
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
         "Print_aopef_hep21")),
    [31; 1; 17; 6]);
   (Property_symbol_t.Property_target_symbol
     (Property_target_symbol_t.Property_target_body_symbol
       (Property_target_body_symbol_t.Property_target_body_implicit_symbol
         (Property_target_body_implicit_symbol_t.Property_target_body_implicit_tounit_symbol
           (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
             "Aopef_hep21")))),
    [1; 31; 1; 17; 6]);
   (Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_fence_symbol
       (Property_operator_fence_symbol_t.Property_operator_fence_tounit_symbol
         (Property_operator_fence_tounit_symbol_t.Property_operator_fence_tounit_print_symbol
           (Property_operator_fence_tounit_print_symbol_t.Property_operator_fence_tounit_print_constructor
             "Aopef_hep21")))),
    [1; 1; 31; 1; 17; 6]);
   (Property_symbol_t.Property_operand_symbol
     (Property_operand_symbol_t.Property_operand_fence_symbol
       (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
         (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
           "Aopef_hep21"))),
    [2; 1; 31; 1; 17; 6])]
);;

let pre_tag_pfe_sof sof (s, i) = (Property_symbol_v.property_operand_fence_external_constructor sof = s);;
let nam_var_pfe = "Aopef_hep21";;
let tag_pro_pfe = List_v.only_element_of_predicate_off_list (pre_tag_pfe_sof nam_var_pfe) tag_pro_l;;

test_number 2 (
(tag_pro_pfe : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_operand_symbol
    (Property_operand_symbol_t.Property_operand_fence_symbol
      (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
        (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
          "Aopef_hep21"))),
   [2; 1; 31; 1; 17; 6])
);;

(* Argument tag_pfe "Aopef_hep21" *)

let tag_pfe = Property_operand_fence_external_tag_v.property_operand_fence_external_tag_off_property_tag tag_pro_pfe;;

test_number 3 (
( tag_pfe :
  Property_operand_fence_external_symbol_t.property_operand_fence_external_symbol
  Tag_t.tag ) =
  (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
    "Aopef_hep21",
   [2; 1; 31; 1; 17; 6])
);;

let soi_pfe = Tag_v.sole_index_off_tag tag_pfe;;
  
test_number 4 (
bna_ibo = Basicname_inputbox_by_any_sole_index_provider_v.provide soi_pfe
);;

let tag_pro = Property_operand_fence_external_tag_v.property_tag_of_property_operand_fence_external_tag tag_pfe ;;

test_number 5 (
tag_pro = tag_pro_pfe 
);;

let bna = Basicname_by_property_tag_provider_v.provide tag_pro;;  

test_number 6 (
(bna : Basicname_t.basicname ) = 
Basicname_t.Variable_external "Aopef_hep21"
);;

let bna_var_ext = Basicname_v.basicname_variable_external_off_basicname bna;;

test_number 7 (
(bna_var_ext : Basicname_t.basicname ) =
Basicname_t.Variable_external "Aopef_hep21"
);;
	
let eee_tl =
    Elementary_envelopee_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
      (bna_var_ext, bna_ibo);;

let mea_hom_tl = Measure_homogeneous_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
    (bna_var_ext, bna_ibo)
;;

test_number 8 (
(mea_hom_tl : Measure_t.measure Tuple_t.tuple list ) =
  [Tuple_t.Duo
    ((3.044,
      Units_t.Units_canonical
       (Units_canonical_t.Units_canonical_quantum
         Units_canonical_quantum_t.Canonical_quantum_length_bohr)),
     (1.,
      Units_t.Units_canonical
       (Units_canonical_t.Units_canonical_quantum
         Units_canonical_quantum_t.Canonical_quantum_length_bohr)))]
);;

test_number 9 (
mea_hom_tl = provide tag_pfe
);;
