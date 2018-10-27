(** {3 Nwchemdata_tag_tree_by_basicname_databox_n_basicname_database_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BSKE:Skeleton_tag_tree_by_basicname_databox_n_basicname_database_provider_v";
   "Needs : BSKE:Skeleton_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v";
   "Needs : BSKE:Skeleton_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v";
   "Register : BDB1:Skeleton_tag_tree_by_basicname_databox_n_basicname_database_register_v";
   "Needed-by :"; 
   "What-is-it : the Tree of Skeleton_tag Rooted by Skeleton Tag Quatuor";
   "How-is-it-done : getting Quatuor Skeleton Tags";
   "How-is-it-done : adding it to Databox Rooted Skeleton_symbol_subtree";
   "Abbreviation : scs  = skeleton_context_sector";
   "Abbreviation : scd  = skeleton_context_domain";
   "Abbreviation : sba  = skeleton_context_database";
   "Abbreviation : sbo  = skeleton_context_databox";
   "Abbreviation : ske  = skeleton";
   "Abbreviation : t    = tree";
   "Abbreviation : st   = subtree";
   "Author : François Colonna 11 octobre 2016 at 17:45:09+02:00 from BSKE";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

(*         |-           Skeleton_context_sector   -|          *)
(*         |                    / | \                | fixed    *)
(*         |-           Skeleton_context_domain   -| duo      *)
(* Context |                    / | \                |          *)
(* Quatuor |-           Skeleton_context_database -|          *)
(*         |                    / | \                | variable *)
(*         |-           Skeleton_context_databox  -| duo      *)
(*         |                      |                             *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_dbo, bna_dba) =

  let (tag_ske_sbo, tag_ske_sba, tag_ske_scd, tag_ske_scs) =
    Skeleton_as_context_tag_quatuor_by_basicname_databox_n_basicname_database_provider_v.provide
      (bna_dbo, bna_dba)
  in
  
  let sym_ske_sbo_st =
    Skeleton_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v.provide
      (bna_dbo, bna_dba)
  in

  let soi_ske_sbo = Tag_v.sole_index_off_tag tag_ske_sbo in
  let soi_ske_sbo_st = 
    Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
      sym_ske_sbo_st 
      soi_ske_sbo 
  in
  let tag_ske_sbo_st = Tree_v.map2 Tag_v.make sym_ske_sbo_st soi_ske_sbo_st in
  let tag_ske_sba_st = Tree_v.make_of_node tag_ske_sba [tag_ske_sbo_st] in
  let tag_ske_scd_st = Tree_v.make_of_node tag_ske_scd [tag_ske_sba_st] in
  
  Tree_v.make_of_node tag_ske_scs [tag_ske_scd_st]
;;

(** {6 Storing} *)

let store (bna_dbo, bna_dba) result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Skeleton_tag_tree_by_basicname_databox_n_basicname_database_register_v.store nam_mod (bna_dbo, bna_dba) result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store (bna_dbo, bna_dba) =
  let result = build (bna_dbo, bna_dba) in
  store (bna_dbo, bna_dba) result;
  result
;;

(** {6 Retrieving} *)

let retrieve (bna_dbo, bna_dba) =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Skeleton_tag_tree_by_basicname_databox_n_basicname_database_register_v.retrieve nam_mod (bna_dbo, bna_dba) in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace (bna_dbo, bna_dba) =
  if Skeleton_tag_tree_by_basicname_databox_n_basicname_database_register_v.is_stored (bna_dbo, bna_dba)
  then retrieve (bna_dbo, bna_dba)
  else build_n_store (bna_dbo, bna_dba)
;;

(** {6 Providing} *)

let provide (bna_dbo, bna_dba) =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace (bna_dbo, bna_dba) in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Skeleton_tag_tree_by_basicname_databox_n_basicname_database_provider_v.ml force on mardi 11 octobre 2016, 15:02:08 (UTC+0200) *)
