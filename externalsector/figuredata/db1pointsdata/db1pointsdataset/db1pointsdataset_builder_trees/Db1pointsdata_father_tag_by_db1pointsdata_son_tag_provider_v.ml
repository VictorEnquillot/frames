(** {3 Db1pointsdata_father_tag_by_db1pointsdata_son_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BCOO:Db1pointsdata_father_tag_by_db1pointsdata_son_tag_provider_v";
   "Needs : BCOO:Db1pointsdata_symbol_by_sole_index_provider_v";
   "Register : BCOO:Db1pointsdata_father_tag_by_db1pointsdata_son_tag_register_v";
   "What-is-it : the Tag of the ONLY father of a Tag";
   "Author : François Colonna 09 janvier 2017 at 17:00:00+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_db1 =

  let soi_db1 = Tag_v.sole_index_off_tag tag_db1 in
  let soi_fat = Sole_index_v.father_sole_index_off_sole_index soi_db1 in

  let sym_db1_fat = 
    Db1pointsdata_symbol_by_sole_index_provider_v.provide
      soi_fat
  in

  Tag_v.make sym_db1_fat soi_fat  
;;

(** {6 Storing} *)

let store tag_db1 result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Db1pointsdata_father_tag_by_db1pointsdata_son_tag_register_v.store nam_mod tag_db1 result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_db1 =
  let result = build tag_db1 in
  store tag_db1 result;
  result
;;

(** {6 Retrieving} *)

let retrieve tag_db1 =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Db1pointsdata_father_tag_by_db1pointsdata_son_tag_register_v.retrieve nam_mod tag_db1 in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_db1 =
  if Db1pointsdata_father_tag_by_db1pointsdata_son_tag_register_v.is_stored tag_db1
  then retrieve tag_db1
  else build_n_store tag_db1
;;

(** {6 Providing} *)

let provide tag_db1 =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_db1 in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
