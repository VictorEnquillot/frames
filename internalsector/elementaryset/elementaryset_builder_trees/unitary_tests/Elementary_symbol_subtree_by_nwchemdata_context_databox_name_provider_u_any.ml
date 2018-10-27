open Make_test_v;;

testing "Elementary_symbol_subtree_by_nwchemdata_context_databox_name_provider_v with
   Elementary_symbol_subtree_by_nwchemdata_context_databox_name_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_elementary_context_databox_tag_register_v.register;;
Register_v.delete Elementary_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Elementary_fence_by_elementary_tag_register_v.register;;
Register_v.delete Elementary_son_tag_list_by_elementary_father_tag_register_v.register;;
Register_v.delete Elementary_symbol_by_sole_index_register_v.register;;
Register_v.delete Elementary_tag_all_list_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Elementary_tag_all_list_by_elementary_context_databox_tag_register_v.register;;
Register_v.delete Elementary_tag_subtree_by_elementary_tag_register_v.register;;
Register_v.delete Elementary_tag_tree_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Elementary_tag_tree_by_elementary_context_databox_tag_register_v.register;;


(* Tracing *)

(* Debugging *)


(* toplevel 
   #use "Elementary_symbol_subtree_by_nwchemdata_context_databox_name_provider_u_any.ml";;

*)

open Elementary_symbol_subtree_by_nwchemdata_context_databox_name_provider_v;;

let nam_nbo = "try_ao";;

let sym_nwc_st = 
  Nwchemdata_symbol_subtree_by_databox_name_provider_v.provide
    nam_nbo
;;

let sym_nwc_rtl = Tree_v.root_topson_node_list_off_tree sym_nwc_st;;

test_number 1 (
(sym_nwc_rtl : Nwchemdata_symbol_t.nwchemdata_symbol list ) =
  [Nwchemdata_symbol_t.Nwchemdata_context_symbol
    (Nwchemdata_context_symbol_t.Nwchemdata_context_databox_symbol
      (Nwchemdata_context_databox_symbol_t.Nwchemdata_context_databox_constructor
        "try_ao"));
   Nwchemdata_symbol_t.Nwchemdata_context_symbol
    (Nwchemdata_context_symbol_t.Nwchemdata_context_version_symbol
      (Nwchemdata_context_version_symbol_t.Nwchemdata_context_version_constructor
        "v1.2.2"));
   Nwchemdata_symbol_t.Nwchemdata_body_symbol
    (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
      (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aobasis_block
        "try_ao"))]
);;

let sym_nwc_sl = Tree_v.node_list_off_tree sym_nwc_st;;

let sym_nwc_anv_l = List.filter
    Nwchemdata_symbol_v.is_nwchemdata_body_node_aoset_numerical_values
    sym_nwc_sl
;;

test_number 2 (
(sym_nwc_anv_l : Nwchemdata_symbol_t.nwchemdata_symbol list ) =
[Nwchemdata_symbol_t.Nwchemdata_body_symbol
   (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
      (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aoset_numerical_values
         "He S 1 GAUSSIAN 1"));
 Nwchemdata_symbol_t.Nwchemdata_body_symbol
    (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
      (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aoset_numerical_values
        "He S 1 GAUSSIAN 2"));
   Nwchemdata_symbol_t.Nwchemdata_body_symbol
    (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
      (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aoset_numerical_values
        "He S 2 GAUSSIAN 1"));
   Nwchemdata_symbol_t.Nwchemdata_body_symbol
    (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
      (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aoset_numerical_values
        "He P 3 GAUSSIAN 1"));
   Nwchemdata_symbol_t.Nwchemdata_body_symbol
    (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
      (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aoset_numerical_values
        "He P 3 GAUSSIAN 2"));
   Nwchemdata_symbol_t.Nwchemdata_body_symbol
    (Nwchemdata_body_symbol_t.Nwchemdata_body_node_symbol
      (Nwchemdata_body_node_symbol_t.Nwchemdata_body_node_aoset_numerical_values
        "He P 4 GAUSSIAN 1"))]
);;

let sof_nwc_anv_l = List.map Nwchemdata_symbol_v.string_off sym_nwc_anv_l;;

test_number 3 ( 
(sof_nwc_anv_l : string list ) =
  ["He S 1 GAUSSIAN 1"; "He S 1 GAUSSIAN 2"; "He S 2 GAUSSIAN 1";
   "He P 3 GAUSSIAN 1"; "He P 3 GAUSSIAN 2"; "He P 4 GAUSSIAN 1"]
);;

  let sof_ele_ptu_l = 
    Elementary_string_off_list_by_nwchemdata_body_node_aoset_numerical_values_string_off_list_translator_v.translate
      sof_nwc_anv_l
 ;;

test_number 4 (
(sof_ele_ptu_l : string list ) =
  ["he s 1 1"; "he s 1 2"; "he s 2 1"; "he p 2 1"; "he p 2 2"; "he p 3 1"]
);;

let sym_ele_pta_l = List.map 
    Elementary_symbol_v.elementary_body_parameter_tuple_aopef_constructor 
    sof_ele_ptu_l 
;;  

test_number 5 (
(sym_ele_pta_l : Elementary_symbol_t.elementary_symbol list ) =
  [Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
        (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
          "he s 1 1")));
   Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
        (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
          "he s 1 2")));
   Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
        (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
          "he s 2 1")));
   Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
        (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
          "he p 2 1")));
   Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
        (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
          "he p 2 2")));
   Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
        (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
          "he p 3 1")))]
);;

let sym_ele_coe_l = List.map 
    Elementary_symbol_v.elementary_fence_parameter_aopef_coefficient_constructor 
    sof_ele_ptu_l 
;;

test_number 6 (
( sym_ele_coe_l : Elementary_symbol_t.elementary_symbol list ) =
  [Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_parameter_symbol
      (Elementary_fence_parameter_symbol_t.Elementary_fence_parameter_aopef_symbol
        (Elementary_fence_parameter_aopef_symbol_t.Elementary_fence_parameter_aopef_coefficient_symbol
          (Elementary_fence_parameter_aopef_coefficient_symbol_t.Elementary_fence_parameter_aopef_coefficient_constructor
            "he s 1 1"))));
   Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_parameter_symbol
      (Elementary_fence_parameter_symbol_t.Elementary_fence_parameter_aopef_symbol
        (Elementary_fence_parameter_aopef_symbol_t.Elementary_fence_parameter_aopef_coefficient_symbol
          (Elementary_fence_parameter_aopef_coefficient_symbol_t.Elementary_fence_parameter_aopef_coefficient_constructor
            "he s 1 2"))));
   Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_parameter_symbol
      (Elementary_fence_parameter_symbol_t.Elementary_fence_parameter_aopef_symbol
        (Elementary_fence_parameter_aopef_symbol_t.Elementary_fence_parameter_aopef_coefficient_symbol
          (Elementary_fence_parameter_aopef_coefficient_symbol_t.Elementary_fence_parameter_aopef_coefficient_constructor
            "he s 2 1"))));
   Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_parameter_symbol
      (Elementary_fence_parameter_symbol_t.Elementary_fence_parameter_aopef_symbol
        (Elementary_fence_parameter_aopef_symbol_t.Elementary_fence_parameter_aopef_coefficient_symbol
          (Elementary_fence_parameter_aopef_coefficient_symbol_t.Elementary_fence_parameter_aopef_coefficient_constructor
            "he p 2 1"))));
   Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_parameter_symbol
      (Elementary_fence_parameter_symbol_t.Elementary_fence_parameter_aopef_symbol
        (Elementary_fence_parameter_aopef_symbol_t.Elementary_fence_parameter_aopef_coefficient_symbol
          (Elementary_fence_parameter_aopef_coefficient_symbol_t.Elementary_fence_parameter_aopef_coefficient_constructor
            "he p 2 2"))));
   Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_parameter_symbol
      (Elementary_fence_parameter_symbol_t.Elementary_fence_parameter_aopef_symbol
        (Elementary_fence_parameter_aopef_symbol_t.Elementary_fence_parameter_aopef_coefficient_symbol
          (Elementary_fence_parameter_aopef_coefficient_symbol_t.Elementary_fence_parameter_aopef_coefficient_constructor
            "he p 3 1"))))]
);;

let sym_ele_exp_l = List.map 
    Elementary_symbol_v.elementary_fence_parameter_aopef_exponent_constructor 
    sof_ele_ptu_l 
;;

test_number 7 (
(sym_ele_exp_l : Elementary_symbol_t.elementary_symbol list ) =
  [Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_parameter_symbol
      (Elementary_fence_parameter_symbol_t.Elementary_fence_parameter_aopef_symbol
        (Elementary_fence_parameter_aopef_symbol_t.Elementary_fence_parameter_aopef_exponent_symbol
          (Elementary_fence_parameter_aopef_exponent_symbol_t.Elementary_fence_parameter_aopef_exponent_constructor
            "he s 1 1"))));
   Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_parameter_symbol
      (Elementary_fence_parameter_symbol_t.Elementary_fence_parameter_aopef_symbol
        (Elementary_fence_parameter_aopef_symbol_t.Elementary_fence_parameter_aopef_exponent_symbol
          (Elementary_fence_parameter_aopef_exponent_symbol_t.Elementary_fence_parameter_aopef_exponent_constructor
            "he s 1 2"))));
   Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_parameter_symbol
      (Elementary_fence_parameter_symbol_t.Elementary_fence_parameter_aopef_symbol
        (Elementary_fence_parameter_aopef_symbol_t.Elementary_fence_parameter_aopef_exponent_symbol
          (Elementary_fence_parameter_aopef_exponent_symbol_t.Elementary_fence_parameter_aopef_exponent_constructor
            "he s 2 1"))));
   Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_parameter_symbol
      (Elementary_fence_parameter_symbol_t.Elementary_fence_parameter_aopef_symbol
        (Elementary_fence_parameter_aopef_symbol_t.Elementary_fence_parameter_aopef_exponent_symbol
          (Elementary_fence_parameter_aopef_exponent_symbol_t.Elementary_fence_parameter_aopef_exponent_constructor
            "he p 2 1"))));
   Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_parameter_symbol
      (Elementary_fence_parameter_symbol_t.Elementary_fence_parameter_aopef_symbol
        (Elementary_fence_parameter_aopef_symbol_t.Elementary_fence_parameter_aopef_exponent_symbol
          (Elementary_fence_parameter_aopef_exponent_symbol_t.Elementary_fence_parameter_aopef_exponent_constructor
            "he p 2 2"))));
   Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_parameter_symbol
      (Elementary_fence_parameter_symbol_t.Elementary_fence_parameter_aopef_symbol
        (Elementary_fence_parameter_aopef_symbol_t.Elementary_fence_parameter_aopef_exponent_symbol
          (Elementary_fence_parameter_aopef_exponent_symbol_t.Elementary_fence_parameter_aopef_exponent_constructor
            "he p 3 1"))))]
);;

let sym_ele_coe_stl = List.map
    Tree_v.make_of_leaf
    sym_ele_coe_l
;;

test_number 8 (
( sym_ele_coe_stl : Elementary_symbol_t.elementary_symbol Tree_t.tree list ) =
  [Tree_t.Leaf
    (Elementary_symbol_t.Elementary_fence_symbol
      (Elementary_fence_symbol_t.Elementary_fence_parameter_symbol
        (Elementary_fence_parameter_symbol_t.Elementary_fence_parameter_aopef_symbol
          (Elementary_fence_parameter_aopef_symbol_t.Elementary_fence_parameter_aopef_coefficient_symbol
            (Elementary_fence_parameter_aopef_coefficient_symbol_t.Elementary_fence_parameter_aopef_coefficient_constructor
              "he s 1 1")))));
   Tree_t.Leaf
    (Elementary_symbol_t.Elementary_fence_symbol
      (Elementary_fence_symbol_t.Elementary_fence_parameter_symbol
        (Elementary_fence_parameter_symbol_t.Elementary_fence_parameter_aopef_symbol
          (Elementary_fence_parameter_aopef_symbol_t.Elementary_fence_parameter_aopef_coefficient_symbol
            (Elementary_fence_parameter_aopef_coefficient_symbol_t.Elementary_fence_parameter_aopef_coefficient_constructor
              "he s 1 2")))));
   Tree_t.Leaf
    (Elementary_symbol_t.Elementary_fence_symbol
      (Elementary_fence_symbol_t.Elementary_fence_parameter_symbol
        (Elementary_fence_parameter_symbol_t.Elementary_fence_parameter_aopef_symbol
          (Elementary_fence_parameter_aopef_symbol_t.Elementary_fence_parameter_aopef_coefficient_symbol
            (Elementary_fence_parameter_aopef_coefficient_symbol_t.Elementary_fence_parameter_aopef_coefficient_constructor
              "he s 2 1")))));
   Tree_t.Leaf
    (Elementary_symbol_t.Elementary_fence_symbol
      (Elementary_fence_symbol_t.Elementary_fence_parameter_symbol
        (Elementary_fence_parameter_symbol_t.Elementary_fence_parameter_aopef_symbol
          (Elementary_fence_parameter_aopef_symbol_t.Elementary_fence_parameter_aopef_coefficient_symbol
            (Elementary_fence_parameter_aopef_coefficient_symbol_t.Elementary_fence_parameter_aopef_coefficient_constructor
              "he p 2 1")))));
   Tree_t.Leaf
    (Elementary_symbol_t.Elementary_fence_symbol
      (Elementary_fence_symbol_t.Elementary_fence_parameter_symbol
        (Elementary_fence_parameter_symbol_t.Elementary_fence_parameter_aopef_symbol
          (Elementary_fence_parameter_aopef_symbol_t.Elementary_fence_parameter_aopef_coefficient_symbol
            (Elementary_fence_parameter_aopef_coefficient_symbol_t.Elementary_fence_parameter_aopef_coefficient_constructor
              "he p 2 2")))));
   Tree_t.Leaf
    (Elementary_symbol_t.Elementary_fence_symbol
      (Elementary_fence_symbol_t.Elementary_fence_parameter_symbol
        (Elementary_fence_parameter_symbol_t.Elementary_fence_parameter_aopef_symbol
          (Elementary_fence_parameter_aopef_symbol_t.Elementary_fence_parameter_aopef_coefficient_symbol
            (Elementary_fence_parameter_aopef_coefficient_symbol_t.Elementary_fence_parameter_aopef_coefficient_constructor
              "he p 3 1")))))]
);;

let sym_ele_exp_stl = List.map
    Tree_v.make_of_leaf
    sym_ele_exp_l
;;

test_number 9 (
( sym_ele_exp_stl : Elementary_symbol_t.elementary_symbol Tree_t.tree list ) =
  [Tree_t.Leaf
    (Elementary_symbol_t.Elementary_fence_symbol
      (Elementary_fence_symbol_t.Elementary_fence_parameter_symbol
        (Elementary_fence_parameter_symbol_t.Elementary_fence_parameter_aopef_symbol
          (Elementary_fence_parameter_aopef_symbol_t.Elementary_fence_parameter_aopef_exponent_symbol
            (Elementary_fence_parameter_aopef_exponent_symbol_t.Elementary_fence_parameter_aopef_exponent_constructor
              "he s 1 1")))));
   Tree_t.Leaf
    (Elementary_symbol_t.Elementary_fence_symbol
      (Elementary_fence_symbol_t.Elementary_fence_parameter_symbol
        (Elementary_fence_parameter_symbol_t.Elementary_fence_parameter_aopef_symbol
          (Elementary_fence_parameter_aopef_symbol_t.Elementary_fence_parameter_aopef_exponent_symbol
            (Elementary_fence_parameter_aopef_exponent_symbol_t.Elementary_fence_parameter_aopef_exponent_constructor
              "he s 1 2")))));
   Tree_t.Leaf
    (Elementary_symbol_t.Elementary_fence_symbol
      (Elementary_fence_symbol_t.Elementary_fence_parameter_symbol
        (Elementary_fence_parameter_symbol_t.Elementary_fence_parameter_aopef_symbol
          (Elementary_fence_parameter_aopef_symbol_t.Elementary_fence_parameter_aopef_exponent_symbol
            (Elementary_fence_parameter_aopef_exponent_symbol_t.Elementary_fence_parameter_aopef_exponent_constructor
              "he s 2 1")))));
   Tree_t.Leaf
    (Elementary_symbol_t.Elementary_fence_symbol
      (Elementary_fence_symbol_t.Elementary_fence_parameter_symbol
        (Elementary_fence_parameter_symbol_t.Elementary_fence_parameter_aopef_symbol
          (Elementary_fence_parameter_aopef_symbol_t.Elementary_fence_parameter_aopef_exponent_symbol
            (Elementary_fence_parameter_aopef_exponent_symbol_t.Elementary_fence_parameter_aopef_exponent_constructor
              "he p 2 1")))));
   Tree_t.Leaf
    (Elementary_symbol_t.Elementary_fence_symbol
      (Elementary_fence_symbol_t.Elementary_fence_parameter_symbol
        (Elementary_fence_parameter_symbol_t.Elementary_fence_parameter_aopef_symbol
          (Elementary_fence_parameter_aopef_symbol_t.Elementary_fence_parameter_aopef_exponent_symbol
            (Elementary_fence_parameter_aopef_exponent_symbol_t.Elementary_fence_parameter_aopef_exponent_constructor
              "he p 2 2")))));
   Tree_t.Leaf
    (Elementary_symbol_t.Elementary_fence_symbol
      (Elementary_fence_symbol_t.Elementary_fence_parameter_symbol
        (Elementary_fence_parameter_symbol_t.Elementary_fence_parameter_aopef_symbol
          (Elementary_fence_parameter_aopef_symbol_t.Elementary_fence_parameter_aopef_exponent_symbol
            (Elementary_fence_parameter_aopef_exponent_symbol_t.Elementary_fence_parameter_aopef_exponent_constructor
              "he p 3 1")))))]
);;

let sym_ele_pec_stll = List.map2 
    (fun e c  -> [e; c]) sym_ele_exp_stl sym_ele_coe_stl
;;

let sym_ele_pta_stl = List.map2 Tree_v.make_of_node sym_ele_pta_l sym_ele_pec_stll;;

let sym_ele_ebo = Elementary_symbol_v.elementary_context_databox_constructor nam_nbo;;

test_number 10 (
(sym_ele_ebo : Elementary_symbol_t.elementary_symbol ) =
  Elementary_symbol_t.Elementary_context_symbol
   (Elementary_context_symbol_t.Elementary_context_databox_symbol
     (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor
       "try_ao"))
);;

let sym_ele_st = Tree_v.make_of_node sym_ele_ebo sym_ele_pta_stl ;;

let sym_ele_rtl = Tree_v.root_topson_node_list_off_tree sym_ele_st;;

test_number 11 (
(sym_ele_rtl : Elementary_symbol_t.elementary_symbol list ) =
  [Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_databox_symbol
      (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor
        "try_ao"));
   Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
        (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
          "he s 1 1")));
   Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
        (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
          "he s 1 2")));
   Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
        (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
          "he s 2 1")));
   Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
        (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
          "he p 2 1")));
   Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
        (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
          "he p 2 2")));
   Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_parameter_tuple_symbol
      (Elementary_body_parameter_tuple_symbol_t.Elementary_body_parameter_tuple_aopef_symbol
        (Elementary_body_parameter_tuple_aopef_symbol_t.Elementary_body_parameter_tuple_aopef_constructor
          "he p 3 1")))]
);;

test_number 12 (
sym_ele_st = provide nam_nbo
);;
