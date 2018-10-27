(** {3 Parameter_envelopee_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : EPAR:Parameter_envelopee_v";
   "Needs : EPAR:Elementary_border_parameter_envelope_v";
   "Needed-by : any envelope_v.ml";
   "Definition : an Envelopee = (Labelled_readee) is a Elementary_envelopee = Parameter_envelopee | Parameter_envelopee";
   "What-is-it : it is (Parameter_set_fence_symbol, Readee) generalization of old belts";
   "What-is-it : it provide the Measure for a specific Parameter_set_fence Tag";
   "What-is-it : it is the Building brick of all Envelopes";
   "Author : François Colonna 27 décembre 2016 at 13:28:23+01:00";
   "Author : François Colonna 06 mai 2017 at 14:20:39+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

(** {6 Making} *)

let parameter_envelopee_of_parameter_set_fence_tag tag_psf =
  let rea = Readee_by_parameter_set_fence_tag_provider_v.provide tag_psf in
  let sym_psf = Tag_v.entity_off_tag tag_psf in
  Doublet_v.make sym_psf rea
;;

let make tag_psf =
  parameter_envelopee_of_parameter_set_fence_tag tag_psf
;;

(** {6 Extracting} *)

let parameter_set_fence_symbol_off_parameter_envelopee eee_par =
  Doublet_v.left_off_doublet eee_par
;;

let parameter_symbol_off_parameter_envelopee eee_par =
  let sym_psf = parameter_set_fence_symbol_off_parameter_envelopee eee_par in
  Parameter_symbol_v.parameter_symbol_of_parameter_set_fence_symbol sym_psf
;;

let readee_off_parameter_envelopee eee_par =
  Doublet_v.right_off_doublet eee_par
;;

let measure_off_parameter_envelopee eee_par =
  let rea = readee_off_parameter_envelopee eee_par in
  Readee_v.measure_off_readee rea
;;

let measure_canonical_of_calculation_name_off_parameter_envelopee nam_cal eee_par =
  let mea = measure_off_parameter_envelopee eee_par in
  Measure_v.measure_canonical_of_measure_of_calculation_name mea nam_cal
;;

(** {6 Float} *)

let float_off_parameter_envelopee eee_par  =
  let mea = measure_off_parameter_envelopee eee_par in
  Measure_v.float_off_measure mea 
;;

(** {6 Units} *)

let units_off_parameter_envelopee eee_par =
  let mea = measure_off_parameter_envelopee eee_par in
  Measure_v.units_off_measure mea
;;

(** {6 Naming} *)

let name eee_par =
  Doublet_v.name Parameter_set_fence_symbol_v.name Readee_v.name eee_par
;;

let shortname eee_par =
  let sym_psf = parameter_set_fence_symbol_off_parameter_envelopee eee_par in
  let nam_par = Parameter_set_fence_symbol_v.name sym_psf in
  let str_l = String_v.split_of_character_of_string '_' nam_par in
  let sna_par = List_v.penultimate_element_off_list str_l in
  let sof_par = Parameter_set_fence_symbol_v.string_off sym_psf in

  let rea = readee_off_parameter_envelopee eee_par in
  let sna_rea = Readee_v.shortname rea in
  Format.sprintf "(\"%s\" %s %s)" sof_par sna_par sna_rea
;;

let string_off eee_par =
  let sym_psf = parameter_set_fence_symbol_off_parameter_envelopee eee_par in
  Parameter_set_fence_symbol_v.string_off sym_psf 
;;

let dimension eee_par =
  let mea = measure_off_parameter_envelopee eee_par in
  Measure_v.dimension mea
;;

let longname eee_par = 
  Doublet_v.name Parameter_set_fence_symbol_v.longname Readee_v.longname eee_par
;;

let fullname eee_par =
  Doublet_v.name Parameter_set_fence_symbol_v.fullname Readee_v.fullname eee_par
;;

