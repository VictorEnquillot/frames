(** {3 Skeleton_tag_tree_by_database_name_n_databox_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DSKE:Skeleton_tag_tree_by_database_name_n_databox_name_provider_v";
   "Register : DSKE:Skeleton_tag_tree_by_database_name_n_databox_name_register_v";
   "Needs : DSKE:Skeleton_as_context_tag_trio_by_database_name_n_databox_name_provider_v";
   "Needs : DSKE:Skeleton_symbol_subtree_root_databox_by_database_name_n_databox_name_provider_v";
   "Needed-by :"; 
   "What-is-it : the Tree of Skeleton_tag Rooted by Skeleton_context_domain_symbol";
   "How-is-it-done : getting Trio Skeleton_as_tag_context_trio";
   "How-is-it-done : adding it to Databox Skeleton_symbol_subtree";
   "Abbreviation : sba  = skeleton_context_database";
   "Abbreviation : sbo  = skeleton_context_databox";
   "Abbreviation : ske  = skeleton";
   "Abbreviation : t    = tree";
   "Abbreviation : st   = subtree";
   "Author : François Colonna 22nd March 2016";
 ]
;;

(*          |-           Skeleton_context_domain               *)
(*          |                    / | \                         *)
(*    Trio  |-           Skeleton_context_database             *)
(*          |                    / | \                         *)
(*          |-           Skeleton_context_databox              *)
(*                                 |                           *)
(*                           Skeleton_body                     *)
(*      Skeleton_body_aopefset_anycenter ( | ..._ecppefset_anycenter) *)
(*              "NWC"                                          *)
(*          /                     |                \           *)
(*    Skeleton_body_aopefset_onecenter Skeleton_body_aopefset_onecenter *)
(*                     "H"                             "He"  .          *)

(*    Skeleton_fence_aopef Skeleton_fence_aopefset ... *)
(*       "H S 1 1 "      ...   "He S 1 1" ...          *)


let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (nam_dba, nam_dbo) =
  let (tag_ske_dom, tag_ske_sba, tag_ske_sbo) =
    Skeleton_as_context_tag_trio_by_database_name_n_databox_name_provider_v.provide
      (nam_dba, nam_dbo)
  in

  let sym_ske_sbo_st =
    Skeleton_symbol_subtree_root_databox_by_database_name_n_databox_name_provider_v.provide
      (nam_dba, nam_dbo)
  in

  let soi_ske_sbo = Tag_v.sole_index_off_tag tag_ske_sbo in
  let soi_ske_sbo_st = 
    Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
      sym_ske_sbo_st 
      soi_ske_sbo 
  in
  let tag_ske_sbo_st = Tree_v.map2 Tag_v.make sym_ske_sbo_st soi_ske_sbo_st in
  let tag_ske_sba_st = Tree_v.make_of_node tag_ske_sba [tag_ske_sbo_st] in
  
  Tree_v.make_of_node tag_ske_dom [tag_ske_sba_st]
;;

(** {6 Storing} *)

let store (nam_dba, nam_dbo) result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Skeleton_tag_tree_by_database_name_n_databox_name_register_v.store nam_mod (nam_dba, nam_dbo) result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store (nam_dba, nam_dbo) =
  let result = build (nam_dba, nam_dbo) in
  store (nam_dba, nam_dbo) result;
  result
;;

(** {6 Retrieving} *)

let retrieve (nam_dba, nam_dbo) =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Skeleton_tag_tree_by_database_name_n_databox_name_register_v.retrieve nam_mod (nam_dba, nam_dbo) in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace (nam_dba, nam_dbo) =
  if Skeleton_tag_tree_by_database_name_n_databox_name_register_v.is_stored (nam_dba, nam_dbo)
  then retrieve (nam_dba, nam_dbo)
  else build_n_store (nam_dba, nam_dbo)
;;

(** {6 Providing} *)

let provide (nam_dba, nam_dbo) =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace (nam_dba, nam_dbo) in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_with_register.sh Skeleton_tag_tree_by_database_name_n_databox_name_provider_v.ml on jeudi 19 mai 2016, 18:29:50 (UTC+0200) *)
