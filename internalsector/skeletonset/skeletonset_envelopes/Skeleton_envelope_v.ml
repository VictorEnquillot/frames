(** {3 Skeleton_envelope_v} *)

(** {6 Documenting_for_envelope} *)

let documentation () = 
  [
   "Current : VSKE:Skeleton_envelope_v";
   "Needs : VSKE:Skeleton_set_fence_envelope_v";
   "Definition : an Envelopee = (Tagged_readee) is a Elementary_envelopee = Parameter_envelopee | Parameter_envelopee";
   "Definition : a  Parameter_envelopee = (Parameter_set_fence_tag, Readee). It is NOT coerced";
   "Definition : a  Parameter_envelopee_tuple = Parameter_envelopee Tuple";
   "Definition : an Envelope is list of Envelopee_tuple. It propagates Tagged Readee along the BT";
   "Definition : the Fence is the Tag list (Coerced Up) of the Leaf Entities of the B-Tree of any Entity";
   "Definition : a Closure is a list of Readee. It valuates the Fence i.e. the Deepest Fence of any Domain";   
   "Definition : Parameter_set_fence_envelope is Parameter_envelopee";
   "Definition : Parameter_set_body_envelope is Parameter_envelopee_tuple";
   "Definition : Skeleton_set_fence_envelope is Parameter_envelopee_tuple one element list";
   "What-is-it : the list of its Parameter_envelopee_tuple";
   "Definition : type parameter_envelope = Parameter_envelopee_t.parameter_envelopee Tuple_t.tuple";
   "How-is-it-done : by building the Flatten List of the Envelopes of its Fence";
   "Abbreviation : psf = skeleton_set_fence";
   "Abbreviation : eee_coo = parameter_envelopee";
   "Abbreviation : env_ske = skeleton_envelope";
   "Author : François Colonna 09 janvier 2017 at 15:23:54+01:00";
   "Author : François Colonna 12 juin 2017 at 15:26:51+02:00 tuple_list";
   "Author : François Colonna 22 juillet 2017 at 16:19:46+02:00 revised";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Fence} *)

let skeleton_set_fence_tag_list_of_tag tag_ske =
  let fen = Skeleton_container_v.fence_as_list_of_tag tag_ske in
  List.map
    Skeleton_set_fence_tag_v.skeleton_set_fence_tag_off_skeleton_tag 
    fen
;;

(** {6 Son Tag List} *)

let skeleton_son_tag_list_of_tag tag_ske =
  Skeleton_son_tag_list_by_skeleton_father_tag_provider_v.provide tag_ske 
;;

(** {6 Fence Envelope of Tag i.e. a tuple list list } *)

let skeleton_set_fence_envelope_list_of_tag tag_ske =
  let tag_ssf_l = skeleton_set_fence_tag_list_of_tag tag_ske in
  List.map
    Skeleton_set_fence_envelope_v.envelope_of_tag
    tag_ssf_l
;;

(** {6 Parameter_envelopee_tuple_list list of Tag from Fence} *)

let parameter_envelopee_tuple_list_list_of_tag tag_ske =
  let tag_ssf_l = skeleton_set_fence_tag_list_of_tag tag_ske in
  List.map
    Skeleton_set_fence_envelope_v.envelope_of_tag
    tag_ssf_l
;;

(** {6 Envelope of Tag : i.e. parameter_envelopee_tuple list} *)

let envelope_of_tag tag_ske =
  let env_ssf_l = parameter_envelopee_tuple_list_list_of_tag tag_ske in
  List.flatten env_ssf_l
;;

(** {6 Making} *)

let make tag_ske =
  envelope_of_tag tag_ske
;;

(** {9 Skeleton_son_envelope_list_of_tag } *)

let skeleton_son_envelope_list_of_tag tag_ske =
  let tag_ske_son_l = skeleton_son_tag_list_of_tag tag_ske in
  List.map envelope_of_tag tag_ske_son_l
;;

(** {6 Extracting off Envelope} *)

(** {9 Parameter_set_fence_symbol Tuple_list} *)

let parameter_set_fence_symbol_tuple_list_off_envelope env_ske =
  List.map 
    Parameter_envelopee_tuple_v.parameter_set_fence_symbol_tuple_off_parameter_envelopee_tuple
    env_ske
;;

let parameter_set_fence_symbol_tuple_list_off_tag tag_ske =
  let env_ske = envelope_of_tag tag_ske in
  parameter_set_fence_symbol_tuple_list_off_envelope env_ske
;;

(** {9 Parameter_symbol Tuple_list} *)

let parameter_symbol_tuple_list_off_envelope env_ske =
  List.map 
    Parameter_envelopee_tuple_v.parameter_symbol_tuple_off_parameter_envelopee_tuple
    env_ske
;;

let parameter_symbol_tuple_list_off_tag tag_ske =
  let env_ske = envelope_of_tag tag_ske in
  parameter_symbol_tuple_list_off_envelope env_ske
;;

(** {9 Readee Tuple_list} *)

let readee_tuple_list_off_envelope env_ske =
  List.map 
    Parameter_envelopee_tuple_v.readee_tuple_off_parameter_envelopee_tuple
    env_ske
;;

let readee_tuple_list_off_tag tag_ske =
  let env_ske = envelope_of_tag tag_ske in
  readee_tuple_list_off_envelope env_ske
;;

(** {9 Closure : tuple_list of Readee} *)

let closure_off_envelope env_ske =
  List.map 
    Parameter_envelopee_tuple_v.closure_off_parameter_envelopee_tuple
    env_ske
;;

(** {6 Measure Tuple_list of Tag} *)

let measure_tuple_list_off_envelope env_ske =
  List.map 
    Parameter_envelopee_tuple_v.measure_tuple_off_parameter_envelopee_tuple
    env_ske
;;

let measure_tuple_list_of_tag tag_ske =
  let env_ske = envelope_of_tag tag_ske in
  measure_tuple_list_off_envelope env_ske
;;

(** {6 Measure_canonical Tuple_list of Tag} *)

let measure_canonical_tuple_list_of_calculation_name_off_envelope nam_cal env_ske =
  let mea_tl = measure_tuple_list_off_envelope env_ske in
  Tuple_list_v.map 
    (fun m -> 
      Measure_v.measure_canonical_of_measure_of_calculation_name 
	m nam_cal
    )
    mea_tl
;;

let measure_canonical_tuple_list_of_calculation_name_of_tag nam_cal tag_ske =
  let env_ske = envelope_of_tag tag_ske in
  measure_canonical_tuple_list_of_calculation_name_off_envelope nam_cal env_ske
;;

(** {9 Units Tuple_list} *)

let units_tuple_list_off_envelope env_ske =
  List.map 
    Parameter_envelopee_tuple_v.units_tuple_off_parameter_envelopee_tuple
    env_ske
;;

let units_tuple_list_off_tag tag_ske =
  let env_ske = envelope_of_tag tag_ske in
  units_tuple_list_off_envelope env_ske
;;

(** {9 Float Tuple_list} *)

let float_tuple_list_off_envelope env_ske =
  List.map 
    Parameter_envelopee_tuple_v.float_tuple_off_parameter_envelopee_tuple
    env_ske
;;

let float_tuple_list_off_tag tag_ske =
  let env_ske = envelope_of_tag tag_ske in
  float_tuple_list_off_envelope env_ske
;;

(** {6 Measured_float_tuple_list} *)

let measured_float_tuple_list_of_tag tag_ske =
  let tag_ssf_l = skeleton_set_fence_tag_list_of_tag tag_ske in
  List.map 
    Skeleton_set_fence_envelope_v.measured_float_tuple_of_tag 
    tag_ssf_l
;;

(** {6 Naming_for_envelope} *)

let name env_ske =
  List_v.name Parameter_envelopee_tuple_v.name env_ske
;;

let string_off env_ske =
  List_v.name Parameter_envelopee_tuple_v.string_off env_ske
;;

let shortname env_ske =
  List_v.name Parameter_envelopee_tuple_v.shortname env_ske
;;

let dimension env_ske =
  List_v.name Parameter_envelopee_tuple_v.dimension env_ske
;;

let fullname env_ske =
  List_v.name Parameter_envelopee_tuple_v.fullname env_ske
;;

let longname env_ske =
  List_v.name Parameter_envelopee_tuple_v.longname env_ske
;;
