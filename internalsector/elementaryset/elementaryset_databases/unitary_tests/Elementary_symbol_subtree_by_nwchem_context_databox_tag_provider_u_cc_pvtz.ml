open Make_test_v;;

testing "Elementary_symbol_subtree_by_nwchem_context_databox_tag_provider_v with
   Elementary_symbol_subtree_by_nwchem_context_databox_tag_provider_u_cc_pvtz.ml";;

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
   #use "Elementary_symbol_subtree_by_nwchem_context_databox_tag_provider_u_cc_pvtz.ml";;

*)

let nam_dbo = "cc_pvtz";;
let nam_dba = "nwchem";;
Parameters_general_register_v.store "databox-name" nam_dbo;;
Parameters_general_register_v.store "database-name" nam_dba;;

let tag_ncb = Nwchem_context_databox_tag_by_databox_name_provider_v.provide nam_dbo;;

test_number 1 (
( tag_ncb :
  Nwchem_context_databox_symbol_t.nwchem_context_databox_symbol Tag_t.tag ) =
  (Nwchem_context_databox_symbol_t.Nwchem_context_databox_constructor
    "cc_pvtz",
   [4; 5; 19; 5])
);;


open Elementary_symbol_subtree_by_nwchem_context_databox_tag_provider_v;;

let tag_nwc_l = Nwchem_tag_all_list_by_nwchem_context_databox_tag_provider_v.provide tag_ncb;;
  
let tag_nwc_anv_l = List.filter 
      (fun (s, i) -> Nwchem_symbol_v.is_nwchem_body_node_aoset_numerical_values s)
      tag_nwc_l;;

let sof_nwc_anv_l = List.map Nwchem_tag_v.string_off tag_nwc_anv_l;;

test_number 2 (
(sof_nwc_anv_l : string list ) =
  ["h s 1 gaussian 1"; "h s 1 gaussian 2"; "h s 1 gaussian 3";
   "h s 2 gaussian 1"; "h s 3 gaussian 1"; "h p 4 gaussian 1";
   "h p 5 gaussian 1"; "h d 6 gaussian 1"; "he s 1 gaussian 1";
   "he s 1 gaussian 2"; "he s 1 gaussian 3"; "he s 1 gaussian 4";
   "he s 2 gaussian 1"; "he s 3 gaussian 1"; "he p 4 gaussian 1";
   "he p 5 gaussian 1"; "he d 6 gaussian 1"; "li s 1 gaussian 1";
   "li s 1 gaussian 2"; "li s 1 gaussian 3"; "li s 1 gaussian 4";
   "li s 1 gaussian 5"; "li s 1 gaussian 6"; "li s 1 gaussian 7";
   "li s 1 gaussian 8"; "li s 1 gaussian 9"; "li s 2 gaussian 1";
   "li s 3 gaussian 1"; "li p 4 gaussian 1"; "li p 4 gaussian 2";
   "li p 4 gaussian 3"; "li p 5 gaussian 1"; "li p 6 gaussian 1";
   "li d 7 gaussian 1"; "li d 8 gaussian 1"; "li f 9 gaussian 1";
   "be s 1 gaussian 1"; "be s 1 gaussian 2"; "be s 1 gaussian 3";
   "be s 1 gaussian 4"; "be s 1 gaussian 5"; "be s 1 gaussian 6";
   "be s 1 gaussian 7"; "be s 1 gaussian 8"; "be s 1 gaussian 9";
   "be s 2 gaussian 1"; "be s 3 gaussian 1"; "be p 4 gaussian 1";
   "be p 4 gaussian 2"; "be p 4 gaussian 3"; "be p 5 gaussian 1";
   "be p 6 gaussian 1"; "be d 7 gaussian 1"; "be d 8 gaussian 1";
   "be f 9 gaussian 1"; "b s 1 gaussian 1"; "b s 1 gaussian 2";
   "b s 1 gaussian 3"; "b s 1 gaussian 4"; "b s 1 gaussian 5";
   "b s 1 gaussian 6"; "b s 1 gaussian 7"; "b s 1 gaussian 8";
   "b s 2 gaussian 1"; "b s 3 gaussian 1"; "b p 4 gaussian 1";
   "b p 4 gaussian 2"; "b p 4 gaussian 3"; "b p 5 gaussian 1";
   "b p 6 gaussian 1"; "b d 7 gaussian 1"; "b d 8 gaussian 1";
   "b f 9 gaussian 1"; "c s 1 gaussian 1"; "c s 1 gaussian 2";
   "c s 1 gaussian 3"; "c s 1 gaussian 4"; "c s 1 gaussian 5";
   "c s 1 gaussian 6"; "c s 1 gaussian 7"; "c s 1 gaussian 8";
   "c s 2 gaussian 1"; "c s 3 gaussian 1"; "c p 4 gaussian 1";
   "c p 4 gaussian 2"; "c p 4 gaussian 3"; "c p 5 gaussian 1";
   "c p 6 gaussian 1"; "c d 7 gaussian 1"; "c d 8 gaussian 1";
   "c f 9 gaussian 1"; "n s 1 gaussian 1"; "n s 1 gaussian 2";
   "n s 1 gaussian 3"; "n s 1 gaussian 4"; "n s 1 gaussian 5";
   "n s 1 gaussian 6"; "n s 1 gaussian 7"; "n s 1 gaussian 8";
   "n s 2 gaussian 1"; "n s 3 gaussian 1"; "n p 4 gaussian 1";
   "n p 4 gaussian 2"; "n p 4 gaussian 3"; "n p 5 gaussian 1";
   "n p 6 gaussian 1"; "n d 7 gaussian 1"; "n d 8 gaussian 1";
   "n f 9 gaussian 1"; "o s 1 gaussian 1"; "o s 1 gaussian 2";
   "o s 1 gaussian 3"; "o s 1 gaussian 4"; "o s 1 gaussian 5";
   "o s 1 gaussian 6"; "o s 1 gaussian 7"; "o s 1 gaussian 8";
   "o s 2 gaussian 1"; "o s 3 gaussian 1"; "o p 4 gaussian 1";
   "o p 4 gaussian 2"; "o p 4 gaussian 3"; "o p 5 gaussian 1";
   "o p 6 gaussian 1"; "o d 7 gaussian 1"; "o d 8 gaussian 1";
   "o f 9 gaussian 1"; "f s 1 gaussian 1"; "f s 1 gaussian 2";
   "f s 1 gaussian 3"; "f s 1 gaussian 4"; "f s 1 gaussian 5";
   "f s 1 gaussian 6"; "f s 1 gaussian 7"; "f s 1 gaussian 8";
   "f s 2 gaussian 1"; "f s 3 gaussian 1"; "f p 4 gaussian 1";
   "f p 4 gaussian 2"; "f p 4 gaussian 3"; "f p 5 gaussian 1";
   "f p 6 gaussian 1"; "f d 7 gaussian 1"; "f d 8 gaussian 1";
   "f f 9 gaussian 1"; "ne s 1 gaussian 1"; "ne s 1 gaussian 2";
   "ne s 1 gaussian 3"; "ne s 1 gaussian 4"; "ne s 1 gaussian 5";
   "ne s 1 gaussian 6"; "ne s 1 gaussian 7"; "ne s 1 gaussian 8";
   "ne s 2 gaussian 1"; "ne s 3 gaussian 1"; "ne p 4 gaussian 1";
   "ne p 4 gaussian 2"; "ne p 4 gaussian 3"; "ne p 5 gaussian 1";
   "ne p 6 gaussian 1"; "ne d 7 gaussian 1"; "ne d 8 gaussian 1";
   "ne f 9 gaussian 1"]
);;

let sof_ele_ptu_l = 
  Elementary_string_off_list_from_nwchem_body_node_aoset_numerical_values_string_off_list_translator_v.translate
    sof_nwc_anv_l;;

test_number 3 (
(sof_ele_ptu_l : string list ) =
  ["h s 1 1"; "h s 1 2"; "h s 1 3"; "h s 2 1"; "h s 3 1"; "h p 2 1";
   "h p 3 1"; "h d 3 1"; "he s 1 1"; "he s 1 2"; "he s 1 3"; "he s 1 4";
   "he s 2 1"; "he s 3 1"; "he p 2 1"; "he p 3 1"; "he d 3 1"; "li s 1 1";
   "li s 1 2"; "li s 1 3"; "li s 1 4"; "li s 1 5"; "li s 1 6"; "li s 1 7";
   "li s 1 8"; "li s 1 9"; "li s 2 1"; "li s 3 1"; "li p 2 1"; "li p 2 2";
   "li p 2 3"; "li p 3 1"; "li p 4 1"; "li d 3 1"; "li d 4 1"; "li f 4 1";
   "be s 1 1"; "be s 1 2"; "be s 1 3"; "be s 1 4"; "be s 1 5"; "be s 1 6";
   "be s 1 7"; "be s 1 8"; "be s 1 9"; "be s 2 1"; "be s 3 1"; "be p 2 1";
   "be p 2 2"; "be p 2 3"; "be p 3 1"; "be p 4 1"; "be d 3 1"; "be d 4 1";
   "be f 4 1"; "b s 1 1"; "b s 1 2"; "b s 1 3"; "b s 1 4"; "b s 1 5";
   "b s 1 6"; "b s 1 7"; "b s 1 8"; "b s 2 1"; "b s 3 1"; "b p 2 1";
   "b p 2 2"; "b p 2 3"; "b p 3 1"; "b p 4 1"; "b d 3 1"; "b d 4 1";
   "b f 4 1"; "c s 1 1"; "c s 1 2"; "c s 1 3"; "c s 1 4"; "c s 1 5";
   "c s 1 6"; "c s 1 7"; "c s 1 8"; "c s 2 1"; "c s 3 1"; "c p 2 1";
   "c p 2 2"; "c p 2 3"; "c p 3 1"; "c p 4 1"; "c d 3 1"; "c d 4 1";
   "c f 4 1"; "n s 1 1"; "n s 1 2"; "n s 1 3"; "n s 1 4"; "n s 1 5";
   "n s 1 6"; "n s 1 7"; "n s 1 8"; "n s 2 1"; "n s 3 1"; "n p 2 1";
   "n p 2 2"; "n p 2 3"; "n p 3 1"; "n p 4 1"; "n d 3 1"; "n d 4 1";
   "n f 4 1"; "o s 1 1"; "o s 1 2"; "o s 1 3"; "o s 1 4"; "o s 1 5";
   "o s 1 6"; "o s 1 7"; "o s 1 8"; "o s 2 1"; "o s 3 1"; "o p 2 1";
   "o p 2 2"; "o p 2 3"; "o p 3 1"; "o p 4 1"; "o d 3 1"; "o d 4 1";
   "o f 4 1"; "f s 1 1"; "f s 1 2"; "f s 1 3"; "f s 1 4"; "f s 1 5";
   "f s 1 6"; "f s 1 7"; "f s 1 8"; "f s 2 1"; "f s 3 1"; "f p 2 1";
   "f p 2 2"; "f p 2 3"; "f p 3 1"; "f p 4 1"; "f d 3 1"; "f d 4 1";
   "f f 4 1"; "ne s 1 1"; "ne s 1 2"; "ne s 1 3"; "ne s 1 4"; "ne s 1 5";
   "ne s 1 6"; "ne s 1 7"; "ne s 1 8"; "ne s 2 1"; "ne s 3 1"; "ne p 2 1";
   "ne p 2 2"; "ne p 2 3"; "ne p 3 1"; "ne p 4 1"; "ne d 3 1"; "ne d 4 1";
   "ne f 4 1"]
);;

let sof_ele_ptu_nep2_l = List.filter 
    (fun s -> (String.sub s) 0 7 = "ne p 2 ")
    sof_ele_ptu_l;;

test_number 4 (  
(sof_ele_ptu_nep2_l : string list ) =
 ["ne p 2 1"; "ne p 2 2"; "ne p 2 3"]
);;

let sym_ele_pta_nep2_l = List.map 
      Elementary_symbol_v.elementary_body_parameter_tuple_aopef_constructor 
      sof_ele_ptu_nep2_l;;

test_number 5 (
( sym_ele_pta_nep2_l : Elementary_symbol_t.elementary_symbol list ) =
  [Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
        (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
          "ne p 2 1")));
   Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
        (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
          "ne p 2 2")));
   Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
        (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
          "ne p 2 3")))]
);;

let sym_ele_exp_nep2_l = List.map 
      Elementary_symbol_v.elementary_border_parameter_aopef_exponent_constructor 
      sof_ele_ptu_nep2_l ;;

test_number 6 (
(sym_ele_exp_nep2_l : Elementary_symbol_t.elementary_symbol list ) =
  [Elementary_symbol_t.Elementary_border_symbol
    (Elementary_border_symbol_t.Elementary_border_parameter_symbol
      (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
        (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
          (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
            "ne p 2 1"))));
   Elementary_symbol_t.Elementary_border_symbol
    (Elementary_border_symbol_t.Elementary_border_parameter_symbol
      (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
        (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
          (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
            "ne p 2 2"))));
   Elementary_symbol_t.Elementary_border_symbol
    (Elementary_border_symbol_t.Elementary_border_parameter_symbol
      (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
        (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
          (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
            "ne p 2 3"))))]
);;

let sym_ele_coe_nep2_l = List.map 
      Elementary_symbol_v.elementary_border_parameter_aopef_coefficient_constructor 
      sof_ele_ptu_nep2_l ;;

test_number 7 (
( sym_ele_coe_nep2_l : Elementary_symbol_t.elementary_symbol list ) =
  [Elementary_symbol_t.Elementary_border_symbol
    (Elementary_border_symbol_t.Elementary_border_parameter_symbol
      (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
        (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
          (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
            "ne p 2 1"))));
   Elementary_symbol_t.Elementary_border_symbol
    (Elementary_border_symbol_t.Elementary_border_parameter_symbol
      (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
        (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
          (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
            "ne p 2 2"))));
   Elementary_symbol_t.Elementary_border_symbol
    (Elementary_border_symbol_t.Elementary_border_parameter_symbol
      (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
        (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
          (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
            "ne p 2 3"))))]
);;

let bohr_leaf = Tree_v.make_of_leaf Elementary_symbol_v.bohr;;
let sym_ele_exp_nep2_stl = List.map 
      (fun s -> Tree_v.make_of_node s [bohr_leaf])
      sym_ele_exp_nep2_l;;

let sym_ele_coe_nep2_stl = List.map 
      (fun s -> Tree_v.make_of_node s [bohr_leaf])
      sym_ele_coe_nep2_l;;

let sym_ele_pec_nep2_stll = List.map2 (fun e c  -> [e; c]) sym_ele_exp_nep2_stl sym_ele_coe_nep2_stl;;
let sym_ele_pta_nep2_stl = List.map2 Tree_v.make_of_node sym_ele_pta_nep2_l sym_ele_pec_nep2_stll;;

test_number 8 (
(sym_ele_pta_nep2_stl : Elementary_symbol_t.elementary_symbol Tree_t.tree list ) =
  [Tree_t.Inner
    (Elementary_symbol_t.Elementary_body_symbol
      (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
        (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
          (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
            "ne p 2 1"))),
    [Tree_t.Inner
      (Elementary_symbol_t.Elementary_border_symbol
        (Elementary_border_symbol_t.Elementary_border_parameter_symbol
          (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
            (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
              (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
                "ne p 2 1")))),
      [Tree_t.Leaf
        (Elementary_symbol_t.Elementary_fence_symbol
          (Elementary_fence_symbol_t.Elementary_fence_units_symbol
            (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
              Elementary_fence_units_actual_length_symbol_t.Bohr)))]);
     Tree_t.Inner
      (Elementary_symbol_t.Elementary_border_symbol
        (Elementary_border_symbol_t.Elementary_border_parameter_symbol
          (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
            (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
              (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
                "ne p 2 1")))),
      [Tree_t.Leaf
        (Elementary_symbol_t.Elementary_fence_symbol
          (Elementary_fence_symbol_t.Elementary_fence_units_symbol
            (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
              Elementary_fence_units_actual_length_symbol_t.Bohr)))])]);
   Tree_t.Inner
    (Elementary_symbol_t.Elementary_body_symbol
      (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
        (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
          (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
            "ne p 2 2"))),
    [Tree_t.Inner
      (Elementary_symbol_t.Elementary_border_symbol
        (Elementary_border_symbol_t.Elementary_border_parameter_symbol
          (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
            (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
              (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
                "ne p 2 2")))),
      [Tree_t.Leaf
        (Elementary_symbol_t.Elementary_fence_symbol
          (Elementary_fence_symbol_t.Elementary_fence_units_symbol
            (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
              Elementary_fence_units_actual_length_symbol_t.Bohr)))]);
     Tree_t.Inner
      (Elementary_symbol_t.Elementary_border_symbol
        (Elementary_border_symbol_t.Elementary_border_parameter_symbol
          (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
            (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
              (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
                "ne p 2 2")))),
      [Tree_t.Leaf
        (Elementary_symbol_t.Elementary_fence_symbol
          (Elementary_fence_symbol_t.Elementary_fence_units_symbol
            (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
              Elementary_fence_units_actual_length_symbol_t.Bohr)))])]);
   Tree_t.Inner
    (Elementary_symbol_t.Elementary_body_symbol
      (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
        (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
          (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
            "ne p 2 3"))),
    [Tree_t.Inner
      (Elementary_symbol_t.Elementary_border_symbol
        (Elementary_border_symbol_t.Elementary_border_parameter_symbol
          (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
            (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
              (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
                "ne p 2 3")))),
      [Tree_t.Leaf
        (Elementary_symbol_t.Elementary_fence_symbol
          (Elementary_fence_symbol_t.Elementary_fence_units_symbol
            (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
              Elementary_fence_units_actual_length_symbol_t.Bohr)))]);
     Tree_t.Inner
      (Elementary_symbol_t.Elementary_border_symbol
        (Elementary_border_symbol_t.Elementary_border_parameter_symbol
          (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
            (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
              (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
                "ne p 2 3")))),
      [Tree_t.Leaf
        (Elementary_symbol_t.Elementary_fence_symbol
          (Elementary_fence_symbol_t.Elementary_fence_units_symbol
            (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
              Elementary_fence_units_actual_length_symbol_t.Bohr)))])])]
);;

let nam_bas = Nwchem_context_databox_tag_v.string_off tag_ncb;;

let sym_ele_bas = Elementary_symbol_v.elementary_context_databox_skeletondata_constructor nam_bas;;

test_number 9 (
(sym_ele_bas : Elementary_symbol_t.elementary_symbol ) =
  Elementary_symbol_t.Elementary_context_symbol
   (Elementary_context_symbol_t.Elementary_context_databox_symbol
     (Elementary_context_databox_symbol_t.Elementary_context_databox_skeletondata_symbol
       (Elementary_context_databox_skeletondata_symbol_t.Elementary_context_databox_skeletondata_constructor
         "cc_pvtz")))
);;

let sym_ele_bas_nep2_st = Tree_v.make_of_node sym_ele_bas sym_ele_pta_nep2_stl;;

let sym_ele_tso_nep2_l = Tree_v.root_topson_node_list_off_tree sym_ele_bas_nep2_st;;

test_number 10 (
(sym_ele_tso_nep2_l : Elementary_symbol_t.elementary_symbol list ) =
[Elementary_symbol_t.Elementary_context_symbol
   (Elementary_context_symbol_t.Elementary_context_databox_symbol
      (Elementary_context_databox_symbol_t.Elementary_context_databox_skeletondata_symbol
         (Elementary_context_databox_skeletondata_symbol_t.Elementary_context_databox_skeletondata_constructor
            "cc_pvtz")));
 Elementary_symbol_t.Elementary_body_symbol
   (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
         (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
            "ne p 2 1")));
 Elementary_symbol_t.Elementary_body_symbol
   (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
         (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
            "ne p 2 2")));
 Elementary_symbol_t.Elementary_body_symbol
   (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
         (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
            "ne p 2 3")))]
);;

let sym_ele_nep23_st = Tree_v.subtree_find_of_node_predicate_off_tree 
    (fun s -> Elementary_symbol_v.string_off s = "ne p 2 3")
    sym_ele_bas_nep2_st
;;

test_number 11 (
(sym_ele_nep23_st : Elementary_symbol_t.elementary_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
       (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
         (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
           "ne p 2 3"))),
   [Tree_t.Inner
     (Elementary_symbol_t.Elementary_border_symbol
       (Elementary_border_symbol_t.Elementary_border_parameter_symbol
         (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
           (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_exponent_symbol
             (Elementary_border_parameter_aopef_exponent_symbol_t.Elementary_border_parameter_aopef_exponent_constructor
               "ne p 2 3")))),
     [Tree_t.Leaf
       (Elementary_symbol_t.Elementary_fence_symbol
         (Elementary_fence_symbol_t.Elementary_fence_units_symbol
           (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
             Elementary_fence_units_actual_length_symbol_t.Bohr)))]);
    Tree_t.Inner
     (Elementary_symbol_t.Elementary_border_symbol
       (Elementary_border_symbol_t.Elementary_border_parameter_symbol
         (Elementary_border_parameter_symbol_t.Elementary_border_parameter_aopef_symbol
           (Elementary_border_parameter_aopef_symbol_t.Elementary_border_parameter_aopef_coefficient_symbol
             (Elementary_border_parameter_aopef_coefficient_symbol_t.Elementary_border_parameter_aopef_coefficient_constructor
               "ne p 2 3")))),
     [Tree_t.Leaf
       (Elementary_symbol_t.Elementary_fence_symbol
         (Elementary_fence_symbol_t.Elementary_fence_units_symbol
           (Elementary_fence_units_symbol_t.Elementary_fence_units_actual_length_symbol
             Elementary_fence_units_actual_length_symbol_t.Bohr)))])])
);;
