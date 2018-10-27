(** {3 Parameter_envelopee_tuple_v} *)

(** {6 Documenting_for_envelope} *)

let documentation () = 
  [
   "Current : EPAR:Parameter_envelopee_tuple_v";
   "Needed-by : ";
   "Definition : an Envelopee = (Labelled_readee) is a Elementary_envelopee = Parameter_envelopee | Coordinate_envelopee_tuplee";
   "Definition : Parameter_set_fence_envelope is Parameter_envelopee";
   "Definition : Parameter_set_body_envelope is Parameter_envelopee_tuple";
   "Definition : a Closure is a list of Readee. It valuates the Fence i.e. the Deepestfence of any Domain";   
   "Author : François Colonna 15 juin 2017 at 15:50:57+02:00";
   "Author : François Colonna 22 juillet 2017 at 16:27:30+02:00 revised";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {9 Envelopee_tuple of Tag} *)

let parameter_envelopee_tuple_of_parameter_set_body_tuple_tag tag_pbt =
  let tag_par_pbt_t = 
    Parameter_set_body_tuple_container_v.fence_as_tuple_of_tag 
      tag_pbt 
  in
  let tag_pbt_t = Tuple_v.map
      Parameter_set_fence_tag_v.parameter_set_fence_tag_off_parameter_tag 
      tag_par_pbt_t
  in
  Tuple_v.map
    Parameter_envelopee_v.parameter_envelopee_of_parameter_set_fence_tag 
      tag_pbt_t
;;

let parameter_envelopee_tuple_of_parameter_set_body_tag tag_psb =
  let tag_pbt = Tag_v.map_entity 
      Parameter_set_body_symbol_v.parameter_set_body_tuple_symbol_off_parameter_set_body_symbol
      tag_psb
  in
  parameter_envelopee_tuple_of_parameter_set_body_tuple_tag tag_pbt
;;

(** {6 Making} *)

let make_of_parameter_set_body_tuple_tag tag_pbt =
  parameter_envelopee_tuple_of_parameter_set_body_tuple_tag tag_pbt
;;

let make_of_parameter_set_body_tag tag_psb =
  parameter_envelopee_tuple_of_parameter_set_body_tag tag_psb
;;

(** {9 Envelopee_tuple_as Trio of Tag} *)

let parameter_envelopee_tuple_as_trio_of_tag tag_pbt =
  let env_pbt_t = make_of_parameter_set_body_tuple_tag tag_pbt in
  try Tuple_v.trio_of_tuple env_pbt_t 
  with Failure ("Not_a_trio:Tuple_v.trio_of_tuple") -> 
    Error_messages_v.print_fatal_error __LOC__ "parameter_envelopee_tuple_as_trio_of_tag"
      (Format.sprintf "Parameter Tuple Envelope %s for Tag %s were a Trio" 
	 (Tuple_v.name Parameter_envelopee_v.fullname env_pbt_t)
	 (Parameter_set_body_tuple_tag_v.fullname tag_pbt)
      )
      "it is NOT" 
      "Check" 
;;

(** {9 Envelope_as Duo of Tag} *)

let parameter_envelopee_tuple_as_duo_of_tag tag_pbt =
  let env_pbt_t = make_of_parameter_set_body_tuple_tag tag_pbt in
  try Tuple_v.duo_of_tuple env_pbt_t 
  with Failure ("Not_a_duo:Tuple_v.duo_of_tuple") -> 
    Error_messages_v.print_fatal_error __LOC__ "parameter_envelopee_tuple_as_duo_of_tag"
      (Format.sprintf "Parameter Tuple Envelope %s for Tag %s were a Duo" 
	 (Tuple_v.name Parameter_envelopee_v.fullname env_pbt_t)
	 (Parameter_set_body_tuple_tag_v.fullname tag_pbt)
      )
      "it is NOT" 
      "Check" 
;;


(** {6 Extracting off Envelope} *)

(** {9 Parameter_set_fence_symbol Tuple} *)

let parameter_set_fence_symbol_tuple_off_parameter_envelopee_tuple eee_par_t =
  Tuple_v.map
    Parameter_envelopee_v.parameter_set_fence_symbol_off_parameter_envelopee 
    eee_par_t
;;

let parameter_symbol_tuple_off_parameter_envelopee_tuple eee_par_t =
  let sym_psf_t = 
    parameter_set_fence_symbol_tuple_off_parameter_envelopee_tuple 
      eee_par_t 
  in
  Tuple_v.map
    Parameter_symbol_v.parameter_symbol_of_parameter_set_fence_symbol
    sym_psf_t
;;

(** {9 Readee Tuple} *)

let readee_tuple_off_parameter_envelopee_tuple eee_par_t =
  Tuple_v.map
    Parameter_envelopee_v.readee_off_parameter_envelopee 
    eee_par_t
;;

(** {9 Closure off Envelope : tuple of Readee} *)

let closure_off_parameter_envelopee_tuple eee_par_t =
  readee_tuple_off_parameter_envelopee_tuple eee_par_t 
;;

(** {9 Measure Tuple} *)

let measure_tuple_off_parameter_envelopee_tuple eee_par_t =
  Tuple_v.map
    Parameter_envelopee_v.measure_off_parameter_envelopee 
    eee_par_t
;;

(** {6 Measure_canonical Tuple} *)

let measure_canonical_tuple_of_calculation_name_off_envelopee nam_cal eee_par_t =
  Tuple_v.map
    Parameter_envelopee_v.measure_off_parameter_envelopee 
    eee_par_t
;;

(** {6 Measure Trio of Tag} *)

let measure_trio_of_tag tag_pbt =
  let env_pbt_t = parameter_envelopee_tuple_as_trio_of_tag tag_pbt in
  Trio_v.map 
    Parameter_envelopee_v.measure_off_parameter_envelopee 
    env_pbt_t
;;

(** {6 Measure_actual Trio of Tag} *)

let measure_actual_trio_of_tag tag_pbt =
  let mea_t = measure_trio_of_tag tag_pbt in
  Trio_v.map Measure_v.measure_actual_off_measure mea_t
;;

(** {6 Measure_canonical Trio of Tag} *)

let measure_canonical_trio_of_calculation_name_of_tag nam_cal tag_pbt =
  let mea_l = measure_trio_of_tag tag_pbt in
  Trio_v.map 
    (fun m -> 
      Measure_v.measure_canonical_of_measure_of_calculation_name 
	m nam_cal
    )
    mea_l
;;

(** {6 Measure Duo of Tag} *)

let measure_duo_of_tag tag_pbt =
  let env_pbt_t = parameter_envelopee_tuple_as_duo_of_tag tag_pbt in
  Duo_v.map 
    Parameter_envelopee_v.measure_off_parameter_envelopee 
    env_pbt_t
;;

(** {6 Measure_actual Duo of Tag} *)

let measure_actual_duo_of_tag tag_pbt =
  let mea_t = measure_duo_of_tag tag_pbt in
  Duo_v.map Measure_v.measure_actual_off_measure mea_t
;;

(** {6 Measure_canonical Duo of Tag} *)

let measure_canonical_duo_of_calculation_name_of_tag nam_cal tag_pbt =
  let mea_l = measure_duo_of_tag tag_pbt in
  Duo_v.map 
    (fun m -> 
      Measure_v.measure_canonical_of_measure_of_calculation_name 
	m nam_cal
    )
    mea_l
;;

(** {9 Units Tuple} *)

let units_tuple_off_parameter_envelopee_tuple eee_par_t =
  let mea_l = measure_tuple_off_parameter_envelopee_tuple eee_par_t in
  Tuple_v.map
    Measure_v.units_off_measure 
    mea_l
;;

(** {9 Float Tuple} *)

let float_tuple_off_parameter_envelopee_tuple eee_par_t  =
  let mea_t = measure_tuple_off_parameter_envelopee_tuple eee_par_t in
  Tuple_v.map
    Measure_v.float_off_measure
    mea_t
;;

(** {6 Naming_for_envelope} *)

let name eee_par_t =
  Tuple_v.name Parameter_envelopee_v.name eee_par_t
;;

let shortname eee_par_t =
  Tuple_v.name Parameter_envelopee_v.shortname eee_par_t
;;

let string_off eee_par_t =
  Tuple_v.name Parameter_envelopee_v.string_off eee_par_t
;;

let dimension eee_par_t =
  Tuple_v.name Parameter_envelopee_v.dimension eee_par_t
;;

let fullname eee_par_t =
  Tuple_v.name Parameter_envelopee_v.fullname eee_par_t
;;

let longname eee_par_t =
  Tuple_v.name Parameter_envelopee_v.longname eee_par_t
;;

