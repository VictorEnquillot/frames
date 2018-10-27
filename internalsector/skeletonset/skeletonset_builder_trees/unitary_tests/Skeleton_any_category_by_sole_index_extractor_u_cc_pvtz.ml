open Make_test_v;;

testing "Skeleton_any_category_by_sole_index_extractor_v with
    Skeleton_any_category_by_sole_index_extractor_u_cc_pvtz.ml";;

(* Deleting Registers *)
Register_v.delete Basicname_databox_n_basicname_database_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_creation_module_name_by_sole_index_register_v.register;;
Register_v.delete Skeleton_fence_by_skeleton_tag_register_v.register;;
Register_v.delete Skeleton_son_tag_list_by_skeleton_father_tag_register_v.register;;
Register_v.delete Skeleton_symbol_by_sole_index_register_v.register;;
Register_v.delete Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_subtree_by_skeleton_tag_register_v.register;;
Register_v.delete Skeleton_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;
Register_v.delete Skeleton_tag_tree_by_basicname_databox_n_basicname_database_register_v.register;;


(* Tracing *)


(* Debugging *)

                                       
(* toplevel 
   #use "Skeleton_any_category_by_sole_index_extractor_u_cc_pvtz.ml";; 

*)

(* Database file *)

let nam_dba = "nwchem";;
let nam_dbo = "cc_pvtz";;

Parameters_general_register_v.store "database-name" nam_dba;;
Parameters_general_register_v.store "databox-name" nam_dbo;;

(* Argument (nam_dbo, nam_dba) *)

open Skeleton_any_category_by_sole_index_extractor_v;; 

let tag_dbo = 
	Skeleton_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v.provide 
	  (nam_dbo, nam_dba) ;;

test_number 1 (
(tag_dbo :
  Skeleton_context_databox_symbol_t.skeleton_context_databox_symbol Tag_t.tag ) =
  (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
    "cc_pvtz",
   [3; 1; 8])
);;

let tag_fig_l = (Skeleton_tag_all_list_by_basicname_databox_n_basicname_database_provider_v.provide tag_dbo);;

test_number 2 (
(tag_fig_l : Skeleton_symbol_t.skeleton_symbol Tag_t.tag list ) =
  [(Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_domain_symbol
       (Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor
         "skeleton")),
    [8]);
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_database_symbol
       (Skeleton_context_database_symbol_t.Skeleton_context_database_constructor
         "nwchem")),
    [1; 8]);
   (Skeleton_symbol_t.Skeleton_context_symbol
     (Skeleton_context_symbol_t.Skeleton_context_databox_symbol
       (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
         "cc_pvtz")),
    [3; 1; 8]);
   (Skeleton_symbol_t.Skeleton_field_symbol
     (Skeleton_field_symbol_t.Skeleton_field_body_symbol
       (Skeleton_field_body_symbol_t.Skeleton_field_body_cc_pvtzymbol
         (Skeleton_field_body_cc_pvtzymbol_t.Skeleton_field_body_segment_constructor
           "S"))),
    [1; 3; 1; 8]);
   (Skeleton_symbol_t.Skeleton_field_symbol
     (Skeleton_field_symbol_t.Skeleton_field_fence_symbol
       (Skeleton_field_fence_symbol_t.Skeleton_field_fence_point_symbol
         (Skeleton_field_fence_point_symbol_t.Skeleton_field_fence_point_constructor
           "S_B"))),
    [1; 1; 3; 1; 8]);
   (Skeleton_symbol_t.Skeleton_field_symbol
     (Skeleton_field_symbol_t.Skeleton_field_fence_symbol
       (Skeleton_field_fence_symbol_t.Skeleton_field_fence_point_symbol
         (Skeleton_field_fence_point_symbol_t.Skeleton_field_fence_point_constructor
           "S_C"))),
    [2; 1; 3; 1; 8])]
);;

let soi_any = Tag_v.sole_index_off_tag (List_v.last_element_off_list tag_fig_l);;

test_number 3 (
(soi_any : Sole_index_t.sole_index ) = 
[2; 1; 3; 1; 8]
);;

let soi_fat = Sole_index_v.father_sole_index_off_sole_index soi_any;;

test_number 4 (
(soi_fat : Sole_index_t.sole_index ) = 
[1; 3; 1; 8]
);;

let str_pre = "is_skeleton_field_fence_point_symbol_off_skeleton_symbol";;
let tag_fig_son_l = son_skeleton_tag_list_of_string_predicate_of_father_sole_index str_pre soi_fat;;

test_number 5 (
(tag_fig_son_l :
  (Skeleton_symbol_t.skeleton_symbol, Sole_index_t.sole_index) Doublet_t.doublet
  list ) =
  [(Skeleton_symbol_t.Skeleton_field_symbol
     (Skeleton_field_symbol_t.Skeleton_field_fence_symbol
       (Skeleton_field_fence_symbol_t.Skeleton_field_fence_point_symbol
         (Skeleton_field_fence_point_symbol_t.Skeleton_field_fence_point_constructor
           "S_B"))),
    [1; 1; 3; 1; 8]);
   (Skeleton_symbol_t.Skeleton_field_symbol
     (Skeleton_field_symbol_t.Skeleton_field_fence_symbol
       (Skeleton_field_fence_symbol_t.Skeleton_field_fence_point_symbol
         (Skeleton_field_fence_point_symbol_t.Skeleton_field_fence_point_constructor
           "S_C"))),
    [2; 1; 3; 1; 8])]
);;

let tag_fcd = skeleton_context_domain_tag_off_sole_index soi_any;;

test_number 6 (
(tag_fcd :
   Skeleton_context_domain_symbol_t.skeleton_context_domain_symbol Tag_t.tag ) =
(Skeleton_context_domain_symbol_t.Skeleton_context_domain_constructor "skeleton",
 [8])
);;

let tag_fbo = skeleton_context_databox_tag_off_sole_index soi_any;;

test_number 7 (
( tag_fbo :
  Skeleton_context_databox_symbol_t.skeleton_context_databox_symbol Tag_t.tag ) =
  (Skeleton_context_databox_symbol_t.Skeleton_context_databox_constructor
    "cc_pvtz",
   [3; 1; 8])
);;

let soi_ffp = skeleton_field_fence_point_sole_index_off_sole_index soi_any;;

test_number 8 (
soi_ffp = soi_any
);;
