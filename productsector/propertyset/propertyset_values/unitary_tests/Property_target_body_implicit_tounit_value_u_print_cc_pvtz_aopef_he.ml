open Make_test_v;;

testing "Property_target_body_implicit_tounit_value_v with
        Property_target_body_implicit_tounit_value_u_print_cc_pvtz_aopef_he.ml";;

(* Deleting Registers *)

(* Tracing *)

(* 
   Trace_what_by_module_name_register_v.store "Localinput_parser_cell_leaf_by_localinput_lexeme_cell_doublet_provider_v" "debug";; 
*)

(* define Con_ao  *)
(*        context *)
(*          domain "skeleton" *)
(*          database "nwchem" *)
(*          databox "cc_pVTZ" *)
(*          end -- context *)
(*        end -- define *)

(* define Aopef_he	 *)
(*        external  *)
(*          type [ "skeleton" "set" "body" "centered" "aopefset" "onecenter" "constructor" ] *)
(*          external_name "he" *)
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

(* print Aopef_he *)
(*       units [ Uni_len Uni_ang ] *)
(*       end -- print *)

(* stop *)

(* #BASIS SET: (6s,2p,1d) -> [3s,2p,1d] *)
(* He    S *)
(*     234.0000000              0.0025870         *)
(*      35.1600000              0.0195330         *)
(*       7.9890000              0.0909980         *)
(*       2.2120000              0.2720500         *)
(* He    S *)
(*       0.6669000              1.0000000         *)
(* He    S *)
(*       0.2089000              1.0000000         *)
(* He    P *)
(*       3.0440000              1.0000000         *)
(* He    P *)
(*       0.7580000              1.0000000         *)
(* He    D *)
(*       1.9650000              1.0000000      *)

(* toplevel 
   #use "Property_target_body_implicit_tounit_value_u_print_cc_pvtz_aopef_he.ml";; 

*)

open Property_target_body_implicit_tounit_value_v;;

let nam_ibo = "Print_cc_pvtz_aopef_he";;
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
         "Print_cc_pvtz_aopef_he")),
    [31; 1; 17; 6]);
   (Property_symbol_t.Property_target_symbol
     (Property_target_symbol_t.Property_target_body_symbol
       (Property_target_body_symbol_t.Property_target_body_implicit_symbol
         (Property_target_body_implicit_symbol_t.Property_target_body_implicit_tounit_symbol
           (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
             "Aopef_he")))),
    [1; 31; 1; 17; 6]);
   (Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_fence_symbol
       (Property_operator_fence_symbol_t.Property_operator_fence_tounit_symbol
         (Property_operator_fence_tounit_symbol_t.Property_operator_fence_tounit_print_symbol
           (Property_operator_fence_tounit_print_symbol_t.Property_operator_fence_tounit_print_constructor
             "Aopef_he")))),
    [1; 1; 31; 1; 17; 6]);
   (Property_symbol_t.Property_operand_symbol
     (Property_operand_symbol_t.Property_operand_fence_symbol
       (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
         (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
           "Aopef_he"))),
    [2; 1; 31; 1; 17; 6])]
);;

(* Argument tag_pit "Aopef_he" *)

let pre_tag_pit_sof sof (s, i) = (Property_symbol_v.property_target_body_implicit_tounit_constructor sof = s);;
let nam_var_pit = "Aopef_he";;
let tag_pro_pit = List_v.only_element_of_predicate_off_list (pre_tag_pit_sof nam_var_pit) tag_pro_l;;

test_number 2 (
(tag_pro_pit : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_target_symbol
    (Property_target_symbol_t.Property_target_body_symbol
      (Property_target_body_symbol_t.Property_target_body_implicit_symbol
        (Property_target_body_implicit_symbol_t.Property_target_body_implicit_tounit_symbol
          (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
            "Aopef_he")))),
   [1; 31; 1; 17; 6])
);;

let tag_pit = Property_target_body_implicit_tounit_tag_v.property_target_body_implicit_tounit_tag_off_property_tag tag_pro_pit;;

test_number 3 (
( tag_pit :
  Property_target_body_implicit_tounit_symbol_t.property_target_body_implicit_tounit_symbol Tag_t.tag ) =
  (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
    "Aopef_he",
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
        "Aopef_he")),
   [2; 1; 31; 1; 17; 6])
);;

let sym_pro_opd = Tag_v.entity_off_tag tag_pro_opd;;

test_number 5 (
(sym_pro_opd : Property_operand_symbol_t.property_operand_symbol ) =
  Property_operand_symbol_t.Property_operand_fence_symbol
   (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
     (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
       "Aopef_he"))
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
      "Aopef_he"),
   [1; 1; 31; 1; 17; 6])
);;

let sym_pot = Tag_v.entity_off_tag tag_pot;;

test_number 7 (
(sym_pot : Property_operator_fence_tounit_symbol_t.property_operator_fence_tounit_symbol ) =
  Property_operator_fence_tounit_symbol_t.Property_operator_fence_tounit_print_symbol
   (Property_operator_fence_tounit_print_symbol_t.Property_operator_fence_tounit_print_constructor
     "Aopef_he")
);;

let tag_pfe = Tag_v.map_entity
    Property_operand_symbol_v.property_operand_fence_external_symbol_off_property_operand_symbol 
    tag_pro_opd;;
		 

test_number 8 (	 
(tag_pfe :
  Property_operand_fence_external_symbol_t.property_operand_fence_external_symbol
   Tag_t.tag ) =
		 (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
		    "Aopef_he",
		  [2; 1; 31; 1; 17; 6])
);;

let flo_mtl =
  Measured_float_tuple_list_by_property_operand_fence_external_tag_provider_v.provide 
    tag_pfe;;

test_number 9 (
(flo_mtl :
  (float Uno_t.uno Tuple_t.tuple, Units_t.units) Doublet_t.doublet list ) =
  [(Tuple_t.Duo (234., 0.002587),
    Units_t.Units_canonical
     (Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr));
   (Tuple_t.Duo (35.16, 0.019533),
    Units_t.Units_canonical
     (Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr));
   (Tuple_t.Duo (7.989, 0.090998),
    Units_t.Units_canonical
     (Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr));
   (Tuple_t.Duo (2.212, 0.27205),
    Units_t.Units_canonical
     (Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr));
   (Tuple_t.Duo (0.6669, 1.),
    Units_t.Units_canonical
     (Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr));
   (Tuple_t.Duo (0.2089, 1.),
    Units_t.Units_canonical
     (Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr));
   (Tuple_t.Duo (3.044, 1.),
    Units_t.Units_canonical
     (Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr));
   (Tuple_t.Duo (0.758, 1.),
    Units_t.Units_canonical
     (Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr));
   (Tuple_t.Duo (1.965, 1.),
    Units_t.Units_canonical
     (Units_canonical_t.Units_canonical_quantum
       Units_canonical_quantum_t.Canonical_quantum_length_bohr))]
);;

let sof_pot = Property_operator_fence_tounit_symbol_v.string_off sym_pot;;

test_number 10 (
(sof_pot : string ) = 
"Aopef_he"
);;

(Format.fprintf Format.std_formatter "@.Print \"%s\":@." sof_pot);;
(Format.fprintf Format.std_formatter "@.%s" 
		      (List_v.name_in_column Measured_float_tuple_v.shortname flo_mtl)
		   );;

value_of_tag tag_pit;; 
