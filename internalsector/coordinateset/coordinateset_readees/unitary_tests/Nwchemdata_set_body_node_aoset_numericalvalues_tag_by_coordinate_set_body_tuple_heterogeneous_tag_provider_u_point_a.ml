open Make_test_v;;

testing "Db1pointsdata_set_body_node_aoset_numericalvalues_tag_by_coordinate_set_body_tuple_heterogeneous_tag_provider_v with
    Db1pointsdata_set_body_node_aoset_numericalvalues_tag_by_coordinate_set_body_tuple_heterogeneous_tag_provider_u_point_a.ml";;

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
   #use "Db1pointsdata_set_body_node_aoset_numericalvalues_tag_by_coordinate_set_body_tuple_heterogeneous_tag_provider_u_point_a.ml";; 

*)

open Db1pointsdata_set_body_node_aoset_numericalvalues_tag_by_coordinate_set_body_tuple_heterogeneous_tag_provider_v;;

let nam_dbo = "cc_pVTZ";;
let nam_dba = "db1points";;

let tag_coo_l = 
    Coordinate_tag_all_list_by_databox_name_n_database_name_provider_v.provide
    (nam_dbo, nam_dba);;

(* Argument Coordinate_set_body_tuple_heterogeneous *) 

let tag_coo = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> 
      (Coordinate_symbol_v.is_coordinate_set_body_tuple_heterogeneous_constructor s)
	&&
      (Coordinate_symbol_v.string_off s = "ne p 2 2")
      )
    tag_coo_l;;

(* Argument *)

let tag_chs = Coordinate_set_body_tuple_heterogeneous_tag_v.coordinate_set_body_tuple_heterogeneous_tag_off_coordinate_tag tag_coo;;

test_number 1 (
(tag_chs :
  Coordinate_set_body_tuple_heterogeneous_symbol_t.coordinate_set_body_tuple_heterogeneous_symbol
  Tag_t.tag ) =
  (Coordinate_set_body_tuple_heterogeneous_symbol_t.Coordinate_set_body_tuple_heterogeneous_constructor
    "ne p 2 2",
   [157; 13; 5; 16; 5])
);;

let soi_chs = Tag_v.sole_index_off_tag tag_chs;;

test_number 2 (
nam_dbo = Databox_name_by_any_sole_index_provider_v.provide soi_chs
);;

let sof_nnv = 
    Db1pointsdata_set_body_node_aoset_numericalvalues_string_off_by_coordinate_set_body_tuple_heterogeneous_tag_provider_v.provide
      tag_chs;;

test_number 3 (
(sof_nnv : string ) = 
"Ne P 4 GAUSSIAN 2"
);;

let sof_chs = Coordinate_set_body_tuple_heterogeneous_tag_v.string_off tag_chs;;

test_number 4 (
(sof_chs : string ) = 
"ne p 2 2"
);;

let tag_db1_l =
    Db1pointsdata_as_set_body_node_aoset_numericalvalues_tag_list_by_databox_name_provider_v.provide
      nam_dbo;;

let tag_db1_sl = List.filter
    (fun t -> String.sub (Db1pointsdata_tag_v.string_off t) 0 5 = "Ne P ")
    tag_db1_l;;

test_number 5 (
(tag_db1_sl : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag list ) =
  [(Db1pointsdata_symbol_t.Db1pointsdata_body_symbol
     (Db1pointsdata_body_symbol_t.Db1pointsdata_set_body_node_symbol
       (Db1pointsdata_set_body_node_symbol_t.Db1pointsdata_set_body_node_aoset_numericalvalues
         "Ne P 4 GAUSSIAN 1")),
    [1; 2; 4; 2; 10; 2; 2; 2; 13; 5; 20; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_body_symbol
     (Db1pointsdata_body_symbol_t.Db1pointsdata_set_body_node_symbol
       (Db1pointsdata_set_body_node_symbol_t.Db1pointsdata_set_body_node_aoset_numericalvalues
         "Ne P 4 GAUSSIAN 2")),
    [2; 2; 4; 2; 10; 2; 2; 2; 13; 5; 20; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_body_symbol
     (Db1pointsdata_body_symbol_t.Db1pointsdata_set_body_node_symbol
       (Db1pointsdata_set_body_node_symbol_t.Db1pointsdata_set_body_node_aoset_numericalvalues
         "Ne P 4 GAUSSIAN 3")),
    [3; 2; 4; 2; 10; 2; 2; 2; 13; 5; 20; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_body_symbol
     (Db1pointsdata_body_symbol_t.Db1pointsdata_set_body_node_symbol
       (Db1pointsdata_set_body_node_symbol_t.Db1pointsdata_set_body_node_aoset_numericalvalues
         "Ne P 5 GAUSSIAN 1")),
    [1; 2; 5; 2; 10; 2; 2; 2; 13; 5; 20; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_body_symbol
     (Db1pointsdata_body_symbol_t.Db1pointsdata_set_body_node_symbol
       (Db1pointsdata_set_body_node_symbol_t.Db1pointsdata_set_body_node_aoset_numericalvalues
         "Ne P 6 GAUSSIAN 1")),
    [1; 2; 6; 2; 10; 2; 2; 2; 13; 5; 20; 2])]
);;
  
let tag_db1_nnv = List_v.only_element_of_predicate_off_list
    (fun t -> Db1pointsdata_tag_v.string_off t = sof_nnv)
    tag_db1_l;;

let tag_nbn = Db1pointsdata_set_body_node_tag_v.db1pointsdata_set_body_node_tag_off_db1pointsdata_tag tag_db1_nnv;;
    
test_number 6 (
tag_nbn :
  Db1pointsdata_set_body_node_symbol_t.db1pointsdata_set_body_node_symbol Tag_t.tag =
  (Db1pointsdata_set_body_node_symbol_t.Db1pointsdata_set_body_node_aoset_numericalvalues
    "Ne P 4 GAUSSIAN 2",
   [2; 2; 4; 2; 10; 2; 2; 2; 13; 5; 20; 2])
);;

test_number 7 (
tag_nbn = provide tag_chs
);;
