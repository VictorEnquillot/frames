(** {3 Localinput_tag_tree_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BLOI:Localinput_tag_tree_by_basicname_inputbox_provider_v";
   "Needs : BLOI:Localinput_as_context_tag_quatuor_by_basicname_inputbox_provider_v";
   "Needs : BLOI:Localinput_symbol_subtree_by_basicname_inputbox_provider_v";
   "Register : B:Localinput_tag_tree_by_basicname_inputbox_register_v";
   "Needed-by :"; 
   "What-is-it : the Tree of Localinput_tag Rooted by Localinput Tag Quatuor";
   "How-is-it-done : getting Quatuor Localinput Tags";
   "How-is-it-done : adding it to Databox Rooted Localinput_symbol_subtree";
   "Abbreviation : dcs  = localinput_context_sector";
   "Abbreviation : dcd  = localinput_context_domain";
   "Abbreviation : dba  = localinput_context_inputbase";
   "Abbreviation : dbo  = localinput_context_inputbox";
   "Abbreviation : db1  = local";
   "Abbreviation : t    = tree";
   "Abbreviation : st   = subtree";
   "Author : François Colonna 29 mars 2017 at 09:09:56+02:00";
 ]
;;

(*         |-           Localinput_context_sector   -|          *)
(*         |                    / | \                |          *)
(*         |-           Localinput_context_domain   -| fixed    *)
(* Context |                    / | \                | trio     *)
(* Quatuor |-           Localinput_context_inputbase -|          *)
(*         |                    / | \                           *)
(*         |-           Localinput_context_inputbox  -| variable *)
(*         |                      |                             *)

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_ibo =

  let (tag_loi_ibo, tag_loi_iba, tag_loi_lcd, tag_loi_lcs) =
    Localinput_as_context_tag_quatuor_by_basicname_inputbox_provider_v.provide
      bna_ibo
  in

  let sym_loi_ibo_st =
    Localinput_symbol_subtree_by_basicname_inputbox_provider_v.provide
      bna_ibo
  in

  let soi_loi_ibo = Tag_v.sole_index_off_tag tag_loi_ibo in
  let soi_loi_ibo_st = 
    Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
      sym_loi_ibo_st 
      soi_loi_ibo 
  in
  let tag_loi_ibo_st = Tree_v.map2 Tag_v.make sym_loi_ibo_st soi_loi_ibo_st in
  let tag_loi_iba_st = Tree_v.make_of_node tag_loi_iba [tag_loi_ibo_st] in
  let tag_loi_lcd_st = Tree_v.make_of_node tag_loi_lcd [tag_loi_iba_st] in
  
  Tree_v.make_of_node tag_loi_lcs [tag_loi_lcd_st]
;;

(** {6 Storing} *)

let store nam_ibo result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Localinput_tag_tree_by_basicname_inputbox_register_v.store nam_mod nam_ibo result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store nam_ibo =
  let result = build nam_ibo in
  store nam_ibo result;
  result
;;

(** {6 Retrieving} *)

let retrieve nam_ibo =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Localinput_tag_tree_by_basicname_inputbox_register_v.retrieve nam_mod nam_ibo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace nam_ibo =
  if Localinput_tag_tree_by_basicname_inputbox_register_v.is_stored nam_ibo
  then retrieve nam_ibo
  else build_n_store nam_ibo
;;

(** {6 Providing} *)

let provide nam_ibo =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace nam_ibo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Localinput_tag_tree_by_basicname_inputbox_provider_v.ml force on lundi 31 octobre 2016, 14:54:04 (UTC+0100) *)
