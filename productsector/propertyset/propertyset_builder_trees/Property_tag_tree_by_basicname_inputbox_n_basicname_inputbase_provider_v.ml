(** {3 Locallocalinput_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPRO:Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_v";
   "Needs : BPRO:Property_as_context_tag_quatuor_by_basicname_inputbox_n_basicname_inputbase_provider_v";
   "Needs : BPRO:Property_symbol_subtree_by_basicname_inputbox_n_basicname_inputbase_provider_v";
   "Register : BDB1:Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_register_v";
   "Needed-by :"; 
   "What-is-it : the Tree of Property_tag Rooted by Property Tag Quatuor";
   "How-is-it-done : getting Quatuor Property Tags";
   "How-is-it-done : adding it to Inputbox Rooted Property_symbol_subtree";
   "Abbreviation : _scs  = property_context_sector";
   "Abbreviation : _scd  = property_context_domain";
   "Abbreviation : _sba  = property_context_inputbase";
   "Abbreviation : _sbo  = property_context_inputbox";
   "Abbreviation : _ske  = property";
   "Abbreviation : _t    = tree";
   "Abbreviation : _st   = subtree";
   "Author : François Colonna 11 octobre 2016 at 17:45:09+02:00 from BPRO";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

(*         |-           Property_context_sector    -|          *)
(*         |                    / | \               | fixed    *)
(*         |-           Property_context_domain    -| duo      *)
(* Context |                    / | \               |          *)
(* Quatuor |-           Property_context_inputbase -|          *)
(*         |                    / | \               | variable *)
(*         |-           Property_context_inputbox  -| duo      *)
(*         |                      |                            *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_ibo, bna_iba) =
  let (tag_pro_ibo, tag_pro_iba, tag_pro_pcd, tag_pro_pcs) =
    Property_as_context_tag_quatuor_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide
      (bna_ibo, bna_iba)
  in

  let sym_pro_ibo_st =
    Property_symbol_subtree_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide
      (bna_ibo, bna_iba)
  in

  let soi_pro_ibo = Tag_v.sole_index_off_tag tag_pro_ibo in
  let soi_pro_ibo_st = 
    Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
      sym_pro_ibo_st 
      soi_pro_ibo 
  in
  let tag_pro_ibo_st = Tree_v.map2 Tag_v.make sym_pro_ibo_st soi_pro_ibo_st in
  let tag_pro_iba_st = Tree_v.make_of_node tag_pro_iba [tag_pro_ibo_st] in
  let tag_pro_pcd_st = Tree_v.make_of_node tag_pro_pcd [tag_pro_iba_st] in
  
  Tree_v.make_of_node tag_pro_pcs [tag_pro_pcd_st]
;;

(** {6 Storing} *)

let store (bna_ibo, bna_iba) result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_register_v.store nam_mod (bna_ibo, bna_iba) result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store (bna_ibo, bna_iba) =
  let result = build (bna_ibo, bna_iba) in
  store (bna_ibo, bna_iba) result;
  result
;;

(** {6 Retrieving} *)

let retrieve (bna_ibo, bna_iba) =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_register_v.retrieve nam_mod (bna_ibo, bna_iba) in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace (bna_ibo, bna_iba) =
  if Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_register_v.is_stored (bna_ibo, bna_iba)
  then retrieve (bna_ibo, bna_iba)
  else build_n_store (bna_ibo, bna_iba)
;;

(** {6 Providing} *)

let provide (bna_ibo, bna_iba) =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace (bna_ibo, bna_iba) in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_v.ml force on mardi 15 novembre 2016, 16:37:08 (UTC+0100) *)
