(** {3 Elementary_tag_tree_by_database_name_n_databox_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_tag_tree_by_database_name_n_databox_name_provider_v";
   "Needs : DELE:Elementary_context_databox_tag_by_database_name_n_databox_name_provider_v";
   "Needs : DELE:Elementary_tag_tree_by_elementary_context_databox_skeletondata_tag_provider_v";
   "What-is-it : the list of all Nodes of the Tag Builder-tree Partial";
   "Remark : need to fill register in Elementary_tag_tree_by_elementary_context_databox_skeletondata_tag_provider_v";
   "Remark : need to fill register in Elementary_tag_tree_by_elementary_context_databox_figuredata_tag_provider_v";
   "Author : François Colonna 25th March 2016. Added Elementary_context_databox_figuredata";
   "Author : François Colonna 09 mai 2016 at 10:40:25+02:00 from unit_provider";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (nam_dba, nam_dbo) =
  let tag_ebo =
    Elementary_context_databox_tag_by_database_name_n_databox_name_provider_v.provide 
      (nam_dba, nam_dbo) 
  in
  let soi_ebo = Tag_v.sole_index_off_tag tag_ebo in
  let sym_ebo = Tag_v.entity_off_tag tag_ebo in
  match sym_ebo with
  | Elementary_context_databox_symbol_t.Elementary_context_databox_skeletondata_symbol sym_eba ->
      let tag_eba = Tag_v.make sym_eba soi_ebo in
      Elementary_tag_tree_by_elementary_context_databox_skeletondata_tag_provider_v.provide tag_eba

  | Elementary_context_databox_symbol_t.Elementary_context_databox_figuredata_symbol sym_eba ->
      let tag_eba = Tag_v.make sym_eba soi_ebo in
      Elementary_tag_tree_by_elementary_context_databox_figuredata_tag_provider_v.provide tag_eba
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Elementary_tag_tree_by_database_name_n_databox_name_provider_v.ml on mercredi 25 mai 2016, 10:04:05 (UTC+0200) *)
