open Make_test_v;;

testing "Nwchemdata_context_databox_sole_index_by_any_sole_index_provider_v with
    Nwchemdata_context_databox_sole_index_by_any_sole_index_provider_u_any.ml";;

(* Deleting Registers *)
Register_v.delete Databox_name_n_database_name_by_nwchemdata_context_databox_tag_register_v.register;;
Register_v.delete Nwchemdata_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Nwchemdata_set_fence_by_nwchemdata_tag_register_v.register;;
Register_v.delete Nwchemdata_son_tag_list_by_nwchemdata_father_tag_register_v.register;;
Register_v.delete Nwchemdata_symbol_by_sole_index_register_v.register;;
Register_v.delete Nwchemdata_symbol_subtree_by_databox_name_register_v.register;;
Register_v.delete Nwchemdata_tag_all_list_by_databox_name_register_v.register;;
Register_v.delete Nwchemdata_tag_all_list_by_nwchemdata_context_databox_tag_register_v.register;;
Register_v.delete Nwchemdata_tag_subtree_by_nwchemdata_tag_register_v.register;;
Register_v.delete Nwchemdata_tag_tree_by_databox_name_register_v.register;;

(* Tracing *)


(* toplevel 
   #use "Nwchemdata_context_databox_sole_index_by_any_sole_index_provider_u_any.ml";; 

*)


open Nwchemdata_context_databox_sole_index_by_any_sole_index_provider_v;;

let nam_nbo = "cc_pVTZ";;

let tag_nwc_l = Nwchemdata_tag_all_list_by_databox_name_provider_v.provide nam_nbo;;
let soi_nwc_l = Doublet_list_v.right_list_off_doublet_list tag_nwc_l;;
let soi_nwc_al = List.filter 
    (fun i -> (List.length i > 12) && (List.hd i = 1) && (List.nth i 1 = 2))
    (Doublet_list_v.right_list_off_doublet_list tag_nwc_l);;

test_number 1 (
(soi_nwc_al : Sole_index_t.sole_index list ) =
  [[1; 2; 2; 1; 2; 1; 2; 2; 2; 13; 5; 20; 2];
   [1; 2; 2; 1; 2; 2; 2; 2; 2; 13; 5; 20; 2];
   [1; 2; 2; 1; 2; 3; 2; 2; 2; 13; 5; 20; 2];
   [1; 2; 2; 4; 2; 3; 2; 2; 2; 13; 5; 20; 2];
   [1; 2; 2; 1; 2; 4; 2; 2; 2; 13; 5; 20; 2];
   [1; 2; 2; 4; 2; 4; 2; 2; 2; 13; 5; 20; 2];
   [1; 2; 2; 1; 2; 5; 2; 2; 2; 13; 5; 20; 2];
   [1; 2; 2; 4; 2; 5; 2; 2; 2; 13; 5; 20; 2];
   [1; 2; 2; 1; 2; 6; 2; 2; 2; 13; 5; 20; 2];
   [1; 2; 2; 4; 2; 6; 2; 2; 2; 13; 5; 20; 2];
   [1; 2; 2; 1; 2; 7; 2; 2; 2; 13; 5; 20; 2];
   [1; 2; 2; 4; 2; 7; 2; 2; 2; 13; 5; 20; 2];
   [1; 2; 2; 1; 2; 8; 2; 2; 2; 13; 5; 20; 2];
   [1; 2; 2; 4; 2; 8; 2; 2; 2; 13; 5; 20; 2];
   [1; 2; 2; 1; 2; 9; 2; 2; 2; 13; 5; 20; 2];
   [1; 2; 2; 4; 2; 9; 2; 2; 2; 13; 5; 20; 2];
   [1; 2; 2; 1; 2; 10; 2; 2; 2; 13; 5; 20; 2];
   [1; 2; 2; 4; 2; 10; 2; 2; 2; 13; 5; 20; 2]]
);;

let soi_any = List.nth soi_nwc_al 5;;

test_number 2 (
(soi_any : Sole_index_t.sole_index ) =
  [1; 2; 2; 4; 2; 4; 2; 2; 2; 13; 5; 20; 2]
);;

let nam_con_t = Nwchemdata_context_name_trio_by_unit_provider_v.provide () ;;

test_number 3 (
(nam_con_t : string Trio_t.trio ) = 
("nwchem", "skeleton", "external")
);;

let soi_con = Context_sole_index_by_context_name_trio_provider_v.provide nam_con_t ;;

test_number 4 (
(soi_con : int list) = 
[5; 20; 2]
);;

let soi_qua = List_v.last_elements_of_int_of_list 4 soi_any;;

test_number 5 (
(soi_qua : int list ) = 
[13; 5; 20; 2]
);;

let boo = List_v.are_included_of_small_list_of_big_list soi_con soi_qua;; 

test_number 6 (
boo
);;

test_number 7 (
soi_qua = provide soi_any
);;
