(** {3 Measured_float_tuple_list_by_basicname_operation_n_measured_float_tuple_list_provider_v} *)

(** {6 Documenting_for_value_v} *)

let documentation () = 
  [
   "Current : VPRO:Measured_float_tuple_list_by_basicname_operation_n_measured_float_tuple_list_provider_v";
   "Needs : OCOO:Coordinate_operation_measured_float_tuple_v";
   "Needed-by : ";
   "What-is-it : the Measured_float_tuple_list obtained by applying operation on measured_float_tuple_list";
   "Example : the tanslated measure of a Point";
   "How-is-it-done : ";
   "Author : François Colonna 21 mai 2017 at 16:14:54+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(* Length on External Figure *)

(** {6 Building} *)
 
let build (bna_opt, mea_hom_tl) =
  let nam_fun = "build" in

  Basicname_v.check_is_basicname_operation_of_basicname bna_opt;

  let nam_opt = Basicname_v.string_off bna_opt in
    match nam_opt with
    | "translation" ->

	let mea_seg_td = Duo_v.duo_of_list mea_hom_tl in
	Coordinate_operation_measured_float_tuple_v.translation mea_opd_tl mea_seg_td 
	  
    | "homothety" ->

	Utilities_v.not_yet_implemented nam_mod nam_opt

    | _ ->
	Error_messages_v.print_fatal_error __LOC__ nam_fun
	  "Operation were a Measure i.e. one of translation | homothety"
	  nam_opt
	  "Check"
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
(* done with do_provider_without_register.sh Measure_by_basicname_operation_n_measured_float_tuple_list_provider_v.ml  on jeudi 27 avril 2017, 08:49:27 (UTC+0200) *)
