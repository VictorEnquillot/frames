(** {3 Nwchemdata_as_context_database_tag_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BNWC:Nwchemdata_as_context_database_tag_by_unit_provider_v";
   "Needs : BNWC:Nwchemdata_basicname_trio_by_unit_provider_v Context_sole_index_by_basicname_trio_provider_v";
   "Author : François Colonna 26 septembre 2016 at 07:24:10+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build () =
  let (bna_dba, bna_dom, bna_sec) = 
    Nwchemdata_basicname_trio_by_unit_provider_v.provide () 
  in
  let soi_dba = 
    Context_sole_index_by_basicname_trio_provider_v.provide 
     (bna_dba, bna_dom, bna_sec) 
  in
  let nam_dba = Basicname_v.string_off bna_dba in
  let sym_ncd = 
    Nwchemdata_symbol_v.nwchemdata_context_database_constructor 
      nam_dba
  in
  Tag_v.make sym_ncd soi_dba
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
(* done with do_provider_without_register.sh Nwchemdata_as_context_database_tag_by_unit_provider_v.ml force on lundi 10 octobre 2016, 15:52:05 (UTC+0200) *)