open Make_test_v;;

testing "Parameter_tag_tree_by_databox_name_n_database_name_provider_v with
    Parameter_tag_tree_by_databox_name_n_database_name_provider_u_any.ml";;

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

let nam_mod = "Parameter_tag_tree_by_databox_name_n_database_name_provider_u_any";;


(* toplevel 
   #use "Parameter_tag_tree_by_databox_name_n_database_name_provider_u_any.ml";; 

*)

open Parameter_tag_tree_by_databox_name_n_database_name_provider_v;;

let nam_dbo = "try_ao";;
let nam_dba = "nwchem";;

let tag_par_qua = Parameter_as_context_tag_quatuor_by_databox_name_n_database_name_provider_v.provide
      (nam_dbo, nam_dba);;

test_number 1 (
(tag_par_qua :
  Parameter_symbol_t.parameter_symbol Tag_t.tag Quatuor_t.quatuor ) =
  ((Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_databox_symbol
       (Parameter_context_databox_symbol_t.Parameter_context_databox_constructor
         "try_ao")),
    [22; 5; 16; 5]),
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_database_symbol
       (Parameter_context_database_symbol_t.Parameter_context_database_constructor
         "nwchem")),
    [5; 16; 5]),
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_domain_symbol
       (Parameter_context_domain_symbol_t.Parameter_context_domain_constructor
         "parameter")),
    [16; 5]),
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_sector_symbol
       (Parameter_context_sector_symbol_t.Parameter_context_sector_constructor
         "internal")),
    [5]))
);;

 let (tag_par_pbo, tag_par_pba, tag_par_ecd, tag_par_ecs) = tag_par_qua;;

let sym_par_pbo_st =
  Parameter_symbol_subtree_by_databox_name_n_database_name_provider_v.provide
    (nam_dbo, nam_dba)
;;

let sym_par_tso_l = Tree_v.root_topson_node_list_off_tree sym_par_pbo_st;;

test_number 2 (
( sym_par_tso_l : Parameter_symbol_t.parameter_symbol list ) =
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

let soi_par_pbo = Tag_v.sole_index_off_tag tag_par_pbo;;

test_number 3 (
(soi_par_pbo : Sole_index_t.sole_index ) = 
[22; 5; 16; 5]
);;

let soi_par_pbo_st =
  Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
    sym_par_pbo_st 
    soi_par_pbo 
;;

let soi_par_tso_l = Tree_v.root_topson_node_list_off_tree soi_par_pbo_st;;

test_number 4 (
(soi_par_tso_l : Sole_index_t.sole_index list ) =
[[22; 5; 16; 5]; [1; 22; 5; 16; 5]; [2; 22; 5; 16; 5]; [3; 22; 5; 16; 5];
 [4; 22; 5; 16; 5]; [5; 22; 5; 16; 5]; [6; 22; 5; 16; 5]]
);;

let tag_par_pbo_st = Tree_v.map2 Tag_v.make sym_par_pbo_st soi_par_pbo_st;;
  
let tag_par_pba_st = Tree_v.make_of_node tag_par_pba [tag_par_pbo_st];;
  
let tag_par_ecd_st = Tree_v.make_of_node tag_par_ecd [tag_par_pba_st];;
 
let tag_par_t = Tree_v.make_of_node tag_par_ecs [tag_par_ecd_st];;

let tag_par_tso_l = Tree_v.root_topson_node_list_off_tree tag_par_t;;

test_number 5 (
(tag_par_tso_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_sector_symbol
       (Parameter_context_sector_symbol_t.Parameter_context_sector_constructor
         "internal")),
    [5]);
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_domain_symbol
       (Parameter_context_domain_symbol_t.Parameter_context_domain_constructor
         "parameter")),
    [16; 5])]
);;

let tag_par_top_l = Tree_v.node_list_of_node_predicate_off_tree (fun (s, i) -> List.length i <= 5) tag_par_t;;

test_number 6 (
(tag_par_top_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_sector_symbol
       (Parameter_context_sector_symbol_t.Parameter_context_sector_constructor
         "internal")),
    [5]);
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_domain_symbol
       (Parameter_context_domain_symbol_t.Parameter_context_domain_constructor
         "parameter")),
    [16; 5]);
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_database_symbol
       (Parameter_context_database_symbol_t.Parameter_context_database_constructor
         "nwchem")),
    [5; 16; 5]);
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_databox_symbol
       (Parameter_context_databox_symbol_t.Parameter_context_databox_constructor
         "try_ao")),
    [22; 5; 16; 5]);
   (Parameter_symbol_t.Parameter_set_symbol
     (Parameter_set_symbol_t.Parameter_set_body_symbol
       (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
         (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
           (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
             "he s 1 1")))),
    [1; 22; 5; 16; 5]);
   (Parameter_symbol_t.Parameter_set_symbol
     (Parameter_set_symbol_t.Parameter_set_body_symbol
       (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
         (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
           (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
             "he s 1 2")))),
    [2; 22; 5; 16; 5]);
   (Parameter_symbol_t.Parameter_set_symbol
     (Parameter_set_symbol_t.Parameter_set_body_symbol
       (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
         (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
           (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
             "he s 2 1")))),
    [3; 22; 5; 16; 5]);
   (Parameter_symbol_t.Parameter_set_symbol
     (Parameter_set_symbol_t.Parameter_set_body_symbol
       (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
         (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
           (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
             "he p 2 1")))),
    [4; 22; 5; 16; 5]);
   (Parameter_symbol_t.Parameter_set_symbol
     (Parameter_set_symbol_t.Parameter_set_body_symbol
       (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
         (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
           (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
             "he p 2 2")))),
    [5; 22; 5; 16; 5]);
   (Parameter_symbol_t.Parameter_set_symbol
     (Parameter_set_symbol_t.Parameter_set_body_symbol
       (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
         (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
           (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
             "he p 3 1")))),
    [6; 22; 5; 16; 5])]
);;

let tag_par_st = Tree_v.only_subtree_of_node_predicate_off_tree
    (fun (s,i) -> s = Parameter_symbol_v.parameter_set_body_tuple_aopef_constructor "he p 2 1")
    tag_par_t;;

test_number 7 (
(tag_par_st : Parameter_symbol_t.parameter_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Parameter_symbol_t.Parameter_set_symbol
      (Parameter_set_symbol_t.Parameter_set_body_symbol
        (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
          (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
            (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
              "he p 2 1")))),
     [4; 22; 5; 16; 5]),
   [Tree_t.Leaf
     (Parameter_symbol_t.Parameter_set_symbol
       (Parameter_set_symbol_t.Parameter_set_fence_symbol
         (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
           (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
             (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
               "he p 2 1")))),
      [1; 4; 22; 5; 16; 5]);
    Tree_t.Leaf
     (Parameter_symbol_t.Parameter_set_symbol
       (Parameter_set_symbol_t.Parameter_set_fence_symbol
         (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
           (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
             (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
               "he p 2 1")))),
      [2; 4; 22; 5; 16; 5])])
);;

let tag_par_exp = Tree_v.only_node_of_node_predicate_off_tree 
    (fun (s, i) -> Parameter_symbol_v.is_parameter_set_fence_aopef_exponent_constructor s)
    tag_par_st;;


test_number 8 (
( tag_par_exp : Parameter_symbol_t.parameter_symbol Tag_t.tag ) =
  (Parameter_symbol_t.Parameter_set_symbol
    (Parameter_set_symbol_t.Parameter_set_fence_symbol
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
          (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
            "he p 2 1")))),
   [1; 4; 22; 5; 16; 5])
);;

let tag_pat_exp = List.rev (Tree_v.path_of_node_predicate_off_tree (fun t -> t = tag_par_exp) tag_par_t);;

test_number 9 (
(tag_pat_exp : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_sector_symbol
       (Parameter_context_sector_symbol_t.Parameter_context_sector_constructor
         "internal")),
    [5]);
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_domain_symbol
       (Parameter_context_domain_symbol_t.Parameter_context_domain_constructor
         "parameter")),
    [16; 5]);
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_database_symbol
       (Parameter_context_database_symbol_t.Parameter_context_database_constructor
         "nwchem")),
    [5; 16; 5]);
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_databox_symbol
       (Parameter_context_databox_symbol_t.Parameter_context_databox_constructor
         "try_ao")),
    [22; 5; 16; 5]);
   (Parameter_symbol_t.Parameter_set_symbol
     (Parameter_set_symbol_t.Parameter_set_body_symbol
       (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
         (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
           (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
             "he p 2 1")))),
    [4; 22; 5; 16; 5]);
   (Parameter_symbol_t.Parameter_set_symbol
     (Parameter_set_symbol_t.Parameter_set_fence_symbol
       (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
         (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
           (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
             "he p 2 1")))),
    [1; 4; 22; 5; 16; 5])]
);;

let tag_par_coe = Tree_v.only_node_of_node_predicate_off_tree 
    (fun (s, i) -> Parameter_symbol_v.is_parameter_set_fence_aopef_coefficient_constructor s)
    tag_par_st;;


test_number 10 (
( tag_par_coe : Parameter_symbol_t.parameter_symbol Tag_t.tag ) =
  (Parameter_symbol_t.Parameter_set_symbol
    (Parameter_set_symbol_t.Parameter_set_fence_symbol
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
          (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
            "he p 2 1")))),
   [2; 4; 22; 5; 16; 5])
);;

let tag_pat_coe = List.rev (Tree_v.path_of_node_predicate_off_tree (fun t -> t = tag_par_coe) tag_par_t);;

test_number 11 (
(tag_pat_coe : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_sector_symbol
       (Parameter_context_sector_symbol_t.Parameter_context_sector_constructor
         "internal")),
    [5]);
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_domain_symbol
       (Parameter_context_domain_symbol_t.Parameter_context_domain_constructor
         "parameter")),
    [16; 5]);
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_database_symbol
       (Parameter_context_database_symbol_t.Parameter_context_database_constructor
         "nwchem")),
    [5; 16; 5]);
   (Parameter_symbol_t.Parameter_context_symbol
     (Parameter_context_symbol_t.Parameter_context_databox_symbol
       (Parameter_context_databox_symbol_t.Parameter_context_databox_constructor
         "try_ao")),
    [22; 5; 16; 5]);
   (Parameter_symbol_t.Parameter_set_symbol
     (Parameter_set_symbol_t.Parameter_set_body_symbol
       (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
         (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
           (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
             "he p 2 1")))),
    [4; 22; 5; 16; 5]);
   (Parameter_symbol_t.Parameter_set_symbol
     (Parameter_set_symbol_t.Parameter_set_fence_symbol
       (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
         (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
           (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
             "he p 2 1")))),
    [2; 4; 22; 5; 16; 5])]
);;

test_number 12 (
tag_par_t = provide (nam_dbo, nam_dba)
);;

