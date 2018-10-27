(** {3 Nwchemdata_as_context_databox_tag_by_basicname_databox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BNWC:Nwchemdata_as_context_databox_tag_by_basicname_databox_provider_v";
   "Needs : BNWC:Nwchemdata_basicname_trio_by_unit_provider_v Context_sole_index_by_basicname_quatuor_provider_v";
   "Needed-by :";
   "Remark : Databox is the only variable in Context quatuor";
   "What-is-it : the Nwchemdata_context_databox_tag";
   "Author : François Colonna 31 août 2016 at 12:24:45+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_dbo =
  let (bna_dba, bna_dom, bna_sec) = 
    Nwchemdata_basicname_trio_by_unit_provider_v.provide () 
  in

  let soi_dbo = 
    Context_sole_index_by_basicname_quatuor_provider_v.provide 
      (bna_dbo, bna_dba, bna_dom, bna_sec) 
  in
  let nam_dbo = Basicname_v.string_off bna_dbo in
  let sym_nwc_nbo = 
    Nwchemdata_symbol_v.nwchemdata_context_databox_constructor 
      nam_dbo 
  in

  Tag_v.make sym_nwc_nbo soi_dbo
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
(* done with do_provider_without_register.sh Nwchemdata_as_context_databox_tag_by_basicname_databox_provider_v.ml force on lundi 10 octobre 2016, 15:52:06 (UTC+0200) *)
