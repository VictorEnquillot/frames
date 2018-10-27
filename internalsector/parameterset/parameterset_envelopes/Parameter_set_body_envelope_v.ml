(** {3 Parameter_set_body_envelope_v} *)

(** {6 Documenting_for_envelope} *)

let documentation () = 
  [
   "Current : EPAR:Parameter_set_body_envelope_v";
   "Needed-by : ";

   "Definition : an Envelopee = (Labelled_readee) is a Elementary_envelopee = Parameter_set_body_envelopee | Parameter_set_body_envelopee";
   "Definition : a  Parameter_set_body_envelopee = (Parameter_set_fence_symbol, Readee) Tuple";
   "Definition : an Envelope is a tuple_list of Envelopee. It propagates Labelled Readee along the BT";
   "Definition : a Closure is a list of Readee. It valuates the Fence i.e. the Deepestfence of any Domain";   
   "Remark : Parameter_envelope_t is NOT coerced";
   "Remark : Measure of Tag etc... are extraction";
   "Author : François Colonna 06 janvier 2017 at 15:48:43+01:00";
   "Author : François Colonna 04 mai 2017 at 11:49:22+02:00 tag -> symbol";
   "Author : François Colonna 12 juin 2017 at 15:14:26+02:00 tuple not list";
   "Author : François Colonna 14 juin 2017 at 16:23:36+02:00 extraction then of_tag";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Envelope of Tag} *)

let envelope_of_tag tag_psb =
  Parameter_envelopee_tuple_v.make_of_parameter_set_body_tag tag_psb 
;;

let parameter_envelopee_tuple_of_tag tag_psb =
  envelope_of_tag tag_psb 
;;

(** {6 Making} *)

let make tag_psb =
  envelope_of_tag tag_psb
;;

(** {6 Extracting off Envelope} *)

(** {9 Parameter_set_fence_symbol Tuple} *)

let parameter_set_fence_symbol_tuple_off_envelope env_psb =
  Tuple_v.map
    Parameter_envelopee_v.parameter_set_fence_symbol_off_parameter_envelopee 
    env_psb
;;

let parameter_set_fence_symbol_tuple_of_tag tag_psb =
  let env_psb = envelope_of_tag tag_psb in
  parameter_set_fence_symbol_tuple_off_envelope env_psb
;;

(** {9 Parameter_symbol Tuple} *)

let parameter_symbol_tuple_off_envelope env_psb =
  let sym_psf_t = parameter_set_fence_symbol_tuple_off_envelope env_psb in 
  Tuple_v.map
    Parameter_symbol_v.parameter_symbol_of_parameter_set_fence_symbol
    sym_psf_t
;;

let parameter_symbol_tuple_of_tag tag_psb =
  let sym_psf_t = parameter_set_fence_symbol_tuple_of_tag tag_psb in 
  Tuple_v.map
    Parameter_symbol_v.parameter_symbol_of_parameter_set_fence_symbol
    sym_psf_t
;;

(** {9 Readee Tuple} *)

let readee_tuple_off_envelope env_psb =
  Tuple_v.map
    Parameter_envelopee_v.readee_off_parameter_envelopee 
    env_psb
;;

let readee_tuple_of_tag tag_psb =
  let env_psb = envelope_of_tag tag_psb in
  readee_tuple_off_envelope env_psb
(* ;; *)

(** {9 Closure off Envelope : tuple of Readee} *)

let closure_off_envelope env_psb =
  readee_tuple_off_envelope env_psb 
;;

let closure_of_tag tag_psb =
  readee_tuple_of_tag tag_psb 
;;

(** {9 Measure Tuple} *)

let measure_tuple_off_envelope env_psb =
  Tuple_v.map
    Parameter_envelopee_v.measure_off_parameter_envelopee 
    env_psb
;;

let measure_tuple_of_tag tag_psb =
  let env_psb = envelope_of_tag tag_psb in
  measure_tuple_off_envelope env_psb 
;;

(** {6 Measure_actual Tuple of Tag} *)

let measure_actual_tuple_of_tag tag_psb =
  let mea_t = measure_tuple_of_tag tag_psb in
  Tuple_v.map Measure_v.measure_actual_off_measure mea_t
;;

(** {6 Measure_canonical Tuple of Tag} *)

let measure_canonical_tuple_of_calculation_name_of_tag nam_cal tag_psb =
  let mea_t = measure_tuple_of_tag tag_psb in
  Tuple_v.map 
    (fun m -> 
      Measure_v.measure_canonical_of_measure_of_calculation_name 
	m nam_cal
    )
    mea_t
;;

(** {9 Units Tuple} *)

let units_tuple_off_envelope env_psb =
  let mea_l = measure_tuple_off_envelope env_psb in
  Tuple_v.map
    Measure_v.units_off_measure 
    mea_l
;;

let units_tuple_of_tag tag_psb =
  let env_psb = envelope_of_tag tag_psb in
  units_tuple_off_envelope env_psb 
;;

(** {9 Float Tuple} *)

let float_tuple_off_envelope env_psb  =
  let mea_t = measure_tuple_off_envelope env_psb in
  Tuple_v.map
    Measure_v.float_off_measure
    mea_t
;;

let float_tuple_of_tag tag_psb =
  let env_psb = envelope_of_tag tag_psb in
  float_tuple_off_envelope env_psb 
;;

(** {6 Naming_for_envelope} *)

let name env_psb =
  Tuple_v.name Parameter_envelopee_v.name env_psb
;;

let string_off env_psb =
  Tuple_v.name Parameter_envelopee_v.string_off env_psb
;;

let shortname env_psb =
  Tuple_v.name Parameter_envelopee_v.shortname env_psb
;;

let dimension env_psb =
  Tuple_v.name Parameter_envelopee_v.dimension env_psb
;;

let fullname env_psb =
  Tuple_v.name Parameter_envelopee_v.fullname env_psb
;;

let longname env_psb =
  Tuple_v.name Parameter_envelopee_v.longname env_psb
;;

