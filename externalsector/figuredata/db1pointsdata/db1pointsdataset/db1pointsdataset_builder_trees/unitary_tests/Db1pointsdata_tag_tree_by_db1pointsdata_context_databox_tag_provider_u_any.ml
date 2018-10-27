open Make_test_v;;

testing "Db1pointsdata_tag_tree_by_db1pointsdata_context_databox_tag_provider_v with
    Db1pointsdata_tag_tree_by_db1pointsdata_context_databox_tag_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Db1pointsdata_tag_tree_by_db1pointsdata_context_databox_tag_provider_u_any.ml";; 

*)

open Db1pointsdata_tag_tree_by_db1pointsdata_context_databox_tag_provider_v;;

let nam_dbo = "Point_a";;
let nam_mod = "Db1pointsdata_tag_tree_by_db1pointsdata_context_databox_tag_provider_u_any";;

let (tag_db1_dbo, tag_db1_dba, tag_db1_dcd, tag_db1_dcs) =
    Db1pointsdata_as_context_tag_quatuor_by_basicname_databox_provider_v.provide
      nam_dbo;;

let tag_db1_q = (tag_db1_dbo, tag_db1_dba, tag_db1_dcd, tag_db1_dcs);;

test_number 1 (
(tag_db1_q :
  Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag *
  Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag *
  Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag *
  Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag ) =
  ((Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
     (Db1pointsdata_context_symbol_t.Db1pointsdata_context_databox_symbol
       (Db1pointsdata_context_databox_symbol_t.Db1pointsdata_context_databox_constructor
         "Point_a")),
    [10; 1; 7; 2]),
   (Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
     (Db1pointsdata_context_symbol_t.Db1pointsdata_context_database_symbol
       (Db1pointsdata_context_database_symbol_t.Db1pointsdata_context_database_constructor
         "db1points")),
    [1; 7; 2]),
   (Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
     (Db1pointsdata_context_symbol_t.Db1pointsdata_context_domain_symbol
       (Db1pointsdata_context_domain_symbol_t.Db1pointsdata_context_domain_constructor
         "figure")),
    [7; 2]),
   (Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
     (Db1pointsdata_context_symbol_t.Db1pointsdata_context_sector_symbol
       (Db1pointsdata_context_sector_symbol_t.Db1pointsdata_context_sector_constructor
         "external")),
    [2]))
);;

let sym_db1_dbo_st =
  Db1pointsdata_symbol_subtree_by_basicname_databox_provider_v.provide
    nam_dbo;;

let sym_db1_rtl = Tree_v.root_topson_node_list_off_tree sym_db1_dbo_st;;

test_number 2 (
( sym_db1_rtl : Db1pointsdata_symbol_t.db1pointsdata_symbol list ) =
  [Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
    (Db1pointsdata_context_symbol_t.Db1pointsdata_context_databox_symbol
      (Db1pointsdata_context_databox_symbol_t.Db1pointsdata_context_databox_constructor
        "Point_a"));
   Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
    (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
      (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
        (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_information_symbol
          (Db1pointsdata_set_body_cluster_information_symbol_t.Db1pointsdata_set_body_cluster_information_constructor
            "A"))));
   Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
    (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
      (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
        (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_vertex_symbol
          (Db1pointsdata_set_body_cluster_vertex_symbol_t.Db1pointsdata_set_body_cluster_vertex_constructor
            "A"))))]
);;

let soi_db1_dbo = Tag_v.sole_index_off_tag tag_db1_dbo;;

test_number 3 (
(soi_db1_dbo : Sole_index_t.sole_index ) = 
[10; 1; 7; 2]
);;

let soi_db1_dbo_st =
  Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
    sym_db1_dbo_st 
    soi_db1_dbo 
;;

let soi_db1_rtl = Tree_v.root_topson_node_list_off_tree soi_db1_dbo_st;;

test_number 4 (
(soi_db1_rtl : Sole_index_t.sole_index list ) =
[[10; 1; 7; 2]; 
 [1; 10; 1; 7; 2]; 
 [2; 10; 1; 7; 2]]
);;

let tag_db1_dbo_st = Tree_v.map2 Tag_v.make sym_db1_dbo_st soi_db1_dbo_st;;
  
let tag_db1_dba_st = Tree_v.make_of_node tag_db1_dba [tag_db1_dbo_st];;
  
let tag_db1_dcd_st = Tree_v.make_of_node tag_db1_dcd [tag_db1_dba_st];;
 
let tag_db1_t = Tree_v.make_of_node tag_db1_dcs [tag_db1_dcd_st];;

(* Analysis *)

let tag_db1_rtl = Tree_v.root_topson_node_list_off_tree tag_db1_t;;

test_number 5 (
(tag_db1_rtl : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag list ) =
  [(Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
     (Db1pointsdata_context_symbol_t.Db1pointsdata_context_sector_symbol
       (Db1pointsdata_context_sector_symbol_t.Db1pointsdata_context_sector_constructor
         "external")),
    [2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
     (Db1pointsdata_context_symbol_t.Db1pointsdata_context_domain_symbol
       (Db1pointsdata_context_domain_symbol_t.Db1pointsdata_context_domain_constructor
         "figure")),
    [7; 2])]
);;

let tag_db1_top_l = Tree_v.node_list_of_node_predicate_off_tree (fun (s, i) -> List.length i <= 5) tag_db1_t;;

test_number 6 (
(tag_db1_top_l : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag list ) =
  [(Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
     (Db1pointsdata_context_symbol_t.Db1pointsdata_context_sector_symbol
       (Db1pointsdata_context_sector_symbol_t.Db1pointsdata_context_sector_constructor
         "external")),
    [2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
     (Db1pointsdata_context_symbol_t.Db1pointsdata_context_domain_symbol
       (Db1pointsdata_context_domain_symbol_t.Db1pointsdata_context_domain_constructor
         "figure")),
    [7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
     (Db1pointsdata_context_symbol_t.Db1pointsdata_context_database_symbol
       (Db1pointsdata_context_database_symbol_t.Db1pointsdata_context_database_constructor
         "db1points")),
    [1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
     (Db1pointsdata_context_symbol_t.Db1pointsdata_context_databox_symbol
       (Db1pointsdata_context_databox_symbol_t.Db1pointsdata_context_databox_constructor
         "Point_a")),
    [10; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
       (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
         (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_information_symbol
           (Db1pointsdata_set_body_cluster_information_symbol_t.Db1pointsdata_set_body_cluster_information_constructor
             "A")))),
    [1; 10; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
       (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
         (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_vertex_symbol
           (Db1pointsdata_set_body_cluster_vertex_symbol_t.Db1pointsdata_set_body_cluster_vertex_constructor
             "A")))),
    [2; 10; 1; 7; 2])]
);;

let tag_db1_lea_l = Tree_v.leaf_node_list_off_tree tag_db1_t;;
let tag_db1_fen_l = List.filter (fun (s, i) -> (Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_symbol_off_db1pointsdata_symbol s)) tag_db1_lea_l;;

let tag_db1_fen = List_v.only_element_of_predicate_off_list 
    (fun (s, i) -> (Db1pointsdata_symbol_v.is_db1pointsdata_set_fence_basic_numerical_float_constructor s)
	&& (Sole_index_v.head_index i = 2 )
    ) tag_db1_fen_l ;;

test_number 7 (
( tag_db1_fen : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag ) =
  (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
    (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
      (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
        (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
          (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
            (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
	       "0.785398163397448279"))))),
   [2; 3; 1; 2; 10; 1; 7; 2])
);;

let tag_pat = List.rev (Tree_v.path_of_node_predicate_off_tree (fun t -> t = tag_db1_fen) tag_db1_t);;

test_number 8 (
( tag_pat : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag list ) =
  [(Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
     (Db1pointsdata_context_symbol_t.Db1pointsdata_context_sector_symbol
       (Db1pointsdata_context_sector_symbol_t.Db1pointsdata_context_sector_constructor
         "external")),
    [2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
     (Db1pointsdata_context_symbol_t.Db1pointsdata_context_domain_symbol
       (Db1pointsdata_context_domain_symbol_t.Db1pointsdata_context_domain_constructor
         "figure")),
    [7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
     (Db1pointsdata_context_symbol_t.Db1pointsdata_context_database_symbol
       (Db1pointsdata_context_database_symbol_t.Db1pointsdata_context_database_constructor
         "db1points")),
    [1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
     (Db1pointsdata_context_symbol_t.Db1pointsdata_context_databox_symbol
       (Db1pointsdata_context_databox_symbol_t.Db1pointsdata_context_databox_constructor
         "Point_a")),
    [10; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
       (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
         (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_vertex_symbol
           (Db1pointsdata_set_body_cluster_vertex_symbol_t.Db1pointsdata_set_body_cluster_vertex_constructor
             "A")))),
    [2; 10; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
       (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_record_symbol
         (Db1pointsdata_set_body_record_symbol_t.Db1pointsdata_set_body_record_vertex_symbol
           (Db1pointsdata_set_body_record_vertex_symbol_t.Db1pointsdata_set_body_record_vertex_constructor
             "A_A")))),
    [1; 2; 10; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
       (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_sequence_symbol
         (Db1pointsdata_set_body_sequence_symbol_t.Db1pointsdata_set_body_sequence_float_symbol
           (Db1pointsdata_set_body_sequence_float_symbol_t.Db1pointsdata_set_body_sequence_float_constructor
             "A_A")))),
    [3; 1; 2; 10; 1; 7; 2]);
   (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
     (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
       (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
         (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
           (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
             (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
               "0.785398163397448279"))))),
    [2; 3; 1; 2; 10; 1; 7; 2])]
);;

let sof_dsf = "A_A";;
let tag_db1_dsf_st = Tree_v.only_subtree_of_node_predicate_off_tree 
    (fun (s, i) -> (Db1pointsdata_symbol_v.is_db1pointsdata_set_body_sequence_float_constructor s) 
	&& (Db1pointsdata_symbol_v.string_off s  = sof_dsf) 
    ) tag_db1_t;;

test_number 9 (
( tag_db1_dsf_st :
  Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag Tree_t.tree ) =
  Tree_t.Inner
   ((Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
      (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
        (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_sequence_symbol
          (Db1pointsdata_set_body_sequence_symbol_t.Db1pointsdata_set_body_sequence_float_symbol
            (Db1pointsdata_set_body_sequence_float_symbol_t.Db1pointsdata_set_body_sequence_float_constructor
              "A_A")))),
     [3; 1; 2; 10; 1; 7; 2]),
   [Tree_t.Leaf
     (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
       (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
         (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
           (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
             (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
               (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
                 "1."))))),
      [1; 3; 1; 2; 10; 1; 7; 2]);
    Tree_t.Leaf
     (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
       (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
         (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
           (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
             (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
               (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
                 "0.785398163397448279"))))),
      [2; 3; 1; 2; 10; 1; 7; 2]);
    Tree_t.Leaf
     (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
       (Db1pointsdata_set_symbol_t.Db1pointsdata_set_fence_symbol
         (Db1pointsdata_set_fence_symbol_t.Db1pointsdata_set_fence_basic_symbol
           (Db1pointsdata_set_fence_basic_symbol_t.Db1pointsdata_set_fence_basic_numerical_symbol
             (Db1pointsdata_set_fence_basic_numerical_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_symbol
               (Db1pointsdata_set_fence_basic_numerical_float_symbol_t.Db1pointsdata_set_fence_basic_numerical_float_constructor
                 "0.785398163397448279"))))),
      [3; 3; 1; 2; 10; 1; 7; 2])])
);;

