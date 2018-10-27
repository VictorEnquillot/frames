(** {3 Db1pointsdata_as_context_database_tag_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BDB1:Db1pointsdata_as_context_database_tag_by_unit_provider_v";
   "Needs : BDB1:Db1pointsdata_basicname_trio_by_unit_provider_v";
   "Needs : CONS:Context_sole_index_by_basicname_trio_provider_v";
   "Needs : SDB1:Db1pointsdata_symbol_v";
   "Author : François Colonna 26 septembre 2016 at 07:24:10+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build () =
  let (bna_dba, bna_dom, bna_sec) = 
    Db1pointsdata_basicname_trio_by_unit_provider_v.provide () 
  in
  let soi_dba = 
    Context_sole_index_by_basicname_trio_provider_v.provide 
     (bna_dba, bna_dom, bna_sec) 
  in
  let nam_dba = Basicname_v.string_off bna_dba in
  let sym_dcd = 
    Db1pointsdata_symbol_v.db1pointsdata_context_database_constructor 
      nam_dba
  in
  Tag_v.make sym_dcd soi_dba
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
(* done with do_provider_without_register.sh Db1pointsdata_as_context_database_tag_by_unit_provider_v.ml force on lundi 26 septembre 2016, 07:27:03 (UTC+0200) *)
