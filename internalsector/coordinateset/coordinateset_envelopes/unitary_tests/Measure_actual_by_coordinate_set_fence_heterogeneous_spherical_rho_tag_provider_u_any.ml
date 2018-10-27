open Make_test_v;;

testing "Db1pointsdata_set_body_node_aoset_numericalvalues_tag_by_coordinate_set_body_tuple_heterogeneous_tag_provider_v with
    Db1pointsdata_set_body_node_aoset_numericalvalues_tag_by_coordinate_set_body_tuple_heterogeneous_tag_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_coordinate_context_databox_tag_register_v.register;;
Register_v.delete Coordinate_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Coordinate_fence_by_coordinate_tag_register_v.register;;
Register_v.delete Coordinate_son_tag_list_by_coordinate_father_tag_register_v.register;;
Register_v.delete Coordinate_symbol_by_sole_index_register_v.register;;
Register_v.delete Coordinate_tag_all_list_by_basicname_databox_n_basicname_databaseregister_v.register;;
Register_v.delete Coordinate_tag_all_list_by_coordinate_context_databox_tag_register_v.register;;
Register_v.delete Coordinate_tag_subtree_by_coordinate_tag_register_v.register;;
Register_v.delete Coordinate_tag_tree_by_basicname_databox_n_basicname_databaseregister_v.register;;
Register_v.delete Coordinate_tag_tree_by_coordinate_context_databox_tag_register_v.register;;



(* Tracing *)

(* toplevel 
   #use "Db1pointsdata_set_body_node_aoset_numericalvalues_tag_by_coordinate_set_body_tuple_heterogeneous_tag_provider_u_any.ml";; 

*)

open Db1pointsdata_set_body_node_aoset_numericalvalues_tag_by_coordinate_set_body_tuple_heterogeneous_tag_provider_v;;

let nam_dbo = "Point_a";;
let nam_dba = "db1points";;

let tag_coo_l = 
    Coordinate_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide
    (nam_dbo, nam_dba);;

(* Argument Coordinate_set_body_tuple_heterogeneous *) 

let tag_coo = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> 
      (Coordinate_symbol_v.is_coordinate_set_body_tuple_heterogeneous_constructor s)
	&&
      (Coordinate_symbol_v.string_off s = "he p 2 2")
      )
    tag_coo_l;;

(* Argument *)

let tag_chs = Coordinate_set_body_tuple_heterogeneous_tag_v.coordinate_set_body_tuple_heterogeneous_tag_off_coordinate_tag tag_coo;;

test_number 1 (
(tag_chs :
  Coordinate_set_body_tuple_heterogeneous_symbol_t.coordinate_set_body_tuple_heterogeneous_symbol
  Tag_t.tag ) =
  (Coordinate_set_body_tuple_heterogeneous_symbol_t.Coordinate_set_body_tuple_heterogeneous_constructor
    "he p 2 2",
   [5; 22; 5; 16; 5])
);;

let tag_db1_nan =
    Db1pointsdata_as_set_body_node_aoset_numericalvalues_tag_by_coordinate_set_body_tuple_heterogeneous_tag_provider_v.provide
      tag_chs;;

test_number 2 (
(tag_db1_nan : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag ) =
  (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
    (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
      (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_node_symbol
        (Db1pointsdata_set_body_node_symbol_t.Db1pointsdata_set_body_node_aoset_symbol
          (Db1pointsdata_set_body_node_aoset_symbol_t.Db1pointsdata_set_body_node_aoset_numericalvalues_symbol
            (Db1pointsdata_set_body_node_aoset_numericalvalues_symbol_t.Db1pointsdata_set_body_node_aoset_numericalvalues_constructor
              "He P 3 GAUSSIAN 2"))))),
   [2; 2; 3; 2; 1; 2; 2; 2; 22; 5; 20; 2])
);;

let tag_nan =
     Db1pointsdata_set_body_node_aoset_numericalvalues_tag_v.db1pointsdata_set_body_node_aoset_numericalvalues_tag_off_db1pointsdata_tag

      tag_db1_nan;;

test_number 3 (
(tag_nan :
   Db1pointsdata_set_body_node_aoset_numericalvalues_symbol_t.db1pointsdata_set_body_node_aoset_numericalvalues_symbol
   Tag_t.tag ) =
(Db1pointsdata_set_body_node_aoset_numericalvalues_symbol_t.Db1pointsdata_set_body_node_aoset_numericalvalues_constructor
   "He P 3 GAUSSIAN 2",
 [2; 2; 3; 2; 1; 2; 2; 2; 22; 5; 20; 2])
);;

test_number 4 (
tag_nan = provide tag_chs
);;
