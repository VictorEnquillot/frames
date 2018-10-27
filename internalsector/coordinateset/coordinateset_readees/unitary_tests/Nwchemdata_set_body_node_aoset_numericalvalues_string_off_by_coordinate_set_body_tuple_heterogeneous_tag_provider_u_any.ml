open Make_test_v;;

testing "Db1pointsdata_set_body_node_aoset_numericalvalues_string_off_by_coordinate_set_body_tuple_heterogeneous_tag_provider_v with
    Db1pointsdata_set_body_node_aoset_numericalvalues_string_off_by_coordinate_set_body_tuple_heterogeneous_tag_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_coordinate_context_databox_tag_register_v.register;;
Register_v.delete Coordinate_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Coordinate_fence_by_coordinate_tag_register_v.register;;
Register_v.delete Coordinate_son_tag_list_by_coordinate_father_tag_register_v.register;;
Register_v.delete Coordinate_symbol_by_sole_index_register_v.register;;
Register_v.delete Coordinate_tag_all_list_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Coordinate_tag_all_list_by_coordinate_context_databox_tag_register_v.register;;
Register_v.delete Coordinate_tag_subtree_by_coordinate_tag_register_v.register;;
Register_v.delete Coordinate_tag_tree_by_databox_name_n_database_name_register_v.register;;
Register_v.delete Coordinate_tag_tree_by_coordinate_context_databox_tag_register_v.register;;



(* Tracing *)

(* toplevel 
   #use "Db1pointsdata_set_body_node_aoset_numericalvalues_string_off_by_coordinate_set_body_tuple_heterogeneous_tag_provider_u_any.ml";; 

*)

open Db1pointsdata_set_body_node_aoset_numericalvalues_string_off_by_coordinate_set_body_tuple_heterogeneous_tag_provider_v;;

let nam_dbo = "Point_a";;
let nam_dba = "db1points";;

let tag_coo_l = 
    Coordinate_tag_all_list_by_databox_name_n_database_name_provider_v.provide
    (nam_dbo, nam_dba);;

(* Argument Coordinate_set_body_tuple_heterogeneous *) 

let tag_coo = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> 
      (Coordinate_symbol_v.is_coordinate_set_body_tuple_heterogeneous_constructor s)
	&&
      (Coordinate_symbol_v.string_off s = "he p 2 2")
      )
    tag_coo_l;;

(* Argumant *)

let tag_chs = Coordinate_set_body_tuple_heterogeneous_tag_v.coordinate_set_body_tuple_heterogeneous_tag_off_coordinate_tag tag_coo;;

test_number 1 (
(tag_chs :
  Coordinate_set_body_tuple_heterogeneous_symbol_t.coordinate_set_body_tuple_heterogeneous_symbol
  Tag_t.tag ) =
  (Coordinate_set_body_tuple_heterogeneous_symbol_t.Coordinate_set_body_tuple_heterogeneous_constructor
    "he p 2 2",
   [5; 22; 5; 16; 5])
);;

let soi_chs = Tag_v.sole_index_off_tag tag_chs;;

test_number 2 (
nam_dbo = Databox_name_by_any_sole_index_provider_v.provide soi_chs
);;

let sof_db1_anv_l =
  Db1pointsdata_set_body_node_aoset_numericalvalues_string_off_list_by_databox_name_provider_v.provide 
    nam_dbo ;;

test_number 3 (
(sof_db1_anv_l : string list ) =
  ["He S 1 GAUSSIAN 1"; "He S 1 GAUSSIAN 2"; "He S 2 GAUSSIAN 1";
   "He P 3 GAUSSIAN 1"; "He P 3 GAUSSIAN 2"; "He P 4 GAUSSIAN 1"]
);;

let sof_coo_l =
    Coordinate_string_off_list_by_db1pointsdata_set_body_node_aoset_numericalvalues_string_off_list_translator_v.translate
      sof_db1_anv_l;;

test_number 4 ( 
(sof_coo_l : string list ) =
  ["he s 1 1"; "he s 1 2"; "he s 2 1"; "A_A"; "he p 2 2"; "he p 3 1"]
);;

let sof_chs = Coordinate_set_body_tuple_heterogeneous_tag_v.string_off tag_chs;;

test_number 5 (
(sof_chs : string ) = 
"he p 2 2"
);;

let idx_sof_coo = List_v.index_of_element_of_list sof_chs sof_coo_l;;

test_number 6 (
(idx_sof_coo : int ) = 
4
);;
  
let sof_nnv = List.nth sof_db1_anv_l idx_sof_coo;;

test_number 7 (
(sof_nnv : string ) = 
"He P 3 GAUSSIAN 2"
);;

test_number 8 (
sof_nnv = provide tag_chs
);;
