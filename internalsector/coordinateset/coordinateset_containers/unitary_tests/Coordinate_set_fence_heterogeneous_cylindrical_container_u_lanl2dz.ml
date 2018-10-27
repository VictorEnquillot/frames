open Make_test_v;;

testing "Coordinate_set_fence_heterogeneous_cylindrical_container_v with
   Coordinate_set_fence_heterogeneous_cylindrical_container_u_lanl2dz.ml";;

(* Deleting Registers *)






(* Tracing *)


(* toplevel 
   #use "Coordinate_set_fence_heterogeneous_cylindrical_container_u_lanl2dz.ml";;

*)

let nam_dba = "db1points";;
let nam_dbo = "lanl2dz";;


let tag_coo_t = Coordinate_tag_tree_by_coordinates_general_provider_v.provide ();;
let tag_coo_l = Coordinate_tag_all_list_by_databox_name_n_database_name_provider_v.provide (nam_dbo, nam_dba);;
let tag_pdo = Coordinate_context_domain_tag_by_unit_provider_v.provide ();;

(* Domain *)

test_number 1 (
(tag_pdo : Coordinate_context_domain_symbol_t.coordinate_context_domain_symbol Tag_t.tag ) =
  (Coordinate_context_domain_symbol_t.Coordinate_context_domain_constructor "coordinate",
   [6])
);;

open Coordinate_set_fence_heterogeneous_cylindrical_container_v;;

(* Coordinate_heterogeneous_cylindrical_coefficient *)

let tag_coo_pao = List.find 
    (fun t -> Coordinate_symbol_v.is_coordinate_coordinate_heterogeneous_cylindrical_symbol_off_coordinate_symbol 
	(Tag_v.entity_off_tag t) ) 
    tag_coo_l;;

test_number 2 (
( tag_coo_pao : Coordinate_symbol_t.coordinate_symbol Tag_t.tag ) =
  (Coordinate_symbol_t.Coordinate_fence_symbol
    (Coordinate_fence_symbol_t.Coordinate_coordinate_symbol
      (Coordinate_coordinate_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
        (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol
          (Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_constructor
            "ne s 1 1")))),
   [1; 1; 5; 5; 6])
);;

let tag_epa = Tag_v.map_entity Coordinate_symbol_v.coordinate_coordinate_heterogeneous_cylindrical_symbol_off_coordinate_symbol tag_coo_pao;;

test_number 3 (
( tag_epa : Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.coordinate_coordinate_heterogeneous_cylindrical_symbol Tag_t.tag ) =
  (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol
    (Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_constructor
      "ne s 1 1"),
   [1; 1; 5; 5; 6])
);;

let con_epa = container_of_tag tag_epa ;;

test_number 4 (
(con_epa : Coordinate_set_fence_heterogeneous_cylindrical_container_t.coordinate_coordinate_heterogeneous_cylindrical_container ) =
  Coordinate_set_fence_heterogeneous_cylindrical_container_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_container
   (Coordinate_units_symbol_t.Coordinate_units_length_symbol
     Coordinate_units_length_symbol_t.Bohr,
    [1; 1; 1; 5; 5; 6])
);;

let fen_l = fence_as_list_of_tag tag_epa;;

test_number 5 (
(fen_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_fence_symbol
     (Coordinate_fence_symbol_t.Coordinate_coordinate_symbol
       (Coordinate_coordinate_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_constructor
             "ne s 1 1")))),
    [1; 1; 5; 5; 6])]
);;

let dfe_l = deepfence_as_list tag_epa;;

test_number 6 (
( dfe_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_deepfence_symbol
     (Coordinate_deepfence_symbol_t.Coordinate_units_symbol
       (Coordinate_units_symbol_t.Coordinate_units_length_symbol
         Coordinate_units_length_symbol_t.Bohr)),
    [1; 1; 1; 5; 5; 6])]
);;

