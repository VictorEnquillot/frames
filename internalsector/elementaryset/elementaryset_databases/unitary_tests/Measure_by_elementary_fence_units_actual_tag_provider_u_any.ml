open Make_test_v;;

testing "Measure_by_elementary_fence_units_actual_tag_provider_v with
   Measure_by_elementary_fence_units_actual_tag_provider_u_any.ml";;

(* Deleting Registers *)

Register_v.delete  Context_fullnameoffile_all_list_by_unit_register_v.register;;
Register_v.delete  Context_fullnameoffile_by_context_nameoffile_register_v.register;;
Register_v.delete  Context_name_by_context_nameoffile_register_v.register;;
Register_v.delete  Database_name_n_databox_name_by_db1figure_context_databox_tag_register_v.register;;
Register_v.delete  Database_name_n_databox_name_by_nwchem_context_databox_tag_register_v.register;;
Register_v.delete  Db1figure_as_body_sequence_float_tag_subtree_list_by_db1figure_context_databox_tag_register_v.register;;
Register_v.delete  Db1figure_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_symbol_by_sole_index_register_v.register;;
Register_v.delete  Db1figure_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Db1figure_tag_tree_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete  Elementary_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Measure_actual_by_elementary_fence_units_actual_tag_register_v.register;;
Register_v.delete  Measure_by_elementary_fence_units_actual_tag_register_v.register;;
Register_v.delete  Measure_canonical_by_elementary_fence_units_canonical_tag_register_v.register;;
Register_v.delete  Nwchem_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_symbol_by_sole_index_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Nwchem_tag_all_list_by_nwchem_context_databox_tag_register_v.register;;
Register_v.delete  Nwchem_tag_tree_by_database_name_n_databox_name_register_v.register;;
Register_v.delete  Parameters_general_register_v.register;;
Register_v.delete  Trace_what_by_module_name_register_v.register;;






(* Tracing *)

Parameters_general_register_v.store_force "trace-build" "false";;
Parameters_general_register_v.store_force "trace-store" "false";;
Parameters_general_register_v.store_force "trace-translate" "false";;
Parameters_general_register_v.store_force "trace-provide" "false";;
Parameters_general_register_v.store_force "trace-extract" "false";;

(* toplevel 
   #use "Measure_by_elementary_fence_units_actual_tag_provider_u_any.ml";;

*)

let nam_dba = "nwchem";;
let nam_dbo = "cc_pvtz";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

let tag_ele_t = Elementary_tag_tree_by_parameters_general_provider_v.provide ();;

let tag_ele_l = Elementary_tag_all_list_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_dbo);;

let tag_edo = Elementary_context_domain_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_edo : Elementary_context_domain_symbol_t.elementary_context_domain_symbol Tag_t.tag ) =
  (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor "elementary",
   [7])
);;

let tag_ele_dba = Elementary_as_database_tag_by_database_name_provider_v.provide nam_dba;;

test_number 2 (
(tag_ele_dba : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
 (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_database_symbol
      (Elementary_context_database_symbol_t.Elementary_context_database_constructor "nwchem")),
   [5; 7])
);;

let tag_ele_bas = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> 
      (Elementary_symbol_v.string_off s = nam_dna)
	&&
      (Elementary_symbol_v.is_elementary_context_databox_skeletondata_constructor s)
    ) tag_ele_l;;

test_number 3 (
( tag_ele_bas : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_databox_symbol
      (Elementary_context_databox_symbol_t.Elementary_context_databox_skeletondata_symbol
        (Elementary_context_databox_skeletondata_symbol_t.Elementary_context_databox_skeletondata_constructor
          "cc_pvtz"))),
   [4; 5; 7])
);;

(* Fence *)

let tag_ele_fen = List.filter (fun t ->
    Elementary_symbol_v.is_elementary_border_symbol_off_elementary_symbol (Tag_v.entity_off_tag t))
    tag_ele_l;;

(* Ne p 2 Fence *) 

let tag_ele_nep2_l =  List.filter 
    (fun (s, i) -> 
      (String.sub (Elementary_symbol_v.string_off s) 0 7 = "ne p 2 ")
    ) tag_ele_fen;;

test_number 4 (
(tag_ele_nep2_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_border_symbol
     (Elementary_border_symbol_t.Elementary_border_parameter_symbol
       (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
         (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
           (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
             "ne p 2 1")))),
    [1; 156; 4; 5; 7]);
   (Elementary_symbol_t.Elementary_border_symbol
     (Elementary_border_symbol_t.Elementary_border_parameter_symbol
       (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
         (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
           (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
             "ne p 2 1")))),
    [2; 156; 4; 5; 7]);
   (Elementary_symbol_t.Elementary_border_symbol
     (Elementary_border_symbol_t.Elementary_border_parameter_symbol
       (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
         (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
           (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
             "ne p 2 2")))),
    [1; 157; 4; 5; 7]);
   (Elementary_symbol_t.Elementary_border_symbol
     (Elementary_border_symbol_t.Elementary_border_parameter_symbol
       (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
         (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
           (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
             "ne p 2 2")))),
    [2; 157; 4; 5; 7]);
   (Elementary_symbol_t.Elementary_border_symbol
     (Elementary_border_symbol_t.Elementary_border_parameter_symbol
       (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
         (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
           (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
             "ne p 2 3")))),
    [1; 158; 4; 5; 7]);
   (Elementary_symbol_t.Elementary_border_symbol
     (Elementary_border_symbol_t.Elementary_border_parameter_symbol
       (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
         (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
           (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
             "ne p 2 3")))),
    [2; 158; 4; 5; 7])]
);;

(* Node Aopef "ne p 2 1" Coefficient *)

let nam_ele_pac = "ne p 2 1"
let tag_ele_pac = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> 
      (Elementary_symbol_v.string_off s = nam_ele_pac)
	&&
      (Elementary_symbol_v.is_elementary_border_parameter_aopef_coefficient_constructor s)
    ) tag_ele_fen;;

test_number 5 (
( tag_ele_pac : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
(Elementary_symbol_t.Elementary_border_symbol
    (Elementary_border_symbol_t.Elementary_border_parameter_symbol
      (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
        (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
          (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
            "ne p 2 1")))),
   [2; 156; 4; 5; 7])
);;

let tag_ele_pta = Tree_v.father_of_node_of_tree tag_ele_pac tag_ele_t;;

test_number 6 ( 
(tag_ele_pta : Elementary_symbol_t.elementary_symbol Tag_t.tag ) =
  (Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
        (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
          "ne p 2 1"))),
   [156; 4; 5; 7])
);;

(* Subtree at "ne p 2 1" Parameter_tuple_aopef *)

let tag_ele_pta_st = Tree_v.subtree_find_of_node_predicate_off_tree (fun t -> t = tag_ele_pta) tag_ele_t;;

test_number 7 (
(tag_ele_pta_st : Elementary_symbol_t.elementary_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Elementary_symbol_t.Elementary_body_symbol
      (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
        (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
          (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
            "ne p 2 1"))),
     [156; 4; 5; 7]),
   [Tree_t.Inner
     ((Elementary_symbol_t.Elementary_border_symbol
        (Elementary_border_symbol_t.Elementary_border_parameter_symbol
          (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
            (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
              (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
                "ne p 2 1")))),
       [1; 156; 4; 5; 7]),
     [Tree_t.Leaf
       (Elementary_symbol_t.Elementary_fence_symbol
         (Elementary_fence_symbol_t.Elementary_fence_units_symbol
           (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
             Elementary_fence_units_actual_length_symbol_t.Bohr)),
        [1; 1; 156; 4; 5; 7])]);
    Tree_t.Inner
     ((Elementary_symbol_t.Elementary_border_symbol
        (Elementary_border_symbol_t.Elementary_border_parameter_symbol
          (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
            (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
              (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
                "ne p 2 1")))),
       [2; 156; 4; 5; 7]),
     [Tree_t.Leaf
       (Elementary_symbol_t.Elementary_fence_symbol
         (Elementary_fence_symbol_t.Elementary_fence_units_symbol
           (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
             Elementary_fence_units_actual_length_symbol_t.Bohr)),
        [1; 2; 156; 4; 5; 7])])])
);;

let tag_ele_ule_l = Tree_v.leaf_node_list_off_tree tag_ele_pta_st;;

test_number 8 (
(tag_ele_ule_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list) =
  [(Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_units_symbol
       (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
         Elementary_fence_units_actual_length_symbol_t.Bohr)),
    [1; 1; 156; 4; 5; 7]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_units_symbol
       (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
         Elementary_fence_units_actual_length_symbol_t.Bohr)),
    [1; 2; 156; 4; 5; 7])]
);;

open Measure_by_elementary_fence_units_actual_tag_provider_v;;

(* Argument exponent *)

let tag_ele_ule_1 = List.nth tag_ele_ule_l 0;;
let tag_eun = Tag_v.map_entity Elementary_symbol_v.elementary_fence_units_symbol_off_elementary_symbol tag_ele_ule_1;;

test_number 9 (
(tag_eun : Elementary_fence_units_symbol_t.elementary_fence_units_symbol Tag_t.tag ) =
  (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
    Elementary_fence_units_actual_length_symbol_t.Bohr,
   [1; 1; 156; 4; 5; 7])
);;

let soi_eun = Tag_v.sole_index_off_tag tag_eun;;
  
let nam_edb = 
    Elementary_any_category_by_sole_index_extractor_v.elementary_context_database_string_off_off_sole_index 
      soi_eun;;

test_number 10 (
(nam_edb : string ) = 
"nwchem"
);;

let nam_eba =
    Elementary_any_category_by_sole_index_extractor_v.elementary_context_databox_skeletondata_string_off_off_sole_index 
      soi_eun;;

test_number 11 (
(nam_eba : string ) = 
"cc_pvtz"
);;

let tag_ncb = Nwchem_context_databox_tag_by_databox_name_provider_v.provide nam_eba;;

test_number 12 (
(tag_ncb : Nwchem_context_databox_symbol_t.nwchem_context_databox_symbol Tag_t.tag ) =
  (Nwchem_context_databox_symbol_t.Nwchem_context_databox_constructor
    "cc_pvtz",
   [4; 5; 19; 5])
);;

let tag_nwc_l = Nwchem_tag_all_list_by_nwchem_context_databox_tag_provider_v.provide tag_ncb;;
let tag_nwc_t = Nwchem_tag_tree_by_nwchem_context_databox_tag_provider_v.provide tag_ncb;;
      
let tag_ept = 
  Elementary_any_category_by_sole_index_extractor_v.elementary_body_parameter_tuple_tag_off_sole_index 
  soi_eun;;

test_number 13 (
(tag_ept : Elementary_body_parameter_tuple_symbol_t.elementary_body_parameter_tuple_symbol Tag_t.tag ) =
  (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
    (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
      "ne p 2 1"),
   [156; 4; 5; 7])
);;

let sof_ept = Elementary_body_parameter_tuple_tag_v.string_off tag_ept;;

test_number 14 (
(sof_ept : string ) = 
"ne p 2 1"
);;


let sof_nwc_cen = String.sub sof_ept 0 2;;

let tag_nwc_cen = List_v.only_element_of_predicate_off_list
	  (fun (s, i) -> 
	    (Nwchem_symbol_v.is_nwchem_body_node_aoset_onecenter_block s)
	      &&
	    (Nwchem_symbol_v.string_off s = sof_nwc_cen)
	  )
	  tag_nwc_l;;

test_number 15 (
(tag_nwc_cen : Nwchem_symbol_t.nwchem_symbol Tag_t.tag ) =
  (Nwchem_symbol_t.Nwchem_body_symbol
    (Nwchem_body_symbol_t.Nwchem_body_node_symbol
      (Nwchem_body_node_symbol_t.Nwchem_body_node_aoset_onecenter_block
        "ne")),
   [10; 2; 2; 2; 4; 5; 19; 5])
);;

 let tag_nwc_anv_st = 
	nwchem_as_body_node_aoset_numerical_values_tag_subtree_of_nwchem_tag_tree_of_elementary_body_parameter_tuple 
	  tag_nwc_t 
	  tag_ept ;;

test_number 16 (
(tag_nwc_anv_st : Nwchem_symbol_t.nwchem_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Nwchem_symbol_t.Nwchem_body_symbol
      (Nwchem_body_symbol_t.Nwchem_body_node_symbol
        (Nwchem_body_node_symbol_t.Nwchem_body_node_aoset_numerical_values
          "ne p 4 gaussian 1")),
     [1; 2; 4; 2; 10; 2; 2; 2; 4; 5; 19; 5]),
   [Tree_t.Leaf
     (Nwchem_symbol_t.Nwchem_fence_symbol
       (Nwchem_fence_symbol_t.Nwchem_fence_float_positive "54.7000000"),
      [1; 1; 2; 4; 2; 10; 2; 2; 2; 4; 5; 19; 5]);
    Tree_t.Leaf
     (Nwchem_symbol_t.Nwchem_fence_symbol
       (Nwchem_fence_symbol_t.Nwchem_fence_float_positive "0.0171510"),
      [2; 1; 2; 4; 2; 10; 2; 2; 2; 4; 5; 19; 5])])
);;

let tag_nwc_fen = Tree_v.leaf_node_list_off_tree tag_nwc_anv_st;;

test_number 17 (
(tag_nwc_fen : Nwchem_symbol_t.nwchem_symbol Tag_t.tag list ) =
  [(Nwchem_symbol_t.Nwchem_fence_symbol
     (Nwchem_fence_symbol_t.Nwchem_fence_float_positive "54.7000000"),
    [1; 1; 2; 4; 2; 10; 2; 2; 2; 4; 5; 19; 5]);
   (Nwchem_symbol_t.Nwchem_fence_symbol
     (Nwchem_fence_symbol_t.Nwchem_fence_float_positive "0.0171510"),
    [2; 1; 2; 4; 2; 10; 2; 2; 2; 4; 5; 19; 5])]
);;

let sof_nwc_fen = List.map Nwchem_tag_v.string_off tag_nwc_fen;;


let flo_l = List.map String_v.float_of_string sof_nwc_fen;;



let sym_ept = Tag_v.entity_off_tag tag_ept;;

test_number 18 (
(sym_ept :
  Elementary_body_parameter_tuple_symbol_t.elementary_body_parameter_tuple_symbol ) =
  Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
   (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
     "ne p 2 1")
);;

let mea = provide tag_eun;;

test_number 19 (
(mea : Measure_t.measure) =
(54.7,
 Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
   Elementary_fence_units_actual_length_symbol_t.Bohr)
);;


(* Argument coefficient *)

let tag_ele_ule_2 = List.nth tag_ele_ule_l 1;;
let tag_eun = Tag_v.map_entity Elementary_symbol_v.elementary_fence_units_symbol_off_elementary_symbol tag_ele_ule_2;;

test_number 20 (
(tag_eun : Elementary_fence_units_symbol_t.elementary_fence_units_symbol Tag_t.tag ) =
  (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
    Elementary_fence_units_actual_length_symbol_t.Bohr,
   [1; 2; 156; 4; 5; 7])
);;

let mea = provide tag_eun;;

test_number 21 (
(mea : Measure_t.measure) =
(0.017151,
 Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
   Elementary_fence_units_actual_length_symbol_t.Bohr)
);;

