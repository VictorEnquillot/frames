(** {3 Db1pointsdata_set_fence_token_coordinates_kind_symbol_by_basicname_databox_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BDB1:Db1pointsdata_set_fence_token_coordinates_kind_symbol_by_basicname_databox_provider_v";
   "Needs : BDB1:Db1pointsdata_as_set_fence_token_coordinates_kind_symbol_by_basicname_databox_provider_v";
   "Needed-by : BDB1:";
   "What-is-it : the Db1figure Coordinates_kind : cartesian, ... ";
   "Abbreviation : dbo = databox_name";
   "Author : François Colonna 26 décembre 2016 at 21:45:54+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build bna_dbo =
  let sym_db1_dck =
    Db1pointsdata_as_set_fence_token_coordinates_kind_symbol_by_basicname_databox_provider_v.provide 
      bna_dbo
  in
  Db1pointsdata_symbol_v.db1pointsdata_set_fence_token_coordinates_kind_symbol_off_db1pointsdata_symbol
    sym_db1_dck
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

