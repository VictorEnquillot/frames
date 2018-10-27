open Make_test_v;;

testing "Coordinate_as_set_body_tuple_symbol_subtree_list_by_db1pointsdata_context_databox_name_provider_v with
        Coordinate_as_set_body_tuple_symbol_subtree_list_by_db1pointsdata_context_databox_name_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Coordinate_as_set_body_tuple_symbol_subtree_list_by_db1pointsdata_context_databox_name_provider_u_any.ml";; 

*)

open Coordinate_as_set_body_tuple_symbol_subtree_list_by_db1pointsdata_context_databox_name_provider_v;;

let nam_dbo = "Point_a";;

let sym_db1_dnv_l = 
    Db1pointsdata_as_set_body_name_vertex_symbol_list_by_databox_name_provider_v.provide 
    nam_dbo
;;

test_number 1 (
(sym_db1_dnv_l : Db1pointsdata_symbol_t.db1pointsdata_symbol list ) =
  [Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
    (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
      (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_name_symbol
        (Db1pointsdata_set_body_name_symbol_t.Db1pointsdata_set_body_name_vertex_symbol
          (Db1pointsdata_set_body_name_vertex_symbol_t.Db1pointsdata_set_body_name_vertex_constructor
            "A_A"))))]
);; 

let nam_ver_l = List.map Db1pointsdata_symbol_v.string_off sym_db1_dnv_l;;

test_number 2 (
(nam_ver_l : string list ) = 
["A_A"]
);;

let sym_coo_cbt_stl = List.map
      (fun n -> 
	Coordinate_as_set_body_tuple_symbol_subtree_by_vertex_name_n_databox_name_provider_v.provide
	  (n, nam_dbo)
      )
      nam_ver_l;;


test_number 3 (
(sym_coo_cbt_stl : Coordinate_symbol_t.coordinate_symbol Tree_t.tree list ) =
  [Tree_t.Inner
    (Coordinate_symbol_t.Coordinate_set_symbol
      (Coordinate_set_symbol_t.Coordinate_set_body_symbol
        (Coordinate_set_body_symbol_t.Coordinate_set_body_tuple_symbol
          (Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_heterogeneous_symbol
            (Coordinate_set_body_tuple_heterogeneous_symbol_t.Coordinate_set_body_tuple_heterogeneous_spherical_symbol
              (Coordinate_set_body_tuple_heterogeneous_spherical_symbol_t.Coordinate_set_body_tuple_heterogeneous_spherical_constructor
                "A_A"))))),
    [Tree_t.Leaf
      (Coordinate_symbol_t.Coordinate_set_symbol
        (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
          (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
            (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
              (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
                (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
                  "A_A"))))));
     Tree_t.Leaf
      (Coordinate_symbol_t.Coordinate_set_symbol
        (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
          (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
            (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
              (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_phi_symbol
                (Coordinate_set_fence_heterogeneous_spherical_phi_symbol_t.Coordinate_set_fence_heterogeneous_spherical_phi_constructor
                  "A_A"))))));
     Tree_t.Leaf
      (Coordinate_symbol_t.Coordinate_set_symbol
        (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
          (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
            (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
              (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_symbol
                (Coordinate_set_fence_heterogeneous_spherical_theta_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_constructor
                  "A_A"))))))])]
);;

test_number 4 (
sym_coo_cbt_stl = provide nam_dbo
);;

