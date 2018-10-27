open Make_test_v;;

testing "Coordinate_symbol_by_sole_index_provider_v with
    Coordinate_symbol_by_sole_index_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Coordinate_symbol_by_sole_index_provider_u_any.ml";; 

*)

open Coordinate_symbol_by_sole_index_provider_v;;

let nam_dbo = "Point_a";;
let nam_dba = "db1points";;

let tag_coo_l = Coordinate_tag_all_list_by_databox_name_n_database_name_provider_v.provide (nam_dbo, nam_dba);;

test_number 1 (
(tag_coo_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_sector_symbol
       (Coordinate_context_sector_symbol_t.Coordinate_context_sector_constructor
         "internal")),
    [5]);
   (Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_domain_symbol
       (Coordinate_context_domain_symbol_t.Coordinate_context_domain_constructor
         "coordinate")),
    [5; 5]);
   (Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_database_symbol
       (Coordinate_context_database_symbol_t.Coordinate_context_database_constructor
         "db1points")),
    [1; 5; 5]);
   (Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_databox_symbol
       (Coordinate_context_databox_symbol_t.Coordinate_context_databox_constructor
         "Point_a")),
    [10; 1; 5; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol
     (Coordinate_set_symbol_t.Coordinate_set_body_symbol
       (Coordinate_set_body_symbol_t.Coordinate_set_body_tuple_symbol
         (Coordinate_set_body_tuple_symbol_t.Coordinate_set_body_tuple_heterogeneous_symbol
           (Coordinate_set_body_tuple_heterogeneous_symbol_t.Coordinate_set_body_tuple_heterogeneous_spherical_symbol
             (Coordinate_set_body_tuple_heterogeneous_spherical_symbol_t.Coordinate_set_body_tuple_heterogeneous_spherical_constructor
               "A_A"))))),
    [1; 10; 1; 5; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol
     (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
         (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
           (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_symbol
             (Coordinate_set_fence_heterogeneous_spherical_rho_symbol_t.Coordinate_set_fence_heterogeneous_spherical_rho_constructor
               "A_A"))))),
    [1; 1; 10; 1; 5; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol
     (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
         (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
           (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_phi_symbol
             (Coordinate_set_fence_heterogeneous_spherical_phi_symbol_t.Coordinate_set_fence_heterogeneous_spherical_phi_constructor
               "A_A"))))),
    [2; 1; 10; 1; 5; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol
     (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
       (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
         (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
           (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_symbol
             (Coordinate_set_fence_heterogeneous_spherical_theta_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_constructor
               "A_A"))))),
    [3; 1; 10; 1; 5; 5])]
);;

let tag_coo = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> (Coordinate_symbol_v.string_off s = "A_A") 
	&& 
      (Coordinate_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_theta_constructor s)
    )
    tag_coo_l;;

test_number 2 (
(tag_coo : Coordinate_symbol_t.coordinate_symbol Tag_t.tag) =
  (Coordinate_symbol_t.Coordinate_set_symbol
    (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
      (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
        (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
          (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_symbol
            (Coordinate_set_fence_heterogeneous_spherical_theta_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_constructor
              "A_A"))))),
   [3; 1; 10; 1; 5; 5])
);;

let soi_coo = Tag_v.sole_index_off_tag tag_coo;;

test_number 3 (
(soi_coo : Sole_index_t.sole_index ) =
[3; 1; 10; 1; 5; 5]
);;

let sym_coo = Coordinate_symbol_by_sole_index_register_v.retrieve nam_mod soi_coo;;

test_number 4 (
(sym_coo : Coordinate_symbol_t.coordinate_symbol ) =
  Coordinate_symbol_t.Coordinate_set_symbol
   (Coordinate_set_symbol_t.Coordinate_set_fence_symbol
     (Coordinate_set_fence_symbol_t.Coordinate_set_fence_heterogeneous_symbol
       (Coordinate_set_fence_heterogeneous_symbol_t.Coordinate_set_fence_heterogeneous_spherical_symbol
         (Coordinate_set_fence_heterogeneous_spherical_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_symbol
           (Coordinate_set_fence_heterogeneous_spherical_theta_symbol_t.Coordinate_set_fence_heterogeneous_spherical_theta_constructor
             "A_A")))))
);;

test_number 5 (
sym_coo = provide soi_coo
);;
