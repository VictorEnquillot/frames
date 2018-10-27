(** {3 Figure_symbol_subtree_by_figure_context_databox_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BFIG:Figure_symbol_subtree_by_figure_context_databox_tag_provider_v";
   "Needs : BFIG:Basicname_databox_n_basicname_database_by_figure_context_databox_tag_provider_v";
   "Needs : BFIG:Figure_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v";
   "What-is-it : the Full Figure Builder-Tree from Figure_context_databox_tag";
   "Abbreviation : pbo = figure_context_databox";
   "Author : François Colonna 24 novembre 2016 at 08:40:40+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build tag_fbo =
  let (bna_dbo, bna_dba) = 
    Basicname_databox_n_basicname_database_by_figure_context_databox_tag_provider_v.provide 
      tag_fbo 
  in
  Figure_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v.provide (bna_dbo, bna_dba)
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
(* done with do_provider_without_register.sh Figure_symbol_subtree_by_figure_context_databox_tag_provider_v.ml force on lundi 10 octobre 2016, 09:13:02 (UTC+0200) *)
