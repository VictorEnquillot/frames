open Make_test_v;;

testing "Elementary_body_coordinate_tuple_homogeneous_cartesian_envelope_v with
   Elementary_body_coordinate_tuple_homogeneous_cartesian_envelope_u_segment_s.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Elementary_body_coordinate_tuple_homogeneous_cartesian_envelope_u_segment_s.ml";;

*)

let nam_dba = "db1figure";;
let nam_dbo = "segment_s";;
let nam_cal = "classical";;
let sof_ele_ehc = "S_C";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

let tag_ele_l = Elementary_tag_all_list_by_database_name_n_databox_name_provider_v.provide (nam_dba, nam_dbo);;


let tag_ele_ehc_l = List.filter (fun (s, i) -> Elementary_symbol_v.is_elementary_body_coordinate_tuple_homogeneous_cartesian_symbol_off_elementary_symbol s) tag_ele_l;;

test_number 2 (
(tag_ele_ehc_l : Elementary_symbol_t.elementary_symbol Tag_t.tag list ) =
  [(Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
       (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol
         (Elementary_body_coordinate_tuple_homogeneous_symbol_t.Elementary_body_coordinate_tuple_homogeneous_cartesian_symbol
           (Elementary_body_coordinate_tuple_homogeneous_cartesian_symbol_t.Elementary_body_coordinate_tuple_homogeneous_cartesian_constructor
             "S_B")))),
    [1; 3; 1; 7]);
   (Elementary_symbol_t.Elementary_body_symbol
     (Elementary_body_symbol_t.Elementary_body_coordinate_tuple_symbol
       (Elementary_body_coordinate_tuple_symbol_t.Elementary_body_coordinate_tuple_homogeneous_symbol
         (Elementary_body_coordinate_tuple_homogeneous_symbol_t.Elementary_body_coordinate_tuple_homogeneous_cartesian_symbol
           (Elementary_body_coordinate_tuple_homogeneous_cartesian_symbol_t.Elementary_body_coordinate_tuple_homogeneous_cartesian_constructor
             "S_C")))),
    [2; 3; 1; 7])]
);;

open Elementary_body_coordinate_tuple_homogeneous_cartesian_envelope_v;;

(* Argument tag_ehc "S_C" *)

let tag_ele_ehc = List_v.only_element_of_predicate_off_list (fun (s, i) -> Elementary_symbol_v.string_off s = sof_ele_ehc) tag_ele_ehc_l;;

let tag_ehc = Tag_v.map_entity Elementary_symbol_v.elementary_body_coordinate_tuple_homogeneous_cartesian_symbol_off_elementary_symbol tag_ele_ehc;;

test_number 3 (
( tag_ehc :
  Elementary_body_coordinate_tuple_homogeneous_cartesian_symbol_t.elementary_body_coordinate_tuple_homogeneous_cartesian_symbol
  Tag_t.tag ) =
  (Elementary_body_coordinate_tuple_homogeneous_cartesian_symbol_t.Elementary_body_coordinate_tuple_homogeneous_cartesian_constructor
    "S_C",
   [2; 3; 1; 7])
);;

(** {6 Border_as_list from Database} *)

let bol_ehc = border_as_list_of_tag tag_ehc;;

test_number 4 (
(bol_ehc :
  Elementary_border_symbol_t.elementary_border_symbol Tag_t.tag list ) =
  [(Elementary_border_symbol_t.Elementary_border_coordinate_symbol
     (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
       (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
         (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_symbol
           (Elementary_border_coordinate_homogeneous_cartesian_x_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_constructor
             "S_C")))),
    [1; 2; 3; 1; 7]);
   (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
     (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
       (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
         (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_y_symbol
           (Elementary_border_coordinate_homogeneous_cartesian_y_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_y_constructor
             "S_C")))),
    [2; 2; 3; 1; 7]);
   (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
     (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
       (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
         (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_z_symbol
           (Elementary_border_coordinate_homogeneous_cartesian_z_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_z_constructor
             "S_C")))),
    [3; 2; 3; 1; 7])]
);;

test_number 5 (
bol_ehc = border_of_tag tag_ehc
);;

(** {6 Border_as_tuple from Container} *)

let bot_ehc = border_as_tuple_of_tag tag_ehc;;

test_number 6 (
(bot_ehc :
  Elementary_border_symbol_t.elementary_border_symbol Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Trio
   ((Elementary_border_symbol_t.Elementary_border_coordinate_symbol
      (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
        (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
          (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_symbol
            (Elementary_border_coordinate_homogeneous_cartesian_x_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_x_constructor
              "S_C")))),
     [1; 2; 3; 1; 7]),
    (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
      (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
        (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
          (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_y_symbol
            (Elementary_border_coordinate_homogeneous_cartesian_y_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_y_constructor
              "S_C")))),
     [2; 2; 3; 1; 7]),
    (Elementary_border_symbol_t.Elementary_border_coordinate_symbol
      (Elementary_border_coordinate_symbol_t.Elementary_border_coordinate_homogeneous_symbol
        (Elementary_border_coordinate_homogeneous_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_symbol
          (Elementary_border_coordinate_homogeneous_cartesian_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_z_symbol
            (Elementary_border_coordinate_homogeneous_cartesian_z_symbol_t.Elementary_border_coordinate_homogeneous_cartesian_z_constructor
              "S_C")))),
     [3; 2; 3; 1; 7]))
);;

(** {6 Envelope as Envelopee list} *)

let bor_l = border_as_list_of_tag tag_ehc;;
let tag_b = List.hd bor_l;;

let env_b = Elementary_border_envelope_v.envelopee_of_tag tag_b;;
let env_ehc = envelope_of_tag tag_ehc;;
