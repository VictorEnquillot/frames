(** {3 Nwchemdata_tag_tree_by_databox_name_n_database_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BDB1:Elementary_tag_tree_by_databox_name_n_database_name_provider_v";
   "Needs : BELE:Elementary_as_context_tag_quatuor_by_databox_name_n_database_name_provider_v";
   "Needs : BELE:Elementary_symbol_subtree_by_databox_name_n_database_name_provider_v";
   "Register : BDB1:Elementary_tag_tree_by_databox_name_n_database_name_register_v";
   "Needed-by :"; 
   "What-is-it : the Tree of Elementary_tag Rooted by Elementary Tag Quatuor";
   "How-is-it-done : getting Quatuor Elementary Tags";
   "How-is-it-done : adding it to Databox Rooted Elementary_symbol_subtree";
   "Abbreviation : ecs  = elementary_context_sector";
   "Abbreviation : ecd  = elementary_context_domain";
   "Abbreviation : eba  = elementary_context_database";
   "Abbreviation : ebo  = elementary_context_databox";
   "Abbreviation : ele  = elementary";
   "Abbreviation : t    = tree";
   "Abbreviation : st   = subtree";
 ]
;;

(*         |-           Elementary_context_sector   -|          *)
(*         |                    / | \                | fixed    *)
(*         |-           Elementary_context_domain   -| duo      *)
(* Context |                    / | \                |          *)
(* Quatuor |-           Elementary_context_database -|          *)
(*         |                    / | \                | variable *)
(*         |-           Elementary_context_databox  -| duo      *)
(*         |                      |                             *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (nam_ebo, nam_eba) =
  let (tag_ele_ebo, tag_ele_eba, tag_ele_ecd, tag_ele_ecs) =
    Elementary_as_context_tag_quatuor_by_databox_name_n_database_name_provider_v.provide
      (nam_ebo, nam_eba)
  in

  let sym_ele_ebo_st =
    Elementary_symbol_subtree_by_databox_name_n_database_name_provider_v.provide
      (nam_ebo, nam_eba)
  in

  let soi_ele_ebo = Tag_v.sole_index_off_tag tag_ele_ebo in
  let soi_ele_ebo_st = 
    Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
      sym_ele_ebo_st 
      soi_ele_ebo 
  in
  let tag_ele_ebo_st = Tree_v.map2 Tag_v.make sym_ele_ebo_st soi_ele_ebo_st in
  let tag_ele_eba_st = Tree_v.make_of_node tag_ele_eba [tag_ele_ebo_st] in
  let tag_ele_ecd_st = Tree_v.make_of_node tag_ele_ecd [tag_ele_eba_st] in
  
  Tree_v.make_of_node tag_ele_ecs [tag_ele_ecd_st]
;;

(** {6 Storing} *)

let store (nam_ebo, nam_eba) result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Elementary_tag_tree_by_databox_name_n_database_name_register_v.store nam_mod (nam_ebo, nam_eba) result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store (nam_ebo, nam_eba) =
  let result = build (nam_ebo, nam_eba) in
  store (nam_ebo, nam_eba) result;
  result
;;

(** {6 Retrieving} *)

let retrieve (nam_ebo, nam_eba) =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Elementary_tag_tree_by_databox_name_n_database_name_register_v.retrieve nam_mod (nam_ebo, nam_eba) in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace (nam_ebo, nam_eba) =
  if Elementary_tag_tree_by_databox_name_n_database_name_register_v.is_stored (nam_ebo, nam_eba)
  then retrieve (nam_ebo, nam_eba)
  else build_n_store (nam_ebo, nam_eba)
;;

(** {6 Providing} *)

let provide (nam_ebo, nam_eba) =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace (nam_ebo, nam_eba) in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Elementary_tag_tree_by_databox_name_n_database_name_provider_v.ml force on lundi 10 octobre 2016, 09:12:58 (UTC+0200) *)
