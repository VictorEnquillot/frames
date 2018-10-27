open Make_test_v;;

testing "Db1pointsdata_father_tag_by_db1pointsdata_son_tag_provider_v with
    Db1pointsdata_father_tag_by_db1pointsdata_son_tag_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Db1pointsdata_father_tag_by_db1pointsdata_son_tag_provider_u_any.ml";; 

*)

open Db1pointsdata_father_tag_by_db1pointsdata_son_tag_provider_v;;

let nam_dbo = "Point_a";;
let tag_db1_l = Db1pointsdata_tag_all_list_by_basicname_databox_provider_v.provide nam_dbo;;

let tag_db1_srv = List_v.only_element_of_predicate_off_list
    (fun (s, i) -> (Db1pointsdata_symbol_v.string_off s = "A_A") 
	&& (Db1pointsdata_symbol_v.is_db1pointsdata_set_body_record_vertex_constructor s)
    )
    tag_db1_l;;

test_number 1 (
(tag_db1_srv : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag ) =
  (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
    (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
      (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_record_symbol
        (Db1pointsdata_set_body_record_symbol_t.Db1pointsdata_set_body_record_vertex_symbol
          (Db1pointsdata_set_body_record_vertex_symbol_t.Db1pointsdata_set_body_record_vertex_constructor
            "A_A")))),
   [1; 2; 10; 1; 7; 2])
);;

(* Argument *)

let tag_db1 = tag_db1_srv;;

let soi_db1 = Tag_v.sole_index_off_tag tag_db1;;

test_number 2 (
(soi_db1 : Sole_index_t.sole_index ) = 
[1; 2; 10; 1; 7; 2]
);;

let soi_fat = Sole_index_v.father_sole_index_off_sole_index soi_db1;;

test_number 3 (
(soi_fat : Sole_index_t.sole_index ) = 
[2; 10; 1; 7; 2]
);;

let sym_db1_fat = 
    Db1pointsdata_symbol_by_sole_index_provider_v.provide
      soi_fat;;

test_number 4 (
( sym_db1_fat : Db1pointsdata_symbol_t.db1pointsdata_symbol ) =
  Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
   (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
     (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
       (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_vertex_symbol
         (Db1pointsdata_set_body_cluster_vertex_symbol_t.Db1pointsdata_set_body_cluster_vertex_constructor
           "A"))))
);;

let tag_db1_fat = Tag_v.make sym_db1_fat soi_fat;;

test_number 5 (
(tag_db1_fat : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag ) =
  (Db1pointsdata_symbol_t.Db1pointsdata_set_symbol
    (Db1pointsdata_set_symbol_t.Db1pointsdata_set_body_symbol
      (Db1pointsdata_set_body_symbol_t.Db1pointsdata_set_body_cluster_symbol
        (Db1pointsdata_set_body_cluster_symbol_t.Db1pointsdata_set_body_cluster_vertex_symbol
          (Db1pointsdata_set_body_cluster_vertex_symbol_t.Db1pointsdata_set_body_cluster_vertex_constructor
            "A")))),
   [2; 10; 1; 7; 2])
);;

test_number 6 (
tag_db1_fat = provide tag_db1
);;
