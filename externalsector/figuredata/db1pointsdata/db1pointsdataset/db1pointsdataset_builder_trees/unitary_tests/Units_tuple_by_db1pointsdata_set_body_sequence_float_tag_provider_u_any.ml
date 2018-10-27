open Make_test_v;;

testing "Units_tuple_by_db1pointsdata_set_body_sequence_float_tag_provider_v with
    Units_tuple_by_db1pointsdata_set_body_sequence_float_tag_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Units_tuple_by_db1pointsdata_set_body_sequence_float_tag_provider_u_any.ml";; 

*)

open Units_tuple_by_db1pointsdata_set_body_sequence_float_tag_provider_v;;

let nam_dbo = "Point_a";;

let tag_db1_l = 
    Db1pointsdata_tag_all_list_by_basicname_databox_provider_v.provide
      nam_dbo ;;

let sof = "A_A";;
let tag_db1_dsf = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> (Db1pointsdata_symbol_v.is_db1pointsdata_set_body_sequence_float_symbol_off_db1pointsdata_symbol s) 
	&& 
      (Db1pointsdata_symbol_v.string_off s = sof)
    )
    tag_db1_l;;

test_number 1 (
( tag_db1_dsf : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag ) =
  (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
    (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
      (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_sequence_symbol
        (Db1pointsdata_set_body_sequence_symbol_t.Db1pointsdata_set_body_sequence_float_symbol
          (Db1pointsdata_set_body_sequence_float_symbol_t.Db1pointsdata_set_body_sequence_float_constructor
            "A_A")))),
   [3; 1; 2; 10; 1; 7; 2])
);;

(* Argument *)

let tag_dsf = 
  Db1pointsdata_set_body_sequence_float_tag_v.db1pointsdata_set_body_sequence_float_tag_off_db1pointsdata_tag
    tag_db1_dsf
;;

test_number 2 (
(tag_dsf :
  Db1pointsdata_set_body_sequence_float_symbol_t.db1pointsdata_set_body_sequence_float_symbol
  Tag_t.tag ) =
  (Db1pointsdata_set_body_sequence_float_symbol_t.Db1pointsdata_set_body_sequence_float_constructor
    "A_A",
   [3; 1; 2; 10; 1; 7; 2])
);;
 
let soi_dsf = Tag_v.sole_index_off_tag tag_dsf;;

test_number 3 (
(soi_dsf : Sole_index_t.sole_index ) = 
[3; 1; 2; 10; 1; 7; 2]
);;

test_number 4 (
nam_dbo = Db1pointsdata_context_basicname_databox_by_any_sole_index_provider_v.provide soi_dsf
);;  
  
let sym_db1_dck = 
    Db1pointsdata_as_set_fence_token_coordinates_kind_symbol_by_basicname_databox_provider_v.provide
      nam_dbo
;;

test_number 5 (
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

let sof_dck = Db1pointsdata_symbol_v.string_off sym_db1_dck;;

test_number 6 (
(sof_dck : string ) = 
"A"
);;

let sym_dul = 
  Db1pointsdata_set_fence_token_coordinates_units_length_symbol_by_basicname_databox_provider_v.provide
    nam_dbo
;;

test_number 7 ( 
(sym_dul :
  Db1pointsdata_set_fence_token_coordinates_units_length_symbol_t.db1pointsdata_set_fence_token_coordinates_units_length_symbol ) =
  Db1pointsdata_set_fence_token_coordinates_units_length_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol
   (Db1pointsdata_set_fence_token_coordinates_units_length_meter_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_length_meter_constructor
     "A")
);;

let ule = 
    Units_by_db1pointsdata_set_fence_token_coordinates_units_length_symbol_provider_v.provide
      sym_dul;;

test_number 8 (
(ule : Units_t.units ) =
  Units_t.Units_actual
   (Units_actual_t.Units_actual_length Units_actual_length_t.Meter)
);;

let sym_dua = 
  Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_by_basicname_databox_provider_v.provide
    nam_dbo
;;

test_number 9 (
(sym_dua :
  Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_t.db1pointsdata_set_fence_token_coordinates_units_angle_symbol ) =
  Db1pointsdata_set_fence_token_coordinates_units_angle_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol
   (Db1pointsdata_set_fence_token_coordinates_units_angle_radian_symbol_t.Db1pointsdata_set_fence_token_coordinates_units_angle_radian_constructor
     "A")
);;

let uan = 
  Units_by_db1pointsdata_set_fence_token_coordinates_units_angle_symbol_provider_v.provide
    sym_dua;;

test_number 10 (
(uan : Units_t.units ) =
  Units_t.Units_actual
   (Units_actual_t.Units_actual_angle Units_actual_angle_t.Radian)
);;

let uni_t = Tuple_v.tuple_of_trio (Trio_v.make ule uan uan);;

test_number 11 (
(uni_t : Units_t.units Tuple_t.tuple ) =
  Tuple_t.Trio
   (Units_t.Units_actual
     (Units_actual_t.Units_actual_length Units_actual_length_t.Meter),
    Units_t.Units_actual
     (Units_actual_t.Units_actual_angle Units_actual_angle_t.Radian),
    Units_t.Units_actual
     (Units_actual_t.Units_actual_angle Units_actual_angle_t.Radian))
);;
