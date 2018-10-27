open Make_test_v;;

testing "Float_list_by_db1pointsdata_set_body_sequence_float_tag_provider_v with
    Float_list_by_db1pointsdata_set_body_sequence_float_tag_provider_u_triangle_w.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Float_list_by_db1pointsdata_set_body_sequence_float_tag_provider_u_triangle_w.ml";; 

*)

open Float_list_by_db1pointsdata_set_body_sequence_float_tag_provider_v;;

let nam_dbo = "triangle_w";;
let bna_dbo = Basicname_v.basicname_databox_of_string nam_dbo;;

let tag_db1_l = 
    Db1pointsdata_tag_all_list_by_basicname_databox_provider_v.provide
      bna_dbo ;;

let sof = "W";;
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

let flo_l = Float_list_by_db1pointsdata_set_body_sequence_float_tag_provider_v.provide
      tag_dsf;;

test_number 3 (
(flo_l : float list ) = 
[1.; 0.785398163397448279; 0.785398163397448279]
);;

test_number 6 (
flo_l = provide tag_dsf
);;
let uni_t = Units_tuple_by_db1pointsdata_set_body_sequence_float_tag_provider_v.provide tag_dsf in

  let uni_l = Tuple_v.list_of_tuple uni_t in
  
  List.map2 Measure_v.make flo_l uni_l
