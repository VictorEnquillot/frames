open Make_test_v;;

testing "Elementary_tag_all_list_by_elementary_context_databox_tag_provider_v with
    Elementary_tag_all_list_by_elementary_context_databox_tag_provider_u_lanl2dz.ml";;

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

(* toplevel 
   #use "Elementary_tag_all_list_by_elementary_context_databox_tag_provider_u_lanl2dz.ml";; 

*)

let nam_nbo = "lanl2dz";;
 
let tag_nbo = Elementary_context_databox_tag_by_databox_name_n_database_name_provider_v.provide nam_nbo;;

test_number 1 ( 
( tag_nbo : 
  Elementary_context_databox_symbol_t.elementary_context_databox_symbol Tag_t.tag) =
  (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor
    "lanl2dz",
   [5; 5; 22; 6])
);;

open Elementary_tag_all_list_by_elementary_context_databox_tag_provider_v;;

let (nam_eba, nam_nbo) = 
    Databox_name_n_database_name_by_elementary_context_databox_tag_provider_v.provide
      tag_nbo;;

let tag_nwc_l = Elementary_tag_all_list_by_databox_name_n_database_name_provider_v.provide (nam_eba, nam_nbo);;

let tag_top_l = List.filter (fun (s, i) -> List.length i <= 5) tag_nwc_l;;

test_number 2 (
(tag_top_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_domain_symbol
       (Elementary_context_domain_symbol_t.Elementary_context_domain_constructor
         "database")),
    [6]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_database_symbol
       (Elementary_context_database_symbol_t.Elementary_context_database_constructor
         "nwchem")),
    [5; 22]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_databox_symbol
       (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor
         "lanl2dz")),
    [5; 5; 22; 6]);
   (Elementary_symbol_t.Elementary_context_symbol
     (Elementary_context_symbol_t.Elementary_context_version_symbol
       (Elementary_context_version_symbol_t.Elementary_context_version_constructor
         "v1.2.2")),
    [1; 5; 5; 22; 6]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_aobasis_block "lanl2dz")),
    [2; 5; 5; 22; 6]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_node_symbol
       (Elementary_body_node_symbol_t.Elementary_body_node_ecpbasis_block "lanl2dz")),
    [3; 5; 5; 22; 6])]
);;

let tag_nwc_f11_l = List.filter 
    (fun (s, i) -> 
      (List.length i > 12) 
	&& (List.nth i 5 = 1)
	&& (List.nth i 3 = 1) 
	&& (Elementary_symbol_v.is_elementary_fence_float_positive s) ) 
    tag_nwc_l;;

test_number 3 (
(tag_nwc_f11_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
[(Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_float_positive "12100.0000000"),
  [1; 1; 2; 1; 2; 1; 2; 2; 2; 5; 5; 22; 6]);
 (Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_float_positive "0.0012000"),
  [2; 1; 2; 1; 2; 1; 2; 2; 2; 5; 5; 22; 6]);
 (Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_float_positive "432.8000000"),
  [1; 2; 2; 1; 2; 1; 2; 2; 2; 5; 5; 22; 6]);
 (Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_float_positive "0.0413050"),
  [2; 2; 2; 1; 2; 1; 2; 2; 2; 5; 5; 22; 6]);
 (Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_float_positive "43.7700000"),
  [1; 3; 2; 1; 2; 1; 2; 2; 2; 5; 5; 22; 6]);
 (Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_float_positive "0.3624330"),
  [2; 3; 2; 1; 2; 1; 2; 2; 2; 5; 5; 22; 6]);
 (Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_float_positive "5.1270000"),
  [1; 4; 2; 1; 2; 1; 2; 2; 2; 5; 5; 22; 6]);
 (Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_float_positive "0.1300350"),
  [2; 4; 2; 1; 2; 1; 2; 2; 2; 5; 5; 22; 6]);
 (Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_float_positive "622.6287956"),
  [2; 1; 2; 1; 2; 1; 2; 2; 3; 5; 5; 22; 6]);
 (Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_float_positive "136.2843607"),
  [2; 2; 2; 1; 2; 1; 2; 2; 3; 5; 5; 22; 6]);
 (Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_float_positive "33.1549781"),
  [2; 3; 2; 1; 2; 1; 2; 2; 3; 5; 5; 22; 6]);
 (Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_float_positive "9.9894895"),
  [2; 4; 2; 1; 2; 1; 2; 2; 3; 5; 5; 22; 6]);
 (Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_float_positive "3.0481312"),
  [2; 5; 2; 1; 2; 1; 2; 2; 3; 5; 5; 22; 6])]
);;

let tag_nwc_f13_l = List.filter 
    (fun (s, i) -> 
      (List.length i > 12) 
	&& (List.nth i 5 = 1)
	&& (List.nth i 3 = 3) 
	&& (Elementary_symbol_v.is_elementary_fence_float_positive s) ) 
    tag_nwc_l;;

test_number 4 (
(tag_nwc_f13_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_float_positive "0.4468000"),
    [1; 1; 2; 3; 2; 1; 2; 2; 2; 5; 5; 22; 6]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_float_positive "1.0000000"),
    [2; 1; 2; 3; 2; 1; 2; 2; 2; 5; 5; 22; 6]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_float_positive "420.6158801"),
    [2; 1; 2; 3; 2; 1; 2; 2; 3; 5; 5; 22; 6]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_float_positive "2.0000000"),
    [3; 1; 2; 3; 2; 1; 2; 2; 3; 5; 5; 22; 6]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_float_positive "109.4417815"),
    [2; 2; 2; 3; 2; 1; 2; 2; 3; 5; 5; 22; 6]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_float_positive "73.8885625"),
    [3; 2; 2; 3; 2; 1; 2; 2; 3; 5; 5; 22; 6]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_float_positive "34.1714280"),
    [2; 3; 2; 3; 2; 1; 2; 2; 3; 5; 5; 22; 6]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_float_positive "326.6729872"),
    [3; 3; 2; 3; 2; 1; 2; 2; 3; 5; 5; 22; 6]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_float_positive "5.9879750"),
    [2; 4; 2; 3; 2; 1; 2; 2; 3; 5; 5; 22; 6]);
   (Elementary_symbol_t.Elementary_fence_symbol
     (Elementary_fence_symbol_t.Elementary_fence_float_positive "126.5814591"),
    [3; 4; 2; 3; 2; 1; 2; 2; 3; 5; 5; 22; 6])]
);;
