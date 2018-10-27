open Make_test_v;;

testing "Coordinate_set_body_tuple_heterogeneous_cylindrical_container_v with
   Coordinate_set_body_tuple_heterogeneous_cylindrical_container_u_cc_pvtz.ml";;

(* Deleting Registers *)






(* Tracing *)


(* toplevel 
   #use "Coordinate_set_body_tuple_heterogeneous_cylindrical_container_u_cc_pvtz.ml";;

*)

let nam_dba = "db1points";;
let nam_dbo = "Point_a";;


let tag_coo_l = Coordinate_tag_all_list_by_databox_name_n_database_name_provider_v.provide (nam_dbo, nam_dba);;

(* Context *) 
let tag_pdo = Coordinate_context_domain_tag_by_unit_provider_v.provide ();;

test_number 1 (
(tag_pdo : Coordinate_context_domain_symbol_t.coordinate_context_domain_symbol Tag_t.tag ) =
  (Coordinate_context_domain_symbol_t.Coordinate_context_domain_constructor "coordinate",
   [6])
);;

let tag_coo_pba = Coordinate_as_context_database_tag_by_database_name_provider_v.provide nam_dba;;

test_number 2 (
(tag_coo_pba : Coordinate_symbol_t.coordinate_symbol Tag_t.tag ) =
 (Coordinate_symbol_t.Coordinate_context_symbol
    (Coordinate_context_symbol_t.Coordinate_context_database_symbol
      (Coordinate_context_database_symbol_t.Coordinate_context_database_constructor "db1points")),
   [5; 6])
);;

let tag_coo_dbo = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> 
      (Coordinate_symbol_v.string_off s = nam_dbo)
	&&
      (Coordinate_symbol_v.is_coordinate_context_databox_constructor s)
    ) tag_coo_l;;

test_number 3 (
( tag_coo_dbo : Coordinate_symbol_t.coordinate_symbol Tag_t.tag ) =
  (Coordinate_symbol_t.Coordinate_context_symbol
    (Coordinate_context_symbol_t.Coordinate_context_databox_symbol
      (Coordinate_context_databox_symbol_t.Coordinate_basisset_symbol
        (Coordinate_basisset_symbol_t.Coordinate_basisset_constructor
          "Point_a"))),
   [4; 5; 6])
);;

open Coordinate_set_body_tuple_heterogeneous_cylindrical_container_v;;

(* Argument Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol ne 2 p 1 *)

let pre_tag_chc (s, i) = Coordinate_symbol_v.is_coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_off_coordinate_symbol s;;
let pre_tag_chc_sof sof (s, i) = (Coordinate_symbol_v.is_coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_off_coordinate_symbol s)
    && (Coordinate_symbol_v.string_off s = sof);;

let tag_coo_chc_l = List.filter pre_tag_chc tag_coo_l;;

let sof_chc = "ne p 2 1";;

let tag_coo_chc_nep21_l = List.filter (pre_tag_chc_sof sof_chc) tag_coo_chc_l;;

let tag_chc_nep21_l = List.map
    (Tag_v.map_entity Coordinate_symbol_v.coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_off_coordinate_symbol) tag_coo_chc_nep21_l;;

test_number 4 (
(tag_chc_nep21_l :
  Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_t.coordinate_set_body_tuple_heterogeneous_cylindrical_symbol
  Tag_t.tag list ) =
  [(Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_t.Coordinate_set_body_tuple_heterogeneous_cylindrical_constructor
     "ne p 2 1",
    [156; 4; 5; 6])]
);;

let tag_coo_chc = List_v.only_element_of_predicate_off_list (pre_tag_chc_sof sof_chc) tag_coo_chc_l;;

test_number 5 (
( tag_coo_chc : Coordinate_symbol_t.coordinate_symbol Tag_t.tag ) =
  (Coordinate_symbol_t.Coordinate_body_symbol
    (Coordinate_body_symbol_t.Coordinate_coordinate_tuple_symbol
      (Coordinate_coordinate_tuple_symbol_t.Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol
        (Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_t.Coordinate_set_body_tuple_heterogeneous_cylindrical_constructor
          "ne p 2 1"))),
   [156; 4; 5; 6])
);;

let tag_chc = Tag_v.map_entity Coordinate_symbol_v.coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_off_coordinate_symbol tag_coo_chc;;

test_number 6 (
( tag_chc :
  Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_t.coordinate_set_body_tuple_heterogeneous_cylindrical_symbol
  Tag_t.tag ) =
  (Coordinate_set_body_tuple_heterogeneous_cylindrical_symbol_t.Coordinate_set_body_tuple_heterogeneous_cylindrical_constructor
    "ne p 2 1",
   [156; 4; 5; 6])
);;

let con_chc = container_of_tag tag_chc;;

test_number 7 (
(con_chc :
   Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.coordinate_coordinate_heterogeneous_cylindrical_symbol
   Tag_t.tag Duo_t.duo ) =
((Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol
    (Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_constructor
       "ne p 2 1"),
  [1; 156; 4; 5; 6]),
 (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol
    (Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_constructor
       "ne p 2 1"),
  [2; 156; 4; 5; 6]))
);;

let fen_chc = Coordinate_set_body_tuple_heterogeneous_cylindrical_container_v.fence_as_list_of_tag tag_chc;;

test_number 8 (
(fen_chc : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_fence_symbol
     (Coordinate_fence_symbol_t.Coordinate_coordinate_symbol
       (Coordinate_coordinate_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_exponent_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_exponent_constructor
             "ne p 2 1")))),
    [1; 156; 4; 5; 6]);
   (Coordinate_symbol_t.Coordinate_fence_symbol
     (Coordinate_fence_symbol_t.Coordinate_coordinate_symbol
       (Coordinate_coordinate_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_symbol
         (Coordinate_set_fence_heterogeneous_cylindrical_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol
           (Coordinate_set_fence_heterogeneous_cylindrical_coefficient_symbol_t.Coordinate_set_fence_heterogeneous_cylindrical_coefficient_constructor
             "ne p 2 1")))),
    [2; 156; 4; 5; 6])]
);;

let dfe_chc = Coordinate_set_body_tuple_heterogeneous_cylindrical_container_v.deepfence_as_list tag_chc;;

test_number 9 (
(dfe_chc : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_deepfence_symbol
     (Coordinate_deepfence_symbol_t.Coordinate_units_symbol
       (Coordinate_units_symbol_t.Coordinate_units_length_symbol
         Coordinate_units_length_symbol_t.Bohr)),
    [1; 1; 156; 4; 5; 6]);
   (Coordinate_symbol_t.Coordinate_deepfence_symbol
     (Coordinate_deepfence_symbol_t.Coordinate_units_symbol
       (Coordinate_units_symbol_t.Coordinate_units_length_symbol
         Coordinate_units_length_symbol_t.Bohr)),
    [1; 2; 156; 4; 5; 6])]
);;


