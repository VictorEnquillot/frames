open Make_test_v;;

testing "Elementary_as_body_coordinate_tuple_symbol_subtree_list_by_db1pointsdata_context_databox_name_provider_v with
        Elementary_as_body_coordinate_tuple_symbol_subtree_list_by_db1pointsdata_context_databox_name_provider_u_any.ml";;

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
   #use "Elementary_as_body_coordinate_tuple_symbol_subtree_list_by_db1pointsdata_context_databox_name_provider_u_any.ml";; 

*)

open Elementary_as_body_coordinate_tuple_symbol_subtree_list_by_db1pointsdata_context_databox_name_provider_v;;

let nam_dbo = "Point_a";;

let sym_db1_dnv_l = 
    Db1pointsdata_as_body_name_vertex_symbol_list_by_databox_name_provider_v.provide 
    nam_dbo
;;

test_number 1 (
(sym_db1_dnv_l : Db1pointsdata_symbol_t.db1pointsdata_symbol list ) =
  [Db1pointsdata_symbol_t.Db1pointsdata_body_symbol
    (Db1pointsdata_body_symbol_t.Db1pointsdata_body_name_symbol
      (Db1pointsdata_body_name_symbol_t.Db1pointsdata_body_name_vertex_symbol
        (Db1pointsdata_body_name_vertex_symbol_t.Db1pointsdata_body_name_vertex_constructor
          "A_A")))]
);; 

let nam_ver_l = List.map Db1pointsdata_symbol_v.string_off sym_db1_dnv_l;;

test_number 2 (
(nam_ver_l : string list ) = 
["A_A"]
);;

let sym_ele_ect_stl = List.map
      (fun n -> 
	Elementary_as_body_coordinate_tuple_symbol_subtree_by_vertex_name_n_databox_name_provider_v.provide
	  (n, nam_dbo)
      )
      nam_ver_l;;


test_number 3 (
(sym_ele_ect_stl : Elementary_symbol_t.elementary_symbol Tree_t.tree list ) =
  [Tree_t.Inner
    (Elementary_symbol_t.Elementary_body_symbol
      (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
        (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_symbol
          (Elementary_body_coordinate_tuple_heterogeneous_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_spherical_symbol
            (Elementary_body_coordinate_tuple_heterogeneous_spherical_symbol_t.Elementary_body_coordinate_tuple_heterogeneous_spherical_constructor
              "A_A")))),
    [Tree_t.Leaf
      (Elementary_symbol_t.Elementary_fence_symbol
        (Elementary_fence_symbol_t.Elementary_fence_coordinate_symbol
          (Elementary_fence_coordinate_symbol_t.Elementary_fence_coordinate_heterogeneous_symbol
            (Elementary_fence_coordinate_heterogeneous_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_symbol
              (Elementary_fence_coordinate_heterogeneous_spherical_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_rho_symbol
                (Elementary_fence_coordinate_heterogeneous_spherical_rho_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_rho_constructor
                  "A_A"))))));
     Tree_t.Leaf
      (Elementary_symbol_t.Elementary_fence_symbol
        (Elementary_fence_symbol_t.Elementary_fence_coordinate_symbol
          (Elementary_fence_coordinate_symbol_t.Elementary_fence_coordinate_heterogeneous_symbol
            (Elementary_fence_coordinate_heterogeneous_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_symbol
              (Elementary_fence_coordinate_heterogeneous_spherical_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_phi_symbol
                (Elementary_fence_coordinate_heterogeneous_spherical_phi_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_phi_constructor
                  "A_A"))))));
     Tree_t.Leaf
      (Elementary_symbol_t.Elementary_fence_symbol
        (Elementary_fence_symbol_t.Elementary_fence_coordinate_symbol
          (Elementary_fence_coordinate_symbol_t.Elementary_fence_coordinate_heterogeneous_symbol
            (Elementary_fence_coordinate_heterogeneous_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_symbol
              (Elementary_fence_coordinate_heterogeneous_spherical_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_theta_symbol
                (Elementary_fence_coordinate_heterogeneous_spherical_theta_symbol_t.Elementary_fence_coordinate_heterogeneous_spherical_theta_constructor
                  "A_A"))))))])]
);;

test_number 4 (
sym_ele_ect_stl = provide nam_dbo
);;

