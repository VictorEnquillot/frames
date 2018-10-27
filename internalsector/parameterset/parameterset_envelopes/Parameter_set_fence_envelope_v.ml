(** {3 Parameter_set_fence_envelope_v} *)

(** {6 Documenting_for_envelope} *)

let documentation () = 
  [
   "Current : EPAR:Parameter_set_fence_envelope_v";
   "Needed-by : ";
   "Definition : an Envelopee = (Labelled_readee) is a Elementary_envelopee = Parameter_envelopee | Parameter_envelopee";
   "Definition : a  Parameter_set_fence_envelopee = (Parameter_set_fence_symbol, Readee)";
   "Definition : an Envelope is a tuple_list of Envelopee. It propagates Labelled Readee along the BT";
   "Definition : a Closure is a list of Readee. It valuates the Fence i.e. the Deepestfence of any Domain";   
   "What-is-it : the Envelope for Parameter_set_fence_symbol e.g. Parameter_envelopee";
   "Remark : Parameter_envelope_t is NOT coerced";
   "Author : François Colonna 06 janvier 2017 at 15:48:43+01:00";
   "Author : François Colonna 04 mai 2017 at 11:49:22+02:00 tag -> symbol";
   "Author : François Colonna 12 juin 2017 at 15:14:26+02:00 tuple not list";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_envelope} *)

let name env_psf =
  Parameter_envelopee_v.name env_psf
;;

let string_off env_psf =
  Parameter_envelopee_v.string_off env_psf
;;

let shortname env_psf =
  Parameter_envelopee_v.shortname env_psf
;;

let fullname env_psf =
  Parameter_envelopee_v.fullname env_psf
;;

let longname env_psf =
  Parameter_envelopee_v.longname env_psf
;;

(** {9 Envelopee Tuple of Tag} *)

let parameter_envelopee_of_tag tag_psf =
  Parameter_envelopee_v.parameter_envelopee_of_parameter_set_fence_tag tag_psf
;;

let parameter_envelopee_tuple_of_tag tag_psf =
  let pee = parameter_envelopee_of_tag tag_psf in
  Tuple_v.tuple_of_uno (Uno_v.make pee)
;;

(** {6 Envelope of Tag} *)

let envelope_of_tag tag_psf =
  parameter_envelopee_of_tag tag_psf 
;;

(** {9 Envelope_as Tuple of Tag} *)

let envelope_as_tuple_of_tag tag_psf =
  parameter_envelopee_tuple_of_tag tag_psf
;;

(** {6 Making} *)

let make tag_psf =
  envelope_of_tag tag_psf
;;

(** {9 Parameter_set_fence_symbol of Tag} *)

let parameter_set_fence_symbol_of_tag tag_psf =
  Tag_v.entity_off_tag tag_psf
;;

(** {9 Parameter_set_fence_symbol Tuple of Tag} *)

let parameter_set_fence_symbol_tuple_of_tag tag_psf =
  let sym_psf = parameter_set_fence_symbol_of_tag tag_psf in
  Tuple_v.tuple_of_uno (Uno_v.make sym_psf)
;;

(** {9 Parameter_symbol of Tag} *)

let parameter_symbol_of_tag tag_psf =
  let sym_psf = parameter_set_fence_symbol_of_tag tag_psf in 
  Parameter_symbol_v.parameter_symbol_of_parameter_set_fence_symbol sym_psf
;;

(** {9 Parameter_symbol Tuple of Tag} *)

let parameter_symbol_tuple_of_tag env_psf =
  let sym_par = parameter_symbol_of_tag env_psf in 
  Tuple_v.tuple_of_uno (Uno_v.make sym_par)
;;

(** {6 Measure of Tag} *)

let measure_of_tag tag_psf =
  let env_psf = envelope_of_tag tag_psf in
  Parameter_envelopee_v.measure_off_parameter_envelopee env_psf
;;

(** {6 Measure_actual of Tag} *)

let measure_actual_of_tag tag_psf =
  let mea = measure_of_tag tag_psf in
  Measure_v.measure_actual_off_measure mea
;;

(** {6 Measure_canonical of Tag} *)

let measure_canonical_of_calculation_name_of_tag nam_cal tag_psf =
  let mea = measure_of_tag tag_psf in
  Measure_v.measure_canonical_of_measure_of_calculation_name mea nam_cal
;;
 
(** {6 Measure Tuple of Tag} *)

let measure_tuple_of_tag tag_psf =
  let mea = measure_of_tag tag_psf in
  Tuple_v.tuple_of_uno (Uno_v.make mea)
;;

(** {6 Measure_actual Tuple of Tag} *)

let measure_actual_tuple_of_tag tag_psf =
  let mac = measure_actual_of_tag tag_psf in
  Tuple_v.tuple_of_uno (Uno_v.make mac)
;;

(** {6 Measure_canonical Tuple of Tag} *)

let measure_canonical_tuple_of_calculation_name_of_tag nam_cal tag_psf =
  let mca = measure_canonical_of_calculation_name_of_tag nam_cal tag_psf in
  Tuple_v.tuple_of_uno (Uno_v.make mca)
;;

(** {9 Units of Tag} *)

let units_of_tag tag_psf =
  let mea = measure_of_tag tag_psf in
  Measure_v.units_off_measure mea
;;

(** {9 Units Tuple of Tag} *)

let units_tuple_of_tag tag_psf =
  let uni = units_of_tag tag_psf in
  Tuple_v.tuple_of_uno (Uno_v.make uni)
;;

(** {9 Float of Tag} *)

let float_of_tag tag_psf  =
  let mea = measure_of_tag tag_psf in
  Measure_v.float_off_measure mea
;;

(** {9 Float Tuple of Tag} *)

let float_tuple_of_tag tag_psf  =
  let flo = float_of_tag tag_psf in
  Tuple_v.tuple_of_uno (Uno_v.make flo)
;;

(** {6 Readee of Tag} *)

let readee_of_tag tag_psf =
  let env = envelope_of_tag tag_psf in
  Parameter_envelopee_v.readee_off_parameter_envelopee env
;;

(** {6 Readee Tuple of Tag} *)

let readee_tuple_of_tag tag_psf =
  let rea = readee_of_tag tag_psf in
  Tuple_v.tuple_of_uno (Uno_v.make rea)
;;

(** {9 Closure of Tag : tuple of Readee} *)

let closure_of_tag tag_psf =
  readee_of_tag tag_psf
;;

(** {6 Extracting off Envelope} *)

(** {9 Parameter_set_fence_symbol off Envelope} *)

let parameter_set_fence_symbol_off_envelope env_psf =
  Parameter_envelopee_v.parameter_set_fence_symbol_off_parameter_envelopee env_psf
;;

(** {9 Parameter_set_fence_symbol Tuple off Envelope} *)

let parameter_set_fence_symbol_tuple_off_envelope env_psf =
  let sym_psf = parameter_set_fence_symbol_off_envelope env_psf in
  Tuple_v.tuple_of_uno (Uno_v.make sym_psf)
;;

(** {9 Parameter_symbol off Envelope} *)

let parameter_symbol_off_envelope env_psf =
  let sym_psf = parameter_set_fence_symbol_off_envelope env_psf in 
  Parameter_symbol_v.parameter_symbol_of_parameter_set_fence_symbol sym_psf
;;

(** {9 Parameter_symbol Tuple off Envelope} *)

let parameter_symbol_tuple_off_envelope env_psf =
  let sym_par = parameter_symbol_off_envelope env_psf in 
  Tuple_v.tuple_of_uno (Uno_v.make sym_par)
;;

(** {9 Readee off Envelope} *)

let readee_off_envelope env_psf =
  Parameter_envelopee_v.readee_off_parameter_envelopee env_psf
;;

(** {9 Readee Tuple off Envelope} *)

let readee_tuple_off_envelope env_psf =
  let rea = readee_off_envelope env_psf in
  Tuple_v.tuple_of_uno (Uno_v.make rea)
;;

(** {9 Closure off Envelope : tuple of Readee} *)

let closure_off_envelope env_psf =
  readee_off_envelope env_psf 
;;

(** {9 Measure Tuple off Envelope} *)

let measure_off_envelope env_psf =
  Parameter_envelopee_v.measure_off_parameter_envelopee env_psf
;;

(** {9 Measure Tuple off Envelope} *)

let measure_tuple_off_envelope env_psf =
  let mea = measure_off_envelope env_psf in
  Tuple_v.tuple_of_uno (Uno_v.make mea)
;;

(** {9 Float off Envelope} *)

let float_off_envelope env_psf  =
  Parameter_envelopee_v.float_off_parameter_envelopee env_psf
;;

(** {9 Float Tuple off Envelope} *)

let float_tuple_off_envelope env_psf  =
  let flo = float_off_envelope env_psf in
  Tuple_v.tuple_of_uno (Uno_v.make flo)
;;

(** {9 Units off Envelope} *)

let units_off_envelope env_psf =
  Parameter_envelopee_v.units_off_parameter_envelopee env_psf
;;

(** {9 Units Tuple off Envelope} *)

let units_tuple_off_envelope env_psf =
  let uni = units_off_envelope env_psf in
  Tuple_v.tuple_of_uno (Uno_v.make uni)
;;


