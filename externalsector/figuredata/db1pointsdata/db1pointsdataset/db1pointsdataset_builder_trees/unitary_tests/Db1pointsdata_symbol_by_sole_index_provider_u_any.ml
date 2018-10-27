open Make_test_v;;

testing "Db1pointsdata_symbol_by_sole_index_provider_v with
    Db1pointsdata_symbol_by_sole_index_provider_u_any.ml";;

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
   #use "Db1pointsdata_symbol_by_sole_index_provider_u_any.ml";; 

*)

open Db1pointsdata_symbol_by_sole_index_provider_v;;

let nam_dbo = "Point_a";;
let tag_db1_l = Db1pointsdata_tag_all_list_by_basicname_databox_provider_v.provide nam_dbo;;

let tag_db1 = List.find (fun (s, i) -> Db1pointsdata_symbol_v.string_off s = "0.785398163397448279") tag_db1_l;;

test_number 1 (
(tag_db1 : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag ) =
  (Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
    (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
      (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_numerical_symbol
        (Db1pointsdata_fence_basic_numerical_symbol_t.Db1pointsdata_fence_basic_numerical_float_symbol
          (Db1pointsdata_fence_basic_numerical_float_symbol_t.Db1pointsdata_fence_basic_numerical_float_constructor
            "0.785398163397448279")))),
   [2; 3; 1; 2; 5; 1; 7; 2])
);;

let soi_db1 = Tag_v.sole_index_off_tag tag_db1;;

test_number 2 (
(soi_db1 : Sole_index_t.sole_index ) =
 [2; 3; 1; 2; 5; 1; 7; 2]
);;

let sym_db1 = Db1pointsdata_symbol_by_sole_index_register_v.retrieve nam_mod soi_db1;;

test_number 3 (
(sym_db1 : Db1pointsdata_symbol_t.db1pointsdata_symbol ) =
  Db1pointsdata_symbol_t.Db1pointsdata_fence_symbol
   (Db1pointsdata_fence_symbol_t.Db1pointsdata_fence_basic_symbol
     (Db1pointsdata_fence_basic_symbol_t.Db1pointsdata_fence_basic_numerical_symbol
       (Db1pointsdata_fence_basic_numerical_symbol_t.Db1pointsdata_fence_basic_numerical_float_symbol
         (Db1pointsdata_fence_basic_numerical_float_symbol_t.Db1pointsdata_fence_basic_numerical_float_constructor
           "0.785398163397448279"))))
);;

test_number 4 (
sym_db1 = provide soi_db1
);;
