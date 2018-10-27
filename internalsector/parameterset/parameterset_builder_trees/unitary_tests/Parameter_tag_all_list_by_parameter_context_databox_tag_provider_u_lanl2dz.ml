open Make_test_v;;

testing "Parameter_tag_all_list_by_parameter_context_databox_tag_provider_v with
    Parameter_tag_all_list_by_parameter_context_databox_tag_provider_u_lanl2dz.ml";;

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
   #use "Parameter_tag_all_list_by_parameter_context_databox_tag_provider_u_lanl2dz.ml";; 

*)

let nam_dbo = "LANL2DZ";;
let nam_dba = "nwchem";;

let tag_pbo = Parameter_context_databox_tag_by_databox_name_n_database_name_provider_v.provide (nam_dbo, nam_dba);;

test_number 1 ( 
( tag_pbo : 
  Parameter_context_databox_symbol_t.parameter_context_databox_symbol Tag_t.tag) =
  (Parameter_context_databox_symbol_t.Parameter_context_databox_constructor
    "LANL2DZ",
   [5; 5; 22; 6])
);;

open Parameter_tag_all_list_by_parameter_context_databox_tag_provider_v;;

let (nam_dba, nam_dbo) = 
    Databox_name_n_database_name_by_parameter_context_databox_tag_provider_v.provide
      tag_pbo;;

let tag_nwc_l = Parameter_tag_all_list_by_databox_name_n_database_name_provider_v.provide (nam_dba, nam_dbo);;

let tag_top_l = List.filter (fun (s, i) -> List.length i <= 5) tag_nwc_l;;

test_number 2 (
(tag_top_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_domain_symbol
       (Parameter_context_domain_symbol_t.Parameter_context_domain_constructor
         "database")),
    [6]);
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_database_symbol
       (Parameter_context_database_symbol_t.Parameter_context_database_constructor
         "nwchem")),
    [5; 22]);
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_databox_symbol
       (Parameter_context_databox_symbol_t.Parameter_context_databox_constructor
         "LANL2DZ")),
    [5; 5; 22; 6]);
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_version_symbol
       (Parameter_context_version_symbol_t.Parameter_context_version_constructor
         "v1.2.2")),
    [1; 5; 5; 22; 6]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_aobasis_block "LANL2DZ"))),
    [2; 5; 5; 22; 6]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
     (Parameter_set_body_symbol_t.Parameter_set_body_node_symbol
       (Parameter_set_body_node_symbol_t.Parameter_set_body_node_ecpbasis_block "LANL2DZ"))),
    [3; 5; 5; 22; 6])]
);;

let tag_nwc_f11_l = List.filter 
    (fun (s, i) -> 
      (List.length i > 12) 
	&& (List.nth i 5 = 1)
	&& (List.nth i 3 = 1) 
	&& (Parameter_symbol_v.is_parameter_fence_float_positive s) ) 
    tag_nwc_l;;

test_number 3 (
(tag_nwc_f11_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
[(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
    (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "12100.0000000")),
  [1; 1; 2; 1; 2; 1; 2; 2; 2; 5; 5; 22; 6]);
 (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
    (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "0.0012000")),
  [2; 1; 2; 1; 2; 1; 2; 2; 2; 5; 5; 22; 6]);
 (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
    (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "432.8000000")),
  [1; 2; 2; 1; 2; 1; 2; 2; 2; 5; 5; 22; 6]);
 (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
    (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "0.0413050")),
  [2; 2; 2; 1; 2; 1; 2; 2; 2; 5; 5; 22; 6]);
 (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
    (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "43.7700000")),
  [1; 3; 2; 1; 2; 1; 2; 2; 2; 5; 5; 22; 6]);
 (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
    (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "0.3624330")),
  [2; 3; 2; 1; 2; 1; 2; 2; 2; 5; 5; 22; 6]);
 (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
    (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "5.1270000")),
  [1; 4; 2; 1; 2; 1; 2; 2; 2; 5; 5; 22; 6]);
 (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
    (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "0.1300350")),
  [2; 4; 2; 1; 2; 1; 2; 2; 2; 5; 5; 22; 6]);
 (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
    (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "622.6287956")),
  [2; 1; 2; 1; 2; 1; 2; 2; 3; 5; 5; 22; 6]);
 (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
    (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "136.2843607")),
  [2; 2; 2; 1; 2; 1; 2; 2; 3; 5; 5; 22; 6]);
 (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
    (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "33.1549781")),
  [2; 3; 2; 1; 2; 1; 2; 2; 3; 5; 5; 22; 6]);
 (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
    (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "9.9894895")),
  [2; 4; 2; 1; 2; 1; 2; 2; 3; 5; 5; 22; 6]);
 (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
    (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "3.0481312")),
  [2; 5; 2; 1; 2; 1; 2; 2; 3; 5; 5; 22; 6])]
);;

let tag_nwc_f13_l = List.filter 
    (fun (s, i) -> 
      (List.length i > 12) 
	&& (List.nth i 5 = 1)
	&& (List.nth i 3 = 3) 
	&& (Parameter_symbol_v.is_parameter_fence_float_positive s) ) 
    tag_nwc_l;;

test_number 4 (
(tag_nwc_f13_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
     (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "0.4468000")),
    [1; 1; 2; 3; 2; 1; 2; 2; 2; 5; 5; 22; 6]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
     (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "1.0000000")),
    [2; 1; 2; 3; 2; 1; 2; 2; 2; 5; 5; 22; 6]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
     (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "420.6158801")),
    [2; 1; 2; 3; 2; 1; 2; 2; 3; 5; 5; 22; 6]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
     (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "2.0000000")),
    [3; 1; 2; 3; 2; 1; 2; 2; 3; 5; 5; 22; 6]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
     (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "109.4417815")),
    [2; 2; 2; 3; 2; 1; 2; 2; 3; 5; 5; 22; 6]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
     (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "73.8885625")),
    [3; 2; 2; 3; 2; 1; 2; 2; 3; 5; 5; 22; 6]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
     (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "34.1714280")),
    [2; 3; 2; 3; 2; 1; 2; 2; 3; 5; 5; 22; 6]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
     (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "326.6729872")),
    [3; 3; 2; 3; 2; 1; 2; 2; 3; 5; 5; 22; 6]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
     (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "5.9879750")),
    [2; 4; 2; 3; 2; 1; 2; 2; 3; 5; 5; 22; 6]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
     (Parameter_set_fence_symbol_t.Parameter_fence_float_positive "126.5814591")),
    [3; 4; 2; 3; 2; 1; 2; 2; 3; 5; 5; 22; 6])]
);;
