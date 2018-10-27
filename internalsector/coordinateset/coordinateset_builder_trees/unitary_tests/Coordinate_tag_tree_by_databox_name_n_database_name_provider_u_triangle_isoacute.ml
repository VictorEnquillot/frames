open Make_test_v;;

testing "Coordinate_tag_tree_by_databox_name_n_database_name_provider_v with
    Coordinate_tag_tree_by_databox_name_n_database_name_provider_u_triangle_isoacute.ml";;

(* Deleting Registers *)

(* Tracing *)

let nam_mod = "Coordinate_tag_tree_by_databox_name_n_database_name_provider_u_triangle_isoacute";;


(* toplevel 
   #use "Coordinate_tag_tree_by_databox_name_n_database_name_provider_u_triangle_isoacute.ml";; 

*)

open Coordinate_tag_tree_by_databox_name_n_database_name_provider_v;;

let nam_dbo = "triangle_isoacute";;
let nam_dba = "db1points";;

let tag_coo_qua = Coordinate_as_context_tag_quatuor_by_databox_name_n_database_name_provider_v.provide
      (nam_dbo, nam_dba);;

test_number 1 (
(tag_coo_qua :
  Coordinate_symbol_t.coordinate_symbol Tag_t.tag Quatuor_t.quatuor ) =
  ((Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_databox_symbol
       (Coordinate_context_databox_symbol_t.Coordinate_context_databox_constructor
         "triangle_isoacute")),
    [19; 1; 6; 5]),
   (Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_database_symbol
       (Coordinate_context_database_symbol_t.Coordinate_context_database_constructor
         "db1points")),
    [1; 6; 5]),
   (Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_domain_symbol
       (Coordinate_context_domain_symbol_t.Coordinate_context_domain_constructor
         "coordinate")),
    [6; 5]),
   (Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_sector_symbol
       (Coordinate_context_sector_symbol_t.Coordinate_context_sector_constructor
         "internal")),
    [5]))
);;

 let (tag_coo_cbo, tag_coo_cba, tag_coo_ccd, tag_coo_ccs) = tag_coo_qua;;

let sym_coo_cbo_st =
  Coordinate_symbol_subtree_by_databox_name_n_database_name_provider_v.provide
    (nam_dbo, nam_dba)
;;

let sym_coo_rtn_l = Tree_v.root_topson_node_list_off_tree sym_coo_cbo_st;;

test_number 2 (
( sym_coo_rtn_l : Coordinate_symbol_t.coordinate_symbol list ) =
  [Coordinate_symbol_t.Coordinate_context_symbol
    (Coordinate_context_symbol_t.Coordinate_context_databox_symbol
      (Coordinate_context_databox_symbol_t.Coordinate_context_databox_constructor
        "Point_a"));
   Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
    (Coordinate_body_symbol_t.Coordinate_body_tuple_symbol
      (Coordinate_body_tuple_symbol_t.Coordinate_body_tuple_heterogeneous_symbol
        (Coordinate_body_tuple_heterogeneous_symbol_t.Coordinate_body_tuple_heterogeneous_spherical_symbol
          (Coordinate_body_tuple_heterogeneous_spherical_symbol_t.Coordinate_body_tuple_heterogeneous_spherical_constructor
            "A_A"))))]
);;

let soi_coo_cbo = Tag_v.sole_index_off_tag tag_coo_cbo;;

test_number 3 (
(soi_coo_cbo : Sole_index_t.sole_index ) = 
[10; 1; 6; 5]
);;

let soi_coo_cbo_st =
  Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
    sym_coo_cbo_st 
    soi_coo_cbo 
;;

test_number 4 (
(soi_coo_cbo_st : Sole_index_t.sole_index Tree_t.tree ) =
  Tree_t.Inner ([10; 1; 6; 5],
   [Tree_t.Inner ([1; 10; 1; 6; 5],
     [Tree_t.Leaf [1; 1; 10; 1; 6; 5]; Tree_t.Leaf [2; 1; 10; 1; 6; 5];
      Tree_t.Leaf [3; 1; 10; 1; 6; 5]])])
);;

let soi_coo_rtn_l = Tree_v.root_topson_node_list_off_tree soi_coo_cbo_st;;

let tag_coo_cbo_st = Tree_v.map2 Tag_v.make sym_coo_cbo_st soi_coo_cbo_st;;
  
let tag_coo_cba_st = Tree_v.make_of_node tag_coo_cba [tag_coo_cbo_st];;
  
let tag_coo_ccd_st = Tree_v.make_of_node tag_coo_ccd [tag_coo_cba_st];;
 
let tag_coo_t = Tree_v.make_of_node tag_coo_ccs [tag_coo_ccd_st];;

(* Analysis *)

let tag_coo_rtn_l = Tree_v.root_topson_node_list_off_tree tag_coo_t;;

test_number 5 (
(tag_coo_rtn_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
  [(Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_sector_symbol
       (Coordinate_context_sector_symbol_t.Coordinate_context_sector_constructor
         "internal")),
    [5]);
   (Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_domain_symbol
       (Coordinate_context_domain_symbol_t.Coordinate_context_domain_constructor
         "coordinate")),
    [6; 5])]
);;

let tag_coo_top_l = Tree_v.node_list_of_node_predicate_off_tree (fun (s, i) -> List.length i <= 5) tag_coo_t;;

test_number 6 (
(tag_coo_top_l : Coordinate_symbol_t.coordinate_symbol Tag_t.tag list ) =
 [(Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_sector_symbol
       (Coordinate_context_sector_symbol_t.Coordinate_context_sector_constructor
         "internal")),
    [5]);
   (Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_domain_symbol
       (Coordinate_context_domain_symbol_t.Coordinate_context_domain_constructor
         "coordinate")),
    [6; 5]);
   (Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_database_symbol
       (Coordinate_context_database_symbol_t.Coordinate_context_database_constructor
         "db1points")),
    [1; 6; 5]);
   (Coordinate_symbol_t.Coordinate_context_symbol
     (Coordinate_context_symbol_t.Coordinate_context_databox_symbol
       (Coordinate_context_databox_symbol_t.Coordinate_context_databox_constructor
         "Point_a")),
    [10; 1; 6; 5]);
   (Coordinate_symbol_t.Coordinate_set_symbol (Coordinate_set_symbol_t.Coordinate_set_body_symbol
     (Coordinate_body_symbol_t.Coordinate_body_tuple_symbol
       (Coordinate_body_tuple_symbol_t.Coordinate_body_tuple_heterogeneous_symbol
         (Coordinate_body_tuple_heterogeneous_symbol_t.Coordinate_body_tuple_heterogeneous_spherical_symbol
           (Coordinate_body_tuple_heterogeneous_spherical_symbol_t.Coordinate_body_tuple_heterogeneous_spherical_constructor
             "A_A")))),
    [1; 10; 1; 6; 5])]
);;

test_number 7 (
tag_coo_t = provide (nam_dbo, nam_dba)
);;
