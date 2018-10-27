open Make_test_v;;

testing "Db1pointsdata_as_context_sector_tag_by_unit_provider_v with
        Db1pointsdata_as_context_sector_tag_by_unit_provider_u_any.ml";;

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
   #use "Db1pointsdata_as_context_sector_tag_by_unit_provider_u_any.ml";; 

*)

open Db1pointsdata_as_context_sector_tag_by_unit_provider_v;;
  
let nam_sec = Db1pointsdata_context_sector_name_by_unit_provider_v.provide ();;

test_number 1 (
(nam_sec : string) = 
"external" 
);;

let soi_sec = 
  Context_sole_index_by_sector_name_provider_v.provide 
    nam_sec 
;;
  
test_number 2 (
(soi_sec : int list ) = 
[2]
);;

let sym_db1_ncs = 
  Db1pointsdata_symbol_v.db1pointsdata_context_sector_constructor 
    nam_sec 
;;

test_number 3 (
(sym_db1_ncs : Db1pointsdata_symbol_t.db1pointsdata_symbol ) =
  Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
   (Db1pointsdata_context_symbol_t.Db1pointsdata_context_sector_symbol
     (Db1pointsdata_context_sector_symbol_t.Db1pointsdata_context_sector_constructor
       "external"))
);;
 
let tag_db1_dcs = Tag_v.make sym_db1_ncs soi_sec;;

test_number 4 (
(tag_db1_dcs : Db1pointsdata_symbol_t.db1pointsdata_symbol Tag_t.tag ) =
  (Db1pointsdata_symbol_t.Db1pointsdata_context_symbol
    (Db1pointsdata_context_symbol_t.Db1pointsdata_context_sector_symbol
      (Db1pointsdata_context_sector_symbol_t.Db1pointsdata_context_sector_constructor
        "external")),
   [2])
);;

test_number 5 (
tag_db1_dcs = provide ()
);;
