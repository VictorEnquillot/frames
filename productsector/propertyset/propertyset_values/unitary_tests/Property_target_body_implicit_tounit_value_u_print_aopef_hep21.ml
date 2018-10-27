open Make_test_v;;

testing "Property_target_body_implicit_tounit_value_v with
        Property_target_body_implicit_tounit_value_u_print_aopef_hep21.ml";;

(* Deleting Registers *)

(* Tracing *)
Trace_what_by_module_name_register_v.store "Localinput_parser_cell_leaf_by_localinput_lexeme_cell_doublet_provider_v" "debug";;


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
   #use "Property_target_body_implicit_tounit_value_u_print_aopef_hep21.ml";; 

*)

open Property_target_body_implicit_tounit_value_v;;

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

(* Argument tag_pit "Aopef_hep21" *)

let pre_tag_pit_sof sof (s, i) = (Property_symbol_v.property_target_body_implicit_tounit_constructor sof = s);;
let nam_var_pit = "Aopef_hep21";;
let tag_pro_pit = List_v.only_element_of_predicate_off_list (pre_tag_pit_sof nam_var_pit) tag_pro_l;;

test_number 2 (
(tag_pro_pit : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_target_symbol
    (Property_target_symbol_t.Property_target_body_symbol
      (Property_target_body_symbol_t.Property_target_body_implicit_symbol
        (Property_target_body_implicit_symbol_t.Property_target_body_implicit_tounit_symbol
          (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
            "Aopef_hep21")))),
   [1; 31; 1; 17; 6])
);;

let tag_pit = Property_target_body_implicit_tounit_tag_v.property_target_body_implicit_tounit_tag_off_property_tag tag_pro_pit;;

test_number 3 (
( tag_pit :
  Property_target_body_implicit_tounit_symbol_t.property_target_body_implicit_tounit_symbol Tag_t.tag ) =
  (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
    "Aopef_hep21",
   [1; 31; 1; 17; 6])
);;

(* Containee Operand *)
let tag_pro_opd =
  Property_target_body_implicit_tounit_container_v.property_operand_tag_of_tag
    tag_pit
;;

test_number 4 (
(tag_pro_opd : Property_operand_symbol_t.property_operand_symbol Tag_t.tag ) =
  (Property_operand_symbol_t.Property_operand_fence_symbol
    (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
      (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
        "Aopef_hep21")),
   [2; 1; 31; 1; 17; 6])
);;

let sym_pro_opd = Tag_v.entity_off_tag tag_pro_opd;;

test_number 5 (
(sym_pro_opd : Property_operand_symbol_t.property_operand_symbol ) =
  Property_operand_symbol_t.Property_operand_fence_symbol
   (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
     (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
       "Aopef_hep21"))
);;

(* Containee Operator *)
let tag_pot = 
  Property_target_body_implicit_tounit_container_v.property_operator_fence_tounit_tag_of_tag
    tag_pit;;

test_number 6 (
(tag_pot :
  Property_operator_fence_tounit_symbol_t.property_operator_fence_tounit_symbol
  Tag_t.tag ) =
  (Property_operator_fence_tounit_symbol_t.Property_operator_fence_tounit_print_symbol
    (Property_operator_fence_tounit_print_symbol_t.Property_operator_fence_tounit_print_constructor
      "Aopef_hep21"),
   [1; 1; 31; 1; 17; 6])
);;

let sym_pot = Tag_v.entity_off_tag tag_pot;;

test_number 7 (
(sym_pot : Property_operator_fence_tounit_symbol_t.property_operator_fence_tounit_symbol ) =
  Property_operator_fence_tounit_symbol_t.Property_operator_fence_tounit_print_symbol
   (Property_operator_fence_tounit_print_symbol_t.Property_operator_fence_tounit_print_constructor
     "Aopef_hep21")
);;

let tag_pfe = Tag_v.map_entity
    Property_operand_symbol_v.property_operand_fence_external_symbol_off_property_operand_symbol 
    tag_pro_opd;;
		 

test_number 8 (	 
(tag_pfe :
  Property_operand_fence_external_symbol_t.property_operand_fence_external_symbol
   Tag_t.tag ) =
		 (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
		    "Aopef_hep21",
		  [2; 1; 31; 1; 17; 6])
);;

let eee_ele_tl = 
  Elementary_envelopee_tuple_list_by_property_operand_fence_external_tag_provider_v.provide
    tag_pfe;;

let sof_pot = Property_operator_fence_tounit_symbol_v.string_off sym_pot;;

(Format.fprintf Format.std_formatter "@.Print \"%s\":@." sof_pot);;

(Format.fprintf Format.std_formatter "@.%s" 
   (Tuple_list_v.name Measure_v.string_off mea_hom_tl)
);;

value_of_tag tag_pit;; 
