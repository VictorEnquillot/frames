(** {3 Nwchemdata_tag_tree_by_basicname_databox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BNWC:Nwchemdata_tag_tree_by_basicname_databox_provider_v";
   "Needs : BNWC:Nwchemdata_as_context_tag_quatuor_by_basicname_databox_provider_v Nwchemdata_symbol_subtree_by_basicname_databox_provider_v";
   "Register : BNWC:Nwchemdata_tag_tree_by_basicname_databox_register_v";
   "Needed-by :"; 
   "What-is-it : the Tree of Nwchemdata_tag Rooted by Nwchemdata Tag Quatuor";
   "How-is-it-done : getting Quatuor Nwchemdata Tags";
   "How-is-it-done : adding it to Databox Rooted Nwchemdata_symbol_subtree";
   "Abbreviation : dcs  = nwchemdata_context_sector";
   "Abbreviation : dcd  = nwchemdata_context_domain";
   "Abbreviation : dba  = nwchemdata_context_database";
   "Abbreviation : dbo  = nwchemdata_context_databox";
   "Abbreviation : db1  = nwchem";
   "Abbreviation : t    = tree";
   "Abbreviation : st   = subtree";
   "Author : François Colonna 01 avril 2017 at 12:19:54+02:00";
 ]
;;

(*         |-           Nwchemdata_context_sector   -|          *)
(*         |                    / | \                |          *)
(*         |-           Nwchemdata_context_domain   -| fixed    *)
(* Context |                    / | \                | trio     *)
(* Quatuor |-           Nwchemdata_context_database -|          *)
(*         |                    / | \                           *)
(*         |-           Nwchemdata_context_databox  -| variable *)
(*         |                      |                             *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_dbo =
  let (tag_nwc_nbo, tag_nwc_nba, tag_nwc_ncd, tag_nwc_ncs) =
    Nwchemdata_as_context_tag_quatuor_by_basicname_databox_provider_v.provide
      bna_dbo
  in

  let sym_nwc_nbo_st =
    Nwchemdata_symbol_subtree_by_basicname_databox_provider_v.provide
      bna_dbo
  in

  let soi_nwc_nbo = Tag_v.sole_index_off_tag tag_nwc_nbo in
  let soi_nwc_nbo_st = 
    Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
      sym_nwc_nbo_st 
      soi_nwc_nbo 
  in

  let tag_nwc_nbo_st = Tree_v.map2 Tag_v.make sym_nwc_nbo_st soi_nwc_nbo_st in
  let tag_nwc_nba_st = Tree_v.make_of_node tag_nwc_nba [tag_nwc_nbo_st] in
  let tag_nwc_ncd_st = Tree_v.make_of_node tag_nwc_ncd [tag_nwc_nba_st] in
  
  Tree_v.make_of_node tag_nwc_ncs [tag_nwc_ncd_st]
;;

(** {6 Storing} *)

let store nam_dbo result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Nwchemdata_tag_tree_by_basicname_databox_register_v.store nam_mod nam_dbo result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store nam_dbo =
  let result = build nam_dbo in
  store nam_dbo result;
  result
;;

(** {6 Retrieving} *)

let retrieve nam_dbo =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Nwchemdata_tag_tree_by_basicname_databox_register_v.retrieve nam_mod nam_dbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace nam_dbo =
  if Nwchemdata_tag_tree_by_basicname_databox_register_v.is_stored nam_dbo
  then retrieve nam_dbo
  else build_n_store nam_dbo
;;

(** {6 Providing} *)

let provide nam_dbo =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace nam_dbo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Nwchemdata_tag_tree_by_basicname_databox_provider_v.ml force on lundi 10 octobre 2016, 15:52:04 (UTC+0200) *)
