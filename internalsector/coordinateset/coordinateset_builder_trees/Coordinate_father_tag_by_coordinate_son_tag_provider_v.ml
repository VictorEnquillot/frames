(** {3 Coordinate_father_tag_by_coordinate_son_tag_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BCOO:Coordinate_father_tag_by_coordinate_son_tag_provider_v";
   "Needs : BCOO:Coordinate_symbol_by_sole_index_provider_v";
   "Register : BCOO:Coordinate_father_tag_by_coordinate_son_tag_register_v";
   "What-is-it : the Tag of the ONLY father of a Tag";
   "Author : François Colonna 25 décembre 2016 at 18:42:31+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build tag_coo =

  let soi_coo = Tag_v.sole_index_off_tag tag_coo in
  let soi_fat = Sole_index_v.father_sole_index_off_sole_index soi_coo in

  let sym_coo_fat = 
    Coordinate_symbol_by_sole_index_provider_v.provide
      soi_fat
  in

  Tag_v.make sym_coo_fat soi_fat  
;;

(** {6 Storing} *)

let store tag_coo result =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Coordinate_father_tag_by_coordinate_son_tag_register_v.store nam_mod tag_coo result;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store tag_coo =
  let result = build tag_coo in
  store tag_coo result;
  result
;;

(** {6 Retrieving} *)

let retrieve tag_coo =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Coordinate_father_tag_by_coordinate_son_tag_register_v.retrieve nam_mod tag_coo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace tag_coo =
  if Coordinate_father_tag_by_coordinate_son_tag_register_v.is_stored tag_coo
  then retrieve tag_coo
  else build_n_store tag_coo
;;

(** {6 Providing} *)

let provide tag_coo =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace tag_coo in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
