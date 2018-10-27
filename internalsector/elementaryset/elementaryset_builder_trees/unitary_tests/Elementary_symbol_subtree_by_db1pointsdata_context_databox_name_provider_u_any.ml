open Make_test_v;;

testing "Elementary_symbol_subtree_by_db1pointsdata_context_databox_name_provider_v with
        Elementary_symbol_subtree_by_db1pointsdata_context_databox_name_provider_u_any.ml";;

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
   #use "Elementary_symbol_subtree_by_db1pointsdata_context_databox_name_provider_u_any.ml";; 

*)

open Elementary_symbol_subtree_by_db1pointsdata_context_databox_name_provider_v;;

let nam_dbo = "Point_a";;

let sym_ele_ebo = Elementary_symbol_v.elementary_context_databox_constructor nam_dbo;;

test_number 1 (
( sym_ele_ebo : Elementary_symbol_t.elementary_symbol ) =
  Elementary_symbol_t.Elementary_context_symbol
   (Elementary_context_symbol_t.Elementary_context_databox_symbol
     (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor
       "Point_a"))
);;

let sym_ele_ect_stl =
    Elementary_as_body_coordinate_tuple_symbol_subtree_list_by_db1pointsdata_context_databox_name_provider_v.provide
      nam_dbo;;

let sym_ele_st = Tree_v.make_of_node sym_ele_ebo sym_ele_ect_stl;;

let sym_ele_rtl = Tree_v.root_topson_node_list_off_tree sym_ele_st;;

test_number 2 (
(sym_ele_rtl : Elementary_symbol_t.elementary_symbol list ) =
  [Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_databox_symbol
      (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor
        "Point_a"));
   Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
      (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_symbol
        (Elementary_body_coordinate_tuple_heterogeneous_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_spherical_symbol
          (Elementary_body_coordinate_tuple_heterogeneous_spherical_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_spherical_constructor
            "A_A"))))]
);;

let sym_lea_l = Tree_v.leaf_node_list_off_tree sym_ele_st;;

test_number 3 (
(sym_lea_l : Elementary_symbol_t.elementary_symbol list ) =
 [Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_coordinate_symbol
      (Elementary_fence_coordinate_symbol_t.Elementary_fence_coordinate_heterogeneous_symbol
        (Elementary_fence_coordinate_heterogeneous_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_symbol
          (Elementary_fence_coordinate_heterogeneous_spherical_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_rho_symbol
            (Elementary_fence_coordinate_heterogeneous_spherical_rho_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_rho_constructor
              "A_A")))));
   Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_coordinate_symbol
      (Elementary_fence_coordinate_symbol_t.Elementary_fence_coordinate_heterogeneous_symbol
        (Elementary_fence_coordinate_heterogeneous_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_symbol
          (Elementary_fence_coordinate_heterogeneous_spherical_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_phi_symbol
            (Elementary_fence_coordinate_heterogeneous_spherical_phi_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_phi_constructor
              "A_A")))));
   Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_coordinate_symbol
      (Elementary_fence_coordinate_symbol_t.Elementary_fence_coordinate_heterogeneous_symbol
        (Elementary_fence_coordinate_heterogeneous_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_symbol
          (Elementary_fence_coordinate_heterogeneous_spherical_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_theta_symbol
            (Elementary_fence_coordinate_heterogeneous_spherical_theta_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_theta_constructor
              "A_A")))))]
);;

let sym_clo_l = List.filter Elementary_symbol_v.is_elementary_fence_symbol_off_elementary_symbol sym_lea_l;;

test_number 4 (
( sym_clo_l : Elementary_symbol_t.elementary_symbol list ) =
  [Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_coordinate_symbol
      (Elementary_fence_coordinate_symbol_t.Elementary_fence_coordinate_heterogeneous_symbol
        (Elementary_fence_coordinate_heterogeneous_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_symbol
          (Elementary_fence_coordinate_heterogeneous_spherical_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_rho_symbol
            (Elementary_fence_coordinate_heterogeneous_spherical_rho_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_rho_constructor
              "A_A")))));
   Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_coordinate_symbol
      (Elementary_fence_coordinate_symbol_t.Elementary_fence_coordinate_heterogeneous_symbol
        (Elementary_fence_coordinate_heterogeneous_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_symbol
          (Elementary_fence_coordinate_heterogeneous_spherical_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_phi_symbol
            (Elementary_fence_coordinate_heterogeneous_spherical_phi_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_phi_constructor
              "A_A")))));
   Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_coordinate_symbol
      (Elementary_fence_coordinate_symbol_t.Elementary_fence_coordinate_heterogeneous_symbol
        (Elementary_fence_coordinate_heterogeneous_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_symbol
          (Elementary_fence_coordinate_heterogeneous_spherical_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_theta_symbol
            (Elementary_fence_coordinate_heterogeneous_spherical_theta_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_theta_constructor
              "A_A")))))]
);;

let sym_ele_fen = List_v.only_element_of_predicate_off_list 
  (fun s -> (Elementary_symbol_v.is_elementary_fence_coordinate_heterogeneous_spherical_theta_constructor s)
  && (Elementary_symbol_v.string_off s = "A_A")
  ) sym_clo_l;; 

test_number 5 (
(sym_ele_fen : Elementary_symbol_t.elementary_symbol ) =
  Elementary_symbol_t.Elementary_fence_symbol
   (Elementary_fence_symbol_t.Elementary_fence_coordinate_symbol
     (Elementary_fence_coordinate_symbol_t.Elementary_fence_coordinate_heterogeneous_symbol
       (Elementary_fence_coordinate_heterogeneous_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_symbol
         (Elementary_fence_coordinate_heterogeneous_spherical_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_theta_symbol
           (Elementary_fence_coordinate_heterogeneous_spherical_theta_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_theta_constructor
             "A_A")))))
);;

let sym_ele_pat = List.rev (Tree_v.path_of_node_predicate_off_tree (fun t -> t = sym_ele_fen) sym_ele_st);;

test_number 6 (
(sym_ele_pat : Elementary_symbol_t.elementary_symbol list ) =
  [Elementary_symbol_t.Elementary_context_symbol
    (Elementary_context_symbol_t.Elementary_context_databox_symbol
      (Elementary_context_databox_symbol_t.Elementary_context_databox_constructor
        "Point_a"));
   Elementary_symbol_t.Elementary_body_symbol
    (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
      (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_symbol
        (Elementary_body_coordinate_tuple_heterogeneous_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_spherical_symbol
          (Elementary_body_coordinate_tuple_heterogeneous_spherical_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_spherical_constructor
            "A_A"))));
   Elementary_symbol_t.Elementary_fence_symbol
    (Elementary_fence_symbol_t.Elementary_fence_coordinate_symbol
      (Elementary_fence_coordinate_symbol_t.Elementary_fence_coordinate_heterogeneous_symbol
        (Elementary_fence_coordinate_heterogeneous_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_symbol
          (Elementary_fence_coordinate_heterogeneous_spherical_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_theta_symbol
            (Elementary_fence_coordinate_heterogeneous_spherical_theta_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_theta_constructor
              "A_A")))))]
);;

test_number 7 (
sym_ele_st = provide nam_dbo
);;

