(** {3 Measure_by_basicname_variable_operator_n_measured_float_tuple_list_provider_v} *)

(** {6 Documenting_for_value_v} *)

let documentation () = 
  [
   "Current : VPRO:Measure_by_basicname_variable_operator_n_measured_float_tuple_list_provider_v";
   "Needs : OCOO:Coordinate_operation_measured_float_tuple_v";
   "Needed-by : ";
   "Definition : Measured_float_tuple is a Tuple of same Units Type (i.e. cartesian coordinates)";
   "What-is-it : the length of a Segment or of a Bipoint";
   "What-is-it : the perimeter of a Triangle";
   "What-is-it : Operator applies on a List of Coordinate_set_body_tuple";
   "How-is-it-done : ";
   "Author : François Colonna 20 mars 2017 at 10:26:19+01:00";
   "Author : François Colonna 26 avril 2017 at 11:01:10+02:00";
   "Author : François Colonna 10 mai 2017 at 11:47:04+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(* Length on External Figure *)

(** {6 Building} *)
 
let build (bna_ope, mea_hom_tl) =
  let nam_fun = "build" in

  Basicname_v.check_is_basicname_variable_operator_of_basicname bna_ope;

(* Operation *)  
  let bna_opt = 
    Basicname_operation_by_basicname_variable_operator_n_basicname_inputbox_provider_v.provide
    (bna_var_ope, bna_ibo)
  in

(* Ondomain *)  
  let bna_ond = 
    Basicname_ondomain_by_basicname_variable_operator_n_basicname_inputbox_provider_v.provide
    (bna_var_ope, bna_ibo)
  in

(* Cofactor *)  
  let bna_ond = 
    Basicname_ondomain_by_basicname_variable_operator_n_basicname_inputbox_provider_v.provide
    (bna_var_ope, bna_ibo)
  in


  let nam_opt = Basicname_v.string_off bna_opt in
    match nam_opt with
    | "length" ->

	let mea_hom_td = Duo_v.duo_of_list mea_hom_tl in
	Coordinate_operation_measured_float_tuple_v.measure_length_of_measured_float_tuple_duo mea_hom_td
	  
    | "perimeter" ->

	let mea_hom_tt = Trio_v.trio_of_list mea_hom_tl in
	Coordinate_operation_measured_float_tuple_v.measure_perimeter_of_measured_float_tuple_trio mea_hom_tt
	  
    | "surface" ->
	Utilities_v.not_yet_implemented nam_mod "surface"

    | "volume" ->
	Utilities_v.not_yet_implemented nam_mod "volume"

    | _ ->
	Error_messages_v.print_fatal_error __LOC__ nam_fun
	  "Operation were a Measure i.e. one of length | perimeter | volume"
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
