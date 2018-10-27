(** {3 Localinput_as_context_database_tag_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BLOI:Localinput_as_context_database_tag_by_unit_provider_v";
   "Needs : BLOI:Localinput_basicname_trio_by_unit_provider_v";
   "Needs : CONS:Context_sole_index_by_basicname_trio_provider_v";
   "Author : François Colonna 04 avril 2017 at 11:16:13+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build () =
  let (bna_iba, bna_dom, bna_sec) = 
    Localinput_basicname_trio_by_unit_provider_v.provide () 
  in
  let soi_lba = 
    Context_sole_index_by_basicname_trio_provider_v.provide 
     (bna_iba, bna_dom, bna_sec) 
  in
  let nam_iba = Basicname_v.string_off bna_iba in
  let sym_loi_lba = 
    Localinput_symbol_v.localinput_context_inputbase_constructor 
      nam_iba
  in
  Tag_v.make sym_loi_lba soi_lba
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
(* done with do_provider_without_register.sh Localinput_as_context_database_tag_by_unit_provider_v.ml force on lundi 31 octobre 2016, 14:54:05 (UTC+0100) *)
