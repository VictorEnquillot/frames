(** {3 Localinput_symbol_subtree_by_localinput_context_inputbox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BLOI:Localinput_symbol_subtree_by_localinput_context_inputbox_tag_provider_v";
   "Needs : BLOI:Localinput_fullnameoffile_by_localinput_context_inputbox_tag_provider_v";
   "Needs : PARLOI:Localinput_parser_tree_by_basicname_inputbox_provider_v";
   "Needed-by : B:";
   "What-is-it : the Localinput_symbol Subtree Rooted by a Localinput_context_inputbox";
   "Invariant : Non-leaf Symbol Tree has unique nodes";
   "Invariant : Symbol Subtree is complete";
   "Author : François Colonna 25 septembre 2016 at 20:16:47+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_ibo =
  let nam_ibo = Localinput_context_inputbox_tag_v.string_off tag_ibo in
  let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo in
  Localinput_parser_tree_by_basicname_inputbox_provider_v.provide
    bna_ibo 
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_without_register_v.ml *)
(* done with do_provider_without_register.sh Localinput_symbol_subtree_by_localinput_context_inputbox_tag_provider_v.ml force on lundi 31 octobre 2016, 14:54:09 (UTC+0100) *)
