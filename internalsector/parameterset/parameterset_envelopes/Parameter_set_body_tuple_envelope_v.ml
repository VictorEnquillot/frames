(** {3 Parameter_set_body_tuple_envelope_v} *)

(** {6 Documenting_for_envelope} *)

let documentation () = 
  [
   "Current : EPAR:Parameter_set_body_tuple_envelope_v";
   "Needed-by : ";
   "Definition : an Envelopee = (Labeled_readee) is a Elementary_envelopee = Coordinate_envelopee | Parameter_envelopee";
   "Definition : an Envelope is a Tuple_list of Envelopee";
   "Definition : it propagates the Envelopee Tuple along the BT";
   "Definition : a Closure is a list of Readee. It valuates the Fence i.e. the Deepestfence of any Domain";   
   "Remark : Parameter_envelope_t is NOT coerced";
   "Remark : Measure of Tag etc... are extraction";
   "Author : François Colonna 19 juillet 2017 at 15:39:15+02:00 added";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Envelope of Tag} *)

let envelope_of_tag tag_pbt =
  Parameter_envelopee_tuple_v.make_of_parameter_set_body_tuple_tag tag_pbt 
;;

(** {6 Parameter_envelopee Tuple of Tag} *)

let parameter_envelopee_tuple_of_tag tag_pbt =
  envelope_of_tag tag_pbt 
;;

(** {6 Making} *)

let make tag_pbt =
  envelope_of_tag tag_pbt
;;

(** {6 Extracting off Envelope} *)

(** {9 Parameter_set_fence_symbol Tuple} *)

let parameter_set_fence_symbol_tuple_off_envelope env_pbt =
  Tuple_v.map
    Parameter_envelopee_v.parameter_set_fence_symbol_off_parameter_envelopee 
    env_pbt
;;

let parameter_set_fence_symbol_tuple_of_tag tag_pbt =
  let env_pbt = envelope_of_tag tag_pbt in
  parameter_set_fence_symbol_tuple_off_envelope env_pbt
;;

(** {9 Parameter_symbol Tuple} *)

let parameter_symbol_tuple_off_envelope env_pbt =
  let sym_psf_t = parameter_set_fence_symbol_tuple_off_envelope env_pbt in 
  Tuple_v.map
    Parameter_symbol_v.parameter_symbol_of_parameter_set_fence_symbol
    sym_psf_t
;;

let parameter_symbol_tuple_of_tag tag_pbt =
  let sym_psf_t = parameter_set_fence_symbol_tuple_of_tag tag_pbt in 
  Tuple_v.map
    Parameter_symbol_v.parameter_symbol_of_parameter_set_fence_symbol
    sym_psf_t
;;

(** {9 Readee Tuple} *)

let readee_tuple_off_envelope env_pbt =
  Tuple_v.map
    Parameter_envelopee_v.readee_off_parameter_envelopee 
    env_pbt
;;

let readee_tuple_of_tag tag_pbt =
  let env_pbt = envelope_of_tag tag_pbt in
  readee_tuple_off_envelope env_pbt
(* ;; *)

(** {9 Closure off Envelope : tuple of Readee} *)

let closure_off_envelope env_pbt =
  readee_tuple_off_envelope env_pbt 
;;

let closure_of_tag tag_pbt =
  readee_tuple_of_tag tag_pbt 
;;

(** {9 Measure Tuple} *)

let measure_tuple_off_envelope env_pbt =
  Tuple_v.map
    Parameter_envelopee_v.measure_off_parameter_envelopee 
    env_pbt
;;

let measure_tuple_of_tag tag_pbt =
  let env_pbt = envelope_of_tag tag_pbt in
  measure_tuple_off_envelope env_pbt 
;;

(** {6 Measure_actual Tuple of Tag} *)

let measure_actual_tuple_of_tag tag_pbt =
  let mea_t = measure_tuple_of_tag tag_pbt in
  Tuple_v.map Measure_v.measure_actual_off_measure mea_t
;;

(** {6 Measure_canonical Tuple of Tag} *)

let measure_canonical_tuple_of_calculation_name_of_tag nam_cal tag_pbt =
  let mea_t = measure_tuple_of_tag tag_pbt in
  Tuple_v.map 
    (fun m -> 
      Measure_v.measure_canonical_of_measure_of_calculation_name 
	m nam_cal
    )
    mea_t
;;

(** {9 Units Tuple} *)

let units_tuple_off_envelope env_pbt =
  let mea_l = measure_tuple_off_envelope env_pbt in
  Tuple_v.map
    Measure_v.units_off_measure 
    mea_l
;;

let units_tuple_of_tag tag_pbt =
  let env_pbt = envelope_of_tag tag_pbt in
  units_tuple_off_envelope env_pbt 
;;

(** {9 Float Tuple} *)

let float_tuple_off_envelope env_pbt  =
  let mea_t = measure_tuple_off_envelope env_pbt in
  Tuple_v.map
    Measure_v.float_off_measure
    mea_t
;;

let float_tuple_of_tag tag_pbt =
  let env_pbt = envelope_of_tag tag_pbt in
  float_tuple_off_envelope env_pbt 
;;

(** {6 Naming_for_envelope} *)

let name env_pbt =
  Tuple_v.name Parameter_envelopee_v.name env_pbt
;;

let string_off env_pbt =
  Tuple_v.name Parameter_envelopee_v.string_off env_pbt
;;

let shortname env_pbt =
  Tuple_v.name Parameter_envelopee_v.shortname env_pbt
;;

let dimension env_pbt =
  Tuple_v.name Parameter_envelopee_v.dimension env_pbt
;;

let fullname env_pbt =
  Tuple_v.name Parameter_envelopee_v.fullname env_pbt
;;

let longname env_pbt =
  Tuple_v.name Parameter_envelopee_v.longname env_pbt
;;

