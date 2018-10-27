open Make_test_v;;

testing "Db1pointsdata_as_set_fence_basic_numerical_float_symbol_list_by_vertex_name_n_basicname_databox_provider_v with
        Db1pointsdata_as_set_fence_basic_numerical_float_symbol_list_by_vertex_name_databox_n_name_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Basicname_databox_n_database_name_by_db1pointsdata_context_databox_tag_register_v.register;;
Register_v.delete Db1pointsdata_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Db1pointsdata_fence_by_db1pointsdata_tag_register_v.register;;
Register_v.delete Db1pointsdata_son_tag_list_by_db1pointsdata_father_tag_register_v.register;;
Register_v.delete Db1pointsdata_symbol_by_sole_index_register_v.register;;
Register_v.delete Db1pointsdata_symbol_subtree_by_basicname_databox_register_v.register;;
Register_v.delete Db1pointsdata_tag_all_list_by_basicname_databox_register_v.register;;
Register_v.delete Db1pointsdata_tag_all_list_by_db1pointsdata_context_databox_tag_register_v.register;;
Register_v.delete Db1pointsdata_tag_subtree_by_db1pointsdata_tag_register_v.register;;
Register_v.delete Db1pointsdata_tag_tree_by_basicname_databox_register_v.register;;


(* Tracing *)

(* toplevel 
   #use "Db1pointsdata_as_set_fence_basic_numerical_float_symbol_list_by_vertex_name_n_basicname_databox_provider_u_any.ml";; 

*)

open Db1pointsdata_as_set_fence_basic_numerical_float_symbol_list_by_vertex_name_n_basicname_databox_provider_v;;

let nam_dbo = "Point_a";;
let nam_ver = "A_A";;

  let sym_db1_dsf_st = 
    Db1pointsdata_as_set_body_sequence_float_symbol_subtree_by_vertex_name_n_basicname_databox_provider_v.provide
      (nam_ver, nam_dbo) ;;

test_number 1 (
(sym_db1_dsf_st :
  Db1pointsdata_symbol_t.db1pointsdata_symbol Tree_t.tree ) =
  Tree_t.Inner
   (Db1pointsdata_symbol_t.Db1pointsdata_set_body_symbol
     (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_sequence_symbol
       (Db1pointsdata_set_body_sequence_symbol_t.Db1pointsdata_set_body_sequence_float_symbol
         (Db1pointsdata_set_body_sequence_float_symbol_t.Db1pointsdata_set_body_sequence_float_constructor
           "A_A"))),
   [Tree_t.Leaf
     (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
       (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
         (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_numerical_symbol
           (Db1pointsdata_fence_basic_numerical_symbol_t.Db1pointsdata_fence_basic_numerical_float_symbol
             (Db1pointsdata_fence_basic_numerical_float_symbol_t.Db1pointsdata_fence_basic_numerical_float_constructor
               "1.")))));
    Tree_t.Leaf
     (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
       (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
         (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_numerical_symbol
           (Db1pointsdata_fence_basic_numerical_symbol_t.Db1pointsdata_fence_basic_numerical_float_symbol
             (Db1pointsdata_fence_basic_numerical_float_symbol_t.Db1pointsdata_fence_basic_numerical_float_constructor
               "0.785398163397448279")))));
    Tree_t.Leaf
     (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
       (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
         (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_numerical_symbol
           (Db1pointsdata_fence_basic_numerical_symbol_t.Db1pointsdata_fence_basic_numerical_float_symbol
             (Db1pointsdata_fence_basic_numerical_float_symbol_t.Db1pointsdata_fence_basic_numerical_float_constructor
               "0.785398163397448279")))))])
);;

let sym_db1_dsf_l = Tree_v.leaf_node_list_off_tree sym_db1_dsf_st;;

test_number 2 (
(sym_db1_dsf_l : Db1pointsdata_symbol_t.db1pointsdata_symbol list ) =
  [Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
    (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
      (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_numerical_symbol
        (Db1pointsdata_fence_basic_numerical_symbol_t.Db1pointsdata_fence_basic_numerical_float_symbol
          (Db1pointsdata_fence_basic_numerical_float_symbol_t.Db1pointsdata_fence_basic_numerical_float_constructor
            "1."))));
   Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
    (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
      (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_numerical_symbol
        (Db1pointsdata_fence_basic_numerical_symbol_t.Db1pointsdata_fence_basic_numerical_float_symbol
          (Db1pointsdata_fence_basic_numerical_float_symbol_t.Db1pointsdata_fence_basic_numerical_float_constructor
            "0.785398163397448279"))));
   Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
    (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
      (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_numerical_symbol
        (Db1pointsdata_fence_basic_numerical_symbol_t.Db1pointsdata_fence_basic_numerical_float_symbol
          (Db1pointsdata_fence_basic_numerical_float_symbol_t.Db1pointsdata_fence_basic_numerical_float_constructor
            "0.785398163397448279"))))]
);;

test_number 3 (
sym_db1_dsf_l = provide (nam_ver, nam_dbo)
);;

let sym_db1_dsf_t = Tuple_v.tuple_of_list  sym_db1_dsf_l;; 

test_number 4 (
(sym_db1_dsf_t : Db1pointsdata_symbol_t.db1pointsdata_symbol Tuple_t.tuple ) =
  Tuple_t.Trio
   (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
     (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
       (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_numerical_symbol
         (Db1pointsdata_fence_basic_numerical_symbol_t.Db1pointsdata_fence_basic_numerical_float_symbol
           (Db1pointsdata_fence_basic_numerical_float_symbol_t.Db1pointsdata_fence_basic_numerical_float_constructor
             "1.")))),
    Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
     (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
       (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_numerical_symbol
         (Db1pointsdata_fence_basic_numerical_symbol_t.Db1pointsdata_fence_basic_numerical_float_symbol
           (Db1pointsdata_fence_basic_numerical_float_symbol_t.Db1pointsdata_fence_basic_numerical_float_constructor
             "0.785398163397448279")))),
    Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
     (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
       (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_numerical_symbol
         (Db1pointsdata_fence_basic_numerical_symbol_t.Db1pointsdata_fence_basic_numerical_float_symbol
           (Db1pointsdata_fence_basic_numerical_float_symbol_t.Db1pointsdata_fence_basic_numerical_float_constructor
             "0.785398163397448279")))))
);;

