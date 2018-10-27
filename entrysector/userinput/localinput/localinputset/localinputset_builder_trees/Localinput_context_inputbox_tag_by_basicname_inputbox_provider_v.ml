(** {3 Localinput_context_inputbox_tag_by_basicname_inputbox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BLOI:Localinput_context_inputbox_tag_by_basicname_inputbox_provider_v";
   "Needs : BLOI:Localinput_basicname_trio_by_unit_provider_v";
   "Needs : CONS:Context_sole_index_by_basicname_quatuor_provider_v";
   "Needed-by :";
   "Remark : Databox is the only variable in Context quatuor";
   "What-is-it : the Localinput_context_inputbox_tag";
   "Author : François Colonna 25 septembre 2016 at 20:41:29+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_ibo =
  let nam_ibo = Basicname_v.string_off bna_ibo in

  let (bna_iba, bna_dom, bna_sec) = 
    Localinput_basicname_trio_by_unit_provider_v.provide () 
  in

  let soi_lbo = 
    Context_sole_index_by_basicname_quatuor_provider_v.provide 
      (bna_ibo, bna_iba, bna_dom, bna_sec) 
  in

  let sym_lbo = 
    Localinput_context_inputbox_symbol_v.localinput_context_inputbox_constructor 
      nam_ibo 
  in

  Tag_v.make sym_lbo soi_lbo
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
(* done with do_provider_without_register.sh Localinput_context_inputbox_tag_by_basicname_inputbox_provider_v.ml force on lundi 31 octobre 2016, 14:54:07 (UTC+0100) *)
