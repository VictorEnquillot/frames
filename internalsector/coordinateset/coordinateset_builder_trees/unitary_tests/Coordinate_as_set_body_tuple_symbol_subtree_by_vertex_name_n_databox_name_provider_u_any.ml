open Make_test_v;;

testing "Coordinate_as_set_body_tuple_symbol_subtree_by_vertex_name_n_databox_name_provider_v with
        Coordinate_as_set_body_tuple_symbol_subtree_by_vertex_name_n_databox_name_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Coordinate_as_set_body_tuple_symbol_subtree_by_vertex_name_n_databox_name_provider_u_any.ml";; 

*)

open Coordinate_as_set_body_tuple_symbol_subtree_by_vertex_name_n_databox_name_provider_v;;

let nam_dbo = "Point_a";;
let nam_ver = "A_A";;

let sym_db1_dck = 
    Db1pointsdata_as_set_fence_token_coordinates_kind_symbol_by_databox_name_provider_v.provide
      nam_dbo;;

test_number 1 (
(sym_db1_dck : Db1pointsdata_symbol_t.db1pointsdata_symbol ) =
  Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
   (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
     (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_token_symbol
       (Db1pointsdata_set_fence_token_symbol_t.Db1pointsdata_set_fence_token_coordinates_symbol
         (Db1pointsdata_set_fence_token_coordinates_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_symbol
           (Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol
             (Db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_spherical_constructor
               "A"))))))
);; 

let sym_dck = 
    Db1pointsdata_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_symbol_off_db1pointsdata_symbol
      sym_db1_dck;;

test_number 2 (
(sym_dck :
   Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.db1pointsdata_set_fence_token_coordinates_kind_symbol ) =
Db1pointsdata_set_fence_token_coordinates_kind_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol
  (Db1pointsdata_set_fence_token_coordinates_kind_spherical_symbol_t.Db1pointsdata_set_fence_token_coordinates_kind_spherical_constructor "A")
);;

let sym_coo_cbt_l = 
  coordinate_as_set_body_coordinate_symbol_list_of_vertex_name_of_coordinates_kind
    nam_ver
    sym_dck;;

test_number 3 (
( sym_coo_cbt_l : Coordinate_symbol_t.coordinate_symbol list ) =
[Coordinate_symbol_t.Coordinate_set_symbol
  (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
    (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
      (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
        (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
          (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
            "A_A")))));
 Coordinate_symbol_t.Coordinate_set_symbol
  (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
    (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
      (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
        (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_phi_symbol
          (Coordinate_set_fence_heterogeneous_spherical_phi_symbol_t.Coordinate_set_fence_heterogeneous_spherical_phi_constructor
            "A_A")))));
 Coordinate_symbol_t.Coordinate_set_symbol
  (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
    (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
      (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
        (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_symbol
          (Coordinate_set_fence_heterogeneous_spherical_theta_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_constructor
            "A_A")))))]
);;

let sym_coo_fl = List.map Tree_v.make_of_leaf sym_coo_cbt_l;;

test_number 4 (
(sym_coo_fl : Coordinate_symbol_t.coordinate_symbol Tree_t.tree list ) =
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
                "A_A"))))))]
);;

let sym_coo_cbt =
  coordinate_as_set_body_coordinate_tuple_symbol_of_vertex_name_of_coordinates_kind 
    nam_ver 
    sym_dck ;;

test_number 5 (
(sym_coo_cbt : Coordinate_symbol_t.coordinate_symbol ) =
  Coordinate_symbol_t.Coordinate_set_symbol
   (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_set_body_symbol_t.Coordinate_set_body_tuple_symbol
       (Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_heterogeneous_symbol
         (Coordinate_set_body_tuple_heterogeneous_symbol_t.Coordinate_set_body_tuple_heterogeneous_spherical_symbol
           (Coordinate_set_body_tuple_heterogeneous_spherical_symbol_t.Coordinate_set_body_tuple_heterogeneous_spherical_constructor
             "A_A")))))
);;

let sym_coo_cbt_st = Tree_v.make sym_coo_cbt sym_coo_fl;;

test_number 6 (
(sym_coo_cbt_st : Coordinate_symbol_t.coordinate_symbol Tree_t.tree ) =
  Tree_t.Inner
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
                 "A_A"))))))])
);;

test_number 7 (
sym_coo_cbt_st = provide (nam_ver, nam_dbo)
);;

