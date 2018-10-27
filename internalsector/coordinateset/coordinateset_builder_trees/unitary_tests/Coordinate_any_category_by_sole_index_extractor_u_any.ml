open Make_test_v;;

testing "Coordinate_any_category_by_sole_index_extractor_v with
    Coordinate_any_category_by_sole_index_extractor_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Coordinate_any_category_by_sole_index_extractor_u_any.ml";; 

*)

open Coordinate_any_category_by_sole_index_extractor_v;;

let nam_dbo = "Point_a";;
let nam_dba = "db1points";;

let tag_coo_l = 
    Coordinate_tag_all_list_by_databox_name_n_database_name_provider_v.provide
    (nam_dbo, nam_dba);;

let tag_coo = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> (Coordinate_symbol_v.string_off s = "A_A") 
	&& 
      (Coordinate_symbol_v.is_coordinate_set_fence_heterogeneous_spherical_theta_constructor s)
    )
    tag_coo_l;;

test_number 1 (
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

let soi_any = Tag_v.sole_index_off_tag tag_coo;;

let nam_csf = coordinate_set_fence_name_off_sole_index soi_any;;

test_number 2 (
(nam_csf : string ) = 
"coordinate_set_fence_heterogeneous_spherical_theta_constructor"
);;

test_number 3 (
nam_dbo = coordinate_context_databox_string_off_off_sole_index soi_any
);;

test_number 4 (
nam_dba = coordinate_context_database_string_off_off_sole_index soi_any
);;

let nam_ecd = coordinate_context_domain_string_off_off_sole_index soi_any;;

test_number 5 (
(nam_ecd : string ) = 
"coordinate"
);;

let nam_ecs = coordinate_context_sector_string_off_off_sole_index soi_any;;

test_number 6 (
(nam_ecs : string ) = 
"internal"
);;
