open Make_test_v;;

testing "Skeleton_symbol_subtree_by_db1pointsdata_context_databox_name_provider_v with
        Skeleton_symbol_subtree_by_db1pointsdata_context_databox_name_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Basicname_databox_n_basicname_database_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Skeleton_fence_by_skeleton_tag_register_v.register;;
Register_v.delete Skeleton_son_tag_list_by_skeleton_father_tag_register_v.register;;
Register_v.delete Skeleton_symbol_by_sole_index_register_v.register;;
Register_v.delete Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_subtree_by_skeleton_tag_register_v.register;;
Register_v.delete Skeleton_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;

(* Tracing *)

(* toplevel 
   #use "Skeleton_symbol_subtree_by_db1pointsdata_context_databox_name_provider_u_any.ml";; 

*)

open Skeleton_symbol_subtree_by_db1pointsdata_context_databox_name_provider_v;;

let nam_dbo = "Point_a";;

let sym_ske_ebo = Skeleton_symbol_v.skeleton_context_databox_constructor nam_dbo;;

test_number 1 (
( sym_ske_ebo : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_context_symbol
   (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
     (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
       "Point_a"))
);;

let sym_ske_ect_stl =
    Skeleton_as_body_coordinate_tuple_symbol_subtree_list_by_db1pointsdata_context_databox_name_provider_v.provide
      nam_dbo;;

let sym_ske_st = Tree_v.make_of_node sym_ske_ebo sym_ske_ect_stl;;

let sym_ske_rtl = Tree_v.root_topson_node_list_off_tree sym_ske_st;;

test_number 2 (
(sym_ske_rtl : Skeleton_symbol_t.skeleton_symbol list ) =
  [Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
      (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
        "Point_a"));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_coordinate_tuple_symbol
      (Skeleton_body_coordinate_tuple_symbol_t.Skeleton_body_coordinate_tuple_heterogeneous_symbol
        (Skeleton_body_coordinate_tuple_heterogeneous_symbol_t.Skeleton_body_coordinate_tuple_heterogeneous_spherical_symbol
          (Skeleton_body_coordinate_tuple_heterogeneous_spherical_symbol_t.Skeleton_body_coordinate_tuple_heterogeneous_spherical_constructor
            "A_A"))))]
);;

let sym_lea_l = Tree_v.leaf_node_list_off_tree sym_ske_st;;

test_number 3 (
(sym_lea_l : Skeleton_symbol_t.skeleton_symbol list ) =
 [Skeleton_symbol_t.Skeleton_fence_symbol
    (Skeleton_fence_symbol_t.Skeleton_fence_coordinate_symbol
      (Skeleton_fence_coordinate_symbol_t.Skeleton_fence_coordinate_heterogeneous_symbol
        (Skeleton_fence_coordinate_heterogeneous_symbol_t.Skeleton_fence_coordinate_heterogeneous_spherical_symbol
          (Skeleton_fence_coordinate_heterogeneous_spherical_symbol_t.Skeleton_fence_coordinate_heterogeneous_spherical_rho_symbol
            (Skeleton_fence_coordinate_heterogeneous_spherical_rho_symbol_t.Skeleton_fence_coordinate_heterogeneous_spherical_rho_constructor
              "A_A")))));
   Skeleton_symbol_t.Skeleton_fence_symbol
    (Skeleton_fence_symbol_t.Skeleton_fence_coordinate_symbol
      (Skeleton_fence_coordinate_symbol_t.Skeleton_fence_coordinate_heterogeneous_symbol
        (Skeleton_fence_coordinate_heterogeneous_symbol_t.Skeleton_fence_coordinate_heterogeneous_spherical_symbol
          (Skeleton_fence_coordinate_heterogeneous_spherical_symbol_t.Skeleton_fence_coordinate_heterogeneous_spherical_phi_symbol
            (Skeleton_fence_coordinate_heterogeneous_spherical_phi_symbol_t.Skeleton_fence_coordinate_heterogeneous_spherical_phi_constructor
              "A_A")))));
   Skeleton_symbol_t.Skeleton_fence_symbol
    (Skeleton_fence_symbol_t.Skeleton_fence_coordinate_symbol
      (Skeleton_fence_coordinate_symbol_t.Skeleton_fence_coordinate_heterogeneous_symbol
        (Skeleton_fence_coordinate_heterogeneous_symbol_t.Skeleton_fence_coordinate_heterogeneous_spherical_symbol
          (Skeleton_fence_coordinate_heterogeneous_spherical_symbol_t.Skeleton_fence_coordinate_heterogeneous_spherical_theta_symbol
            (Skeleton_fence_coordinate_heterogeneous_spherical_theta_symbol_t.Skeleton_fence_coordinate_heterogeneous_spherical_theta_constructor
              "A_A")))))]
);;

let sym_clo_l = List.filter Skeleton_symbol_v.is_skeleton_fence_symbol_off_skeleton_symbol sym_lea_l;;

test_number 4 (
( sym_clo_l : Skeleton_symbol_t.skeleton_symbol list ) =
  [Skeleton_symbol_t.Skeleton_fence_symbol
    (Skeleton_fence_symbol_t.Skeleton_fence_coordinate_symbol
      (Skeleton_fence_coordinate_symbol_t.Skeleton_fence_coordinate_heterogeneous_symbol
        (Skeleton_fence_coordinate_heterogeneous_symbol_t.Skeleton_fence_coordinate_heterogeneous_spherical_symbol
          (Skeleton_fence_coordinate_heterogeneous_spherical_symbol_t.Skeleton_fence_coordinate_heterogeneous_spherical_rho_symbol
            (Skeleton_fence_coordinate_heterogeneous_spherical_rho_symbol_t.Skeleton_fence_coordinate_heterogeneous_spherical_rho_constructor
              "A_A")))));
   Skeleton_symbol_t.Skeleton_fence_symbol
    (Skeleton_fence_symbol_t.Skeleton_fence_coordinate_symbol
      (Skeleton_fence_coordinate_symbol_t.Skeleton_fence_coordinate_heterogeneous_symbol
        (Skeleton_fence_coordinate_heterogeneous_symbol_t.Skeleton_fence_coordinate_heterogeneous_spherical_symbol
          (Skeleton_fence_coordinate_heterogeneous_spherical_symbol_t.Skeleton_fence_coordinate_heterogeneous_spherical_phi_symbol
            (Skeleton_fence_coordinate_heterogeneous_spherical_phi_symbol_t.Skeleton_fence_coordinate_heterogeneous_spherical_phi_constructor
              "A_A")))));
   Skeleton_symbol_t.Skeleton_fence_symbol
    (Skeleton_fence_symbol_t.Skeleton_fence_coordinate_symbol
      (Skeleton_fence_coordinate_symbol_t.Skeleton_fence_coordinate_heterogeneous_symbol
        (Skeleton_fence_coordinate_heterogeneous_symbol_t.Skeleton_fence_coordinate_heterogeneous_spherical_symbol
          (Skeleton_fence_coordinate_heterogeneous_spherical_symbol_t.Skeleton_fence_coordinate_heterogeneous_spherical_theta_symbol
            (Skeleton_fence_coordinate_heterogeneous_spherical_theta_symbol_t.Skeleton_fence_coordinate_heterogeneous_spherical_theta_constructor
              "A_A")))))]
);;

let sym_ske_fen = List_v.only_element_of_predicate_off_list 
  (fun s -> (Skeleton_symbol_v.is_skeleton_fence_coordinate_heterogeneous_spherical_theta_constructor s)
  && (Skeleton_symbol_v.string_off s = "A_A")
  ) sym_clo_l;; 

test_number 5 (
(sym_ske_fen : Skeleton_symbol_t.skeleton_symbol ) =
  Skeleton_symbol_t.Skeleton_fence_symbol
   (Skeleton_fence_symbol_t.Skeleton_fence_coordinate_symbol
     (Skeleton_fence_coordinate_symbol_t.Skeleton_fence_coordinate_heterogeneous_symbol
       (Skeleton_fence_coordinate_heterogeneous_symbol_t.Skeleton_fence_coordinate_heterogeneous_spherical_symbol
         (Skeleton_fence_coordinate_heterogeneous_spherical_symbol_t.Skeleton_fence_coordinate_heterogeneous_spherical_theta_symbol
           (Skeleton_fence_coordinate_heterogeneous_spherical_theta_symbol_t.Skeleton_fence_coordinate_heterogeneous_spherical_theta_constructor
             "A_A")))))
);;

let sym_ske_pat = List.rev (Tree_v.path_of_node_predicate_off_tree (fun t -> t = sym_ske_fen) sym_ske_st);;

test_number 6 (
(sym_ske_pat : Skeleton_symbol_t.skeleton_symbol list ) =
  [Skeleton_symbol_t.Skeleton_context_symbol
    (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
      (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
        "Point_a"));
   Skeleton_symbol_t.Skeleton_body_symbol
    (Skeleton_body_symbol_t.Skeleton_body_coordinate_tuple_symbol
      (Skeleton_body_coordinate_tuple_symbol_t.Skeleton_body_coordinate_tuple_heterogeneous_symbol
        (Skeleton_body_coordinate_tuple_heterogeneous_symbol_t.Skeleton_body_coordinate_tuple_heterogeneous_spherical_symbol
          (Skeleton_body_coordinate_tuple_heterogeneous_spherical_symbol_t.Skeleton_body_coordinate_tuple_heterogeneous_spherical_constructor
            "A_A"))));
   Skeleton_symbol_t.Skeleton_fence_symbol
    (Skeleton_fence_symbol_t.Skeleton_fence_coordinate_symbol
      (Skeleton_fence_coordinate_symbol_t.Skeleton_fence_coordinate_heterogeneous_symbol
        (Skeleton_fence_coordinate_heterogeneous_symbol_t.Skeleton_fence_coordinate_heterogeneous_spherical_symbol
          (Skeleton_fence_coordinate_heterogeneous_spherical_symbol_t.Skeleton_fence_coordinate_heterogeneous_spherical_theta_symbol
            (Skeleton_fence_coordinate_heterogeneous_spherical_theta_symbol_t.Skeleton_fence_coordinate_heterogeneous_spherical_theta_constructor
              "A_A")))))]
);;

test_number 7 (
sym_ske_st = provide nam_dbo
);;

