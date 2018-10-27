(** {3 Parameter_father_tag_by_parameter_son_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BPAR:Parameter_father_tag_by_parameter_son_tag_provider_v";
   "Register : BPAR:Parameter_father_tag_by_parameter_son_tag_register_v";
   "Needs : BPAR:Parameter_symbol_by_sole_index_provider_v";
   "What-is-it : the Tag of the ONLY father of a Tag";
   "Author : François Colonna 25 décembre 2016 at 18:42:31+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_par =

  let soi_par = Tag_v.sole_index_off_tag tag_par in
  let soi_fat = Sole_index_v.father_sole_index_off_sole_index soi_par in

  let sym_par_fat = 
    Parameter_symbol_by_sole_index_provider_v.provide
      soi_fat
  in

  Tag_v.make sym_par_fat soi_fat  
;;

(** {6 Storing} *)

let store tag_par result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Parameter_father_tag_by_parameter_son_tag_register_v.store nam_mod tag_par result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_par =
  let result = build tag_par in
  store tag_par result;
  result
;;

(** {6 Retrieving} *)

let retrieve tag_par =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Parameter_father_tag_by_parameter_son_tag_register_v.retrieve nam_mod tag_par in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_par =
  if Parameter_father_tag_by_parameter_son_tag_register_v.is_stored tag_par
  then retrieve tag_par
  else build_n_store tag_par
;;

(** {6 Providing} *)

let provide tag_par =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_par in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
