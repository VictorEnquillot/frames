open Make_test_v;;

testing "Parameter_as_body_parameter_tuple_symbol_subtree_by_nwchemdata_context_databox_name_provider_v with
        Parameter_as_body_parameter_tuple_symbol_subtree_by_nwchemdata_context_databox_name_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_parameter_context_databox_tag_register_v.register;;
Register_v.delete Parameter_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Parameter_fence_by_parameter_tag_register_v.register;;
Register_v.delete Parameter_son_tag_list_by_parameter_father_tag_register_v.register;;
Register_v.delete Parameter_symbol_by_sole_index_register_v.register;;
Register_v.delete Parameter_tag_all_list_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Parameter_tag_all_list_by_parameter_context_databox_tag_register_v.register;;
Register_v.delete Parameter_tag_subtree_by_parameter_tag_register_v.register;;
Register_v.delete Parameter_tag_tree_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Parameter_tag_tree_by_parameter_context_databox_tag_register_v.register;;

(* Tracing *)

(* toplevel 
   #use "Parameter_as_body_parameter_tuple_symbol_subtree_by_nwchemdata_context_databox_name_provider_u_any.ml";; 

*)

open Parameter_as_body_parameter_tuple_symbol_subtree_by_nwchemdata_context_databox_name_provider_v;;

let nam_dbo = "try_ao";;
let nam_nba = "nwchem";;

let sym_nwc_st = 
  Nwchemdata_symbol_subtree_by_databox_name_provider_v.provide
    nam_dbo;;
  
let sym_nwc_sl = Tree_v.node_list_off_tree sym_nwc_st;;
let sym_nwc_anv_l = List.filter
      Nwchemdata_symbol_v.is_nwchemdata_set_body_node_aoset_numericalvalues
      sym_nwc_sl;;

test_number 1 (
(sym_nwc_anv_l : Nwchemdata_symbol_t.nwchemdata_symbol list ) =
  [Nwchemdata_symbol_t.Nwchemdata_body_symbol
    (Nwchemdata_body_symbol_t.Nwchemdata_set_body_node_symbol
      (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues
        "He S 1 GAUSSIAN 1"));
   Nwchemdata_symbol_t.Nwchemdata_body_symbol
    (Nwchemdata_body_symbol_t.Nwchemdata_set_body_node_symbol
      (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues
        "He S 1 GAUSSIAN 2"));
   Nwchemdata_symbol_t.Nwchemdata_body_symbol
    (Nwchemdata_body_symbol_t.Nwchemdata_set_body_node_symbol
      (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues
        "He S 2 GAUSSIAN 1"));
   Nwchemdata_symbol_t.Nwchemdata_body_symbol
    (Nwchemdata_body_symbol_t.Nwchemdata_set_body_node_symbol
      (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues
        "He P 3 GAUSSIAN 1"));
   Nwchemdata_symbol_t.Nwchemdata_body_symbol
    (Nwchemdata_body_symbol_t.Nwchemdata_set_body_node_symbol
      (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues
        "He P 3 GAUSSIAN 2"));
   Nwchemdata_symbol_t.Nwchemdata_body_symbol
    (Nwchemdata_body_symbol_t.Nwchemdata_set_body_node_symbol
      (Nwchemdata_set_body_node_symbol_t.Nwchemdata_set_body_node_aoset_numericalvalues
        "He P 4 GAUSSIAN 1"))]
);;

let sof_nwc_anv_l = List.map Nwchemdata_symbol_v.string_off sym_nwc_anv_l;;

test_number 2 (
(sof_nwc_anv_l : string list ) =
  ["He S 1 GAUSSIAN 1"; "He S 1 GAUSSIAN 2"; "He S 2 GAUSSIAN 1";
   "He P 3 GAUSSIAN 1"; "He P 3 GAUSSIAN 2"; "He P 4 GAUSSIAN 1"]
);;

let sof_par_ptu_l = 
  Parameter_string_off_list_by_nwchemdata_set_body_node_aoset_numericalvalues_string_off_list_translator_v.translate
    sof_nwc_anv_l
;;

test_number 3 (
(sof_par_ptu_l : string list ) =
  ["he s 1 1"; "he s 1 2"; "he s 2 1"; "he p 2 1"; "he p 2 2"; "he p 3 1"]
);;

let sym_par_pta_l = List.map 
    Parameter_symbol_v.parameter_set_body_tuple_aopef_constructor 
    sof_par_ptu_l 
;;  
  
let sym_par_coe_l = List.map 
    Parameter_symbol_v.parameter_set_fence_aopef_coefficient_constructor 
    sof_par_ptu_l 
;;

let sym_par_exp_l = List.map 
      Parameter_symbol_v.parameter_set_fence_aopef_exponent_constructor 
    sof_par_ptu_l 
;;

let sym_par_coe_stl = List.map
    Tree_v.make_of_leaf
    sym_par_coe_l
;;

let sym_par_exp_stl = List.map
    Tree_v.make_of_leaf
    sym_par_exp_l
;;

let sym_par_pec_stll = List.map2 
    (fun e c  -> [e; c]) sym_par_exp_stl sym_par_coe_stl
;;

let sym_par_pta_stl = List.map2 Tree_v.make_of_node sym_par_pta_l sym_par_pec_stll;;

let sym_par_pbo = Parameter_symbol_v.parameter_context_databox_constructor nam_dbo;;

let sym_par_st = Tree_v.make_of_node sym_par_pbo sym_par_pta_stl ;;

let tag_par_rtl = Tree_v.root_topson_node_list_off_tree sym_par_st;;

test_number 4 (
(tag_par_rtl : Parameter_symbol_t.parameter_symbol list ) =
  [Parameter_symbol_t.Parameter_context_symbol
    (Parameter_context_symbol_t.Parameter_context_databox_symbol
      (Parameter_context_databox_symbol_t.Parameter_context_databox_constructor
        "try_ao"));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
      (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
        (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
          "he s 1 1"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
      (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
        (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
          "he s 1 2"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
      (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
        (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
          "he s 2 1"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
      (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
        (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
          "he p 2 1"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
      (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
        (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
          "he p 2 2"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
      (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
        (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
          "he p 3 1"))))]
);;

let sym_lea_l = Tree_v.leaf_node_list_off_tree sym_par_st;;

test_number 5 (
(sym_lea_l : Parameter_symbol_t.parameter_symbol list ) =
  [Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
          (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
            "he s 1 1"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
          (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
            "he s 1 1"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
          (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
            "he s 1 2"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
          (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
            "he s 1 2"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
          (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
            "he s 2 1"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
          (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
            "he s 2 1"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
          (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
            "he p 2 1"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
          (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
            "he p 2 1"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
          (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
            "he p 2 2"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
          (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
            "he p 2 2"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
          (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
            "he p 3 1"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
          (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
            "he p 3 1"))))]
);;

let sym_clo_l = List.filter Parameter_symbol_v.is_parameter_set_fence_symbol_off_parameter_symbol sym_lea_l;;

test_number 6 (
( sym_clo_l : Parameter_symbol_t.parameter_symbol list ) =
 [Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
          (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
            "he s 1 1"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
          (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
            "he s 1 1"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
          (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
            "he s 1 2"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
          (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
            "he s 1 2"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
          (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
            "he s 2 1"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
          (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
            "he s 2 1"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
          (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
            "he p 2 1"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
          (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
            "he p 2 1"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
          (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
            "he p 2 2"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
          (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
            "he p 2 2"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
          (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
            "he p 3 1"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
          (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
            "he p 3 1"))))]
);;

let sym_par_fen = List_v.only_element_of_predicate_off_list 
  (fun s -> (Parameter_symbol_v.is_parameter_set_fence_aopef_exponent_constructor s)
  && (Parameter_symbol_v.string_off s = "he p 2 1")
  ) sym_clo_l;; 

test_number 7 (
(sym_par_fen : Parameter_symbol_t.parameter_symbol ) =
  Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
     (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
       (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
         (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
           "he p 2 1")))
);;

let sym_par_pat = List.rev (Tree_v.path_of_node_predicate_off_tree (fun t -> t = sym_par_fen) sym_par_st);;

test_number 8 (
(sym_par_pat : Parameter_symbol_t.parameter_symbol list ) =
  [Parameter_symbol_t.Parameter_context_symbol
    (Parameter_context_symbol_t.Parameter_context_databox_symbol
      (Parameter_context_databox_symbol_t.Parameter_context_databox_constructor
        "try_ao"));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
      (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
        (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
          "he p 2 1"))));
   Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
          (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
            "he p 2 1"))))]
);;

test_number 9 (
sym_par_st = provide nam_dbo
);;

