(** {3 Skeleton_set_fence_envelope_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : ESKE:Skeleton_set_fence_envelope_v";
   "Needs : EPAR:Parameter_envelope_v";
   "Needs : ESKE:Skeleton_bridge_by_skeleton_set_fence_tag_provider_v";
   "Bridge : Skeleton_set_fence sof <=> Parameter_set_body_tuple sof";
   "What-is-it : it is a Tuple_list of Parameter_envelopee";
   "What-is-it : its list is a one element list";
   "Definition : Parameter_set_fence_envelope is Parameter_envelopee";
   "Definition : Parameter_set_body_envelope is Parameter_envelopee_tuple";
   "Definition : Skeleton_set_fence_envelope is Parameter_envelopee_tuple one element list";
   "How-is-it-done : its envelope is a Tuple of Parameter_envelopee : the same as its bridged Parameter Tuple";
   "How-is-it-done : its envelope is a list of its Bridge envelope. Calculate thing from Bridge envelope";
   "Abbreviation : Parameter_set_body_tuple = pbt";
   "Author : François Colonna 09 janvier 2017 at 07:48:36+01:00";
   "Author : François Colonna 15 juin 2017 at 09:31:51+02:00";
   "Author : François Colonna 22 juillet 2017 at 16:03:48+02:00 revised";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Bridge *)

let bridge_of_tag tag_ssf =
  Skeleton_bridge_by_skeleton_set_fence_tag_provider_v.provide tag_ssf
;;

let parameter_tag_of_tag tag_ssf =
  bridge_of_tag tag_ssf
;;

let parameter_set_body_tag_of_tag tag_ssf =
  let tag_par = bridge_of_tag tag_ssf in
  Parameter_set_body_tag_v.parameter_set_body_tag_off_parameter_tag tag_par
;;

let parameter_set_body_tuple_tag_of_tag tag_ssf =
  let tag_par = bridge_of_tag tag_ssf in
  Parameter_set_body_tuple_tag_v.parameter_set_body_tuple_tag_off_parameter_tag tag_par
;;

(** {6 Parameter_envelopee Tuple of Tag} *)

let parameter_envelopee_tuple_of_tag tag_ssf =
  let tag_psb = parameter_set_body_tag_of_tag tag_ssf in
  Parameter_envelopee_tuple_v.make_of_parameter_set_body_tag tag_psb 
;;

(** {6 Parameter_envelopee Tuple_list of Tag} *)

let parameter_envelopee_tuple_list_of_tag tag_ssf =
  let pee_t = parameter_envelopee_tuple_of_tag tag_ssf in
  [pee_t]
;;

(** {6 Envelope of Tag} *)

let envelope_of_tag tag_ssf =
  parameter_envelopee_tuple_list_of_tag tag_ssf
;;

(** {6 Making} *)

let make tag_ssf =
  envelope_of_tag tag_ssf 
;;

(** {6 Extracting off Envelope} *)

(** {9 Parameter_set_fence_symbol_tuple of Tag} *)

let parameter_set_fence_symbol_tuple_of_tag tag_ssf =
  let eee_par_t = parameter_envelopee_tuple_of_tag tag_ssf in
  Tuple_v.map 
    Parameter_envelopee_v.parameter_set_fence_symbol_off_parameter_envelopee 
    eee_par_t
;;

(** {9 Parameter_symbol_tuple of Tag} *)

let parameter_symbol_tuple_of_tag tag_ssf =
  let sym_psf_t = parameter_set_fence_symbol_tuple_of_tag tag_ssf in
  Tuple_v.map 
    Parameter_symbol_v.parameter_symbol_of_parameter_set_fence_symbol 
    sym_psf_t
;;

(** {9 Parameter_set_fence_symbol_tuple_list of Tag} *)

let parameter_set_fence_symbol_tuple_list_of_tag tag_ssf =
  let sym_psf_t = parameter_set_fence_symbol_tuple_of_tag tag_ssf in
  [sym_psf_t]
;;

(** {9 Parameter_symbol_tuple_list of Tag} *)

let parameter_symbol_tuple_list_of_tag tag_ssf =
  let sym_psf_tl = parameter_set_fence_symbol_tuple_list_of_tag tag_ssf in
  Tuple_list_v.map 
    Parameter_symbol_v.parameter_symbol_of_parameter_set_fence_symbol 
    sym_psf_tl
;;

(** {9 Parameter_set_fence_symbol_tuple_list_off Envelope} *)

let parameter_set_fence_symbol_tuple_list_off_envelope env_ssf =
  Tuple_list_v.map Doublet_v.first_off_doublet env_ssf
;;

(** {9 Parameter_symbol_tuple_list_off Envelope} *)

let parameter_symbol_tuple_list_off_envelope env_ssf =
  let sym_psf_tl = parameter_set_fence_symbol_tuple_list_off_envelope env_ssf in
  Tuple_list_v.map 
    Parameter_symbol_v.parameter_symbol_of_parameter_set_fence_symbol 
    sym_psf_tl
;;

(** {9 Parameter_set_fence_symbol_tuple off Envelope} *)

let parameter_set_fence_symbol_tuple_off_envelope env_ssf =
  let sym_psf_tl = parameter_set_fence_symbol_tuple_list_off_envelope env_ssf in
  List_v.element_off_one_element_list sym_psf_tl
;;

(** {9 Parameter_symbol_tuple off Envelope} *)

let parameter_set_fence_symbol_tuple_off_envelope env_ssf =
  let sym_psf_t = parameter_set_fence_symbol_tuple_off_envelope env_ssf in
  Tuple_v.map 
    Parameter_symbol_v.parameter_symbol_of_parameter_set_fence_symbol 
    sym_psf_t
;;

(** {9 Readee Tuple_list} *)

let readee_tuple_list_off_envelope env_ssf =
  Tuple_list_v.map Doublet_v.second_off_doublet env_ssf
;;

let readee_tuple_list_of_tag tag_ssf =
  let env_ssf = envelope_of_tag tag_ssf in
  readee_tuple_list_off_envelope env_ssf
;;

(** {9 Closure : list of Readee} *)

let closure_off_envelope env_ssf =
  let rea_tl = readee_tuple_list_off_envelope env_ssf in
  Tuple_list_v.list_of_tuple_list rea_tl
;;

let closure_of_tag tag_ssf =
  let env_ssf = envelope_of_tag tag_ssf in
  closure_off_envelope env_ssf
;;

(** {9 Measure_tuple_list} *)

let measure_tuple_list_off_envelope env_ssf =
  let rea_tl = readee_tuple_list_off_envelope env_ssf in
  Tuple_list_v.map Readee_v.measure_off_readee rea_tl 
;;

let measure_tuple_list_of_tag tag_ssf =
  let env_ssf = envelope_of_tag tag_ssf in
  measure_tuple_list_off_envelope env_ssf
;;

let measure_canonical_tuple_of_calculation_name_of_tag nam_cal tag_ssf =
  let tag_psb = parameter_set_body_tag_of_tag tag_ssf in
  Parameter_set_body_envelope_v.measure_canonical_tuple_of_calculation_name_of_tag nam_cal tag_psb
;;
 
let measure_canonical_tuple_list_of_calculation_name_of_tag nam_cal tag_ssf =
  let mca_t = measure_canonical_tuple_of_calculation_name_of_tag nam_cal tag_ssf in
  [mca_t]
;;

(** {9 Units_tuple_list} *)

let units_tuple_list_off_envelope env_ssf =
  let mea_tl = measure_tuple_list_off_envelope env_ssf in
  Tuple_list_v.map Measure_v.units_off_measure mea_tl
;;

let units_tuple_list_of_tag tag_ssf =
  let env_ssf = envelope_of_tag tag_ssf in
  units_tuple_list_off_envelope env_ssf
;;

(** {9 Float_tuple_list} *)

let float_tuple_list_off_envelope env_ssf  =
  let mea_tl = measure_tuple_list_off_envelope env_ssf in
  Tuple_list_v.map Measure_v.float_off_measure mea_tl 
;;

let float_tuple_list_of_tag tag_ssf =
  let env_ssf = envelope_of_tag tag_ssf in
  float_tuple_list_off_envelope env_ssf
;;

(** {6 Measured_float_tuple} *)

let measured_float_tuple_of_tag tag_ssf =
  let tag_par = bridge_of_tag tag_ssf in
  Measured_float_tuple_by_parameter_tag_provider_v.provide tag_par
;;

(** {6 Naming_for_envelope} *)

let name env_ssf =
  Tuple_list_v.name Parameter_envelopee_v.name env_ssf
;;

let string_off env_ssf =
  Tuple_list_v.name Parameter_envelopee_v.string_off env_ssf
;;

let shortname env_ssf =
  Tuple_list_v.name Parameter_envelopee_v.shortname env_ssf
;;

let dimension env_ssf =
  Tuple_list_v.name Parameter_envelopee_v.dimension env_ssf
;;

let fullname env_ssf =
  Tuple_list_v.name Parameter_envelopee_v.fullname env_ssf
;;

let longname env_ssf =
  Tuple_list_v.name Parameter_envelopee_v.longname env_ssf
;;

