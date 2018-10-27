open Make_test_v;;

testing "Db1pointsdata_context_basicname_databox_by_any_sole_index_provider_v with
    Db1pointsdata_context_basicname_databox_by_any_sole_index_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Basicname_databox_n_database_name_by_db1pointsdata_context_databox_tag_register_v.register;;
Register_v.delete Db1pointsdata_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Db1pointsdata_fence_by_db1pointsdata_tag_register_v.register;;
Register_v.delete Db1pointsdata_son_tag_list_by_db1pointsdata_father_tag_register_v.register;;
Register_v.delete Db1pointsdata_symbol_by_sole_index_register_v.register;;
Register_v.delete Db1pointsdata_symbol_subtree_by_basicname_databox_register_v.register;;
Register_v.delete Db1pointsdata_tag_all_list_by_basicname_databox_register_v.register;;
Register_v.delete Db1pointsdata_tag_all_list_by_db1pointsdata_context_databox_tag_register_v.register;;
Register_v.delete Db1pointsdata_tag_subtree_by_db1pointsdata_tag_register_v.register;;
Register_v.delete Db1pointsdata_tag_tree_by_basicname_databox_register_v.register;;


(* Tracing *)


(* toplevel 
   #use "Db1pointsdata_context_basicname_databox_by_any_sole_index_provider_u_any.ml";; 

*)


open Db1pointsdata_context_basicname_databox_by_any_sole_index_provider_v;;

let nam_dbo = "Point_a";;

let tag_db1_t = Db1pointsdata_tag_tree_by_basicname_databox_provider_v.provide nam_dbo;;
let tag_db1_l = Db1pointsdata_tag_all_list_by_basicname_databox_provider_v.provide nam_dbo;;
let soi_db1_l = Doublet_list_v.right_list_off_doublet_list tag_db1_l;;

test_number 1 (
(soi_db1_l : Sole_index_t.sole_index list ) =
  [[2];
   [7; 2];
   [1; 7; 2];
   [5; 1; 7; 2];
   [1; 5; 1; 7; 2];
   [1; 1; 5; 1; 7; 2];
   [1; 1; 1; 5; 1; 7; 2];
   [1; 1; 1; 1; 5; 1; 7; 2];
   [2; 1; 1; 5; 1; 7; 2];
   [1; 2; 1; 1; 5; 1; 7; 2];
   [3; 1; 1; 5; 1; 7; 2];
   [1; 3; 1; 1; 5; 1; 7; 2];
   [2; 1; 5; 1; 7; 2];
   [1; 2; 1; 5; 1; 7; 2];
   [1; 1; 2; 1; 5; 1; 7; 2];
   [2; 2; 1; 5; 1; 7; 2];
   [1; 2; 2; 1; 5; 1; 7; 2];
   [2; 5; 1; 7; 2];
   [1; 2; 5; 1; 7; 2];
   [1; 1; 2; 5; 1; 7; 2];
   [2; 1; 2; 5; 1; 7; 2];
   [3; 1; 2; 5; 1; 7; 2];
   [1; 3; 1; 2; 5; 1; 7; 2];
   [2; 3; 1; 2; 5; 1; 7; 2];
   [3; 3; 1; 2; 5; 1; 7; 2]]
);;

let soi_any = List.nth soi_db1_l 7;;

test_number 2 (
soi_any = [1; 1; 1; 1; 5; 1; 7; 2]
);;

let soi_dbo = Db1pointsdata_context_databox_sole_index_by_any_sole_index_provider_v.provide
      soi_any;;

test_number 3 (
(soi_dbo : int list ) =
[5; 1; 7; 2]
);;


let ord_dbo = List.hd soi_dbo;; 

test_number 4 (
nam_dbo = Basicname_databox_by_ordinal_provider_v.provide ord_dbo
);;

test_number 5 (
nam_dbo = provide soi_any
);;
