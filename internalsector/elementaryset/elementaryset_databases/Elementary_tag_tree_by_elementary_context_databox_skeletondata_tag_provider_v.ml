(** {3 Elementary_tag_tree_by_elementary_context_databox_skeletondata_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Elementary_tag_tree_by_elementary_context_databox_skeletondata_tag_provider_v";
   "Needs : CONS:Database_name_by_ordinal_provider_v";
   "Needs : DELE:Elementary_context_databox_skeletondata_tag_v";
   "Needs : DELE:Nwchemdata_context_databox_tag_by_databox_name_provider_v";
   "Needs : DELE:Elementary_tag_tree_by_nwchemdata_context_databox_tag_provider_v";
   "Needed-by : DELE:";
   "What-is-it : the Full Elementary Tag Builder-Tree";
   "How-is-it-done : by getting Elementary_tag_tree from Nwchemdata_context_databox_tag";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build tag_eds =
  let soi_eds = Tag_v.sole_index_off_tag tag_eds in
  let (nam_dba, nam_dbo) =
    Database_name_n_databox_name_by_sole_index_provider_v.provide 
      soi_eds 
  in
  match nam_dba with 
  | "nwchem" ->
      let tag_nbo = Nwchemdata_context_databox_tag_by_databox_name_provider_v.provide nam_dbo in
      Elementary_tag_tree_by_nwchemdata_context_databox_tag_provider_v.provide tag_ncb

  | _ ->
      Error_messages_v.print_fatal_error __LOC__ "build"
        (Format.sprintf "Database name >%s< exists" nam_dba)
        "it does NOT"
        "Add it"
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* done with do_provider_without_register.sh Elementary_tag_tree_by_elementary_context_databox_skeletondata_tag_provider_v.ml on mercredi 25 mai 2016, 10:04:06 (UTC+0200) *)
