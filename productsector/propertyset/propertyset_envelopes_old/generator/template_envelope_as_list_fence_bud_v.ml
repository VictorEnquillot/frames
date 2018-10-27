(** {3 This_envelope_v} *)

(** {6 Documenting_for_envelope} *)

let documentation () = 
  [
   "Current : VPRO:This_envelope_v";
   "Needs : VPRO:Coeup_symbol_v";
   "Needs : VPRO:Coeupup_symbol_v";
   "Needs : VPRO:Readee_by_coeup_tag_provider_v";
   "Needed-by : ";
   "Definition : an Envelopee = (Tagged_readee) is a Elementary_envelopee = Coordinate_envelopee | Parameter_envelopee";
   "Definition : a  Parameter_envelopee = (Coeupup_tag, Readee). It is NOT coerced";
   "Definition : an Envelope is a list of Envelopee. It propagates Tagged Readee along the BT";
   "Definition : a Closure is a list of Readee. It valuates the Elementary_fence i.e. the Deepestfence of any Domain";
   "What-is-it : one element list of itself Coerced Up to Coeupup";
   "Abbreviation : psf = parameter_set_fence";
   "Abbreviation : pfa = parameter_set_fence_aopef";
   "Abbreviation : pfe = parameter_set_fence_ecppef";
   "Abbreviation : pac = parameter_set_fence_aopef_coefficient";
   "Abbreviation : pae = parameter_set_fence_aopef_exponent";
   "Abbreviation : pec = parameter_set_fence_ecppef_coefficient";
   "Abbreviation : pee = parameter_set_fence_ecppef_exponent";
   "Abbreviation : eee_par = parameter_envelopee";
   "Abbreviation : env_par = parameter_envelope";
   "Author : François Colonna 13 décembre 2016 at 08:33:07+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Coercing Up Tag} *)

let coerce_up_of_tag tag_ttt =
  Tag_v.map_entity 
    Coeup_symbol_v.coeup_symbol_of_this_symbol 
    tag_ttt
;;

(** {6 Coercing Up Up Tag} *)

let coerce_up_up_of_tag tag_ttt =
  Tag_v.map_entity 
    Coeupup_symbol_v.coeupup_symbol_of_this_symbol 
    tag_ttt
;;

(** {6 Readee of Tag} *)

let readee_of_tag tag_ttt =
  let tag_cup = coerce_up_of_tag tag_ttt in
  Readee_by_coeup_tag_provider_v.provide tag_cup
;;

(** {6 Parameter_envelopee of Tag} *)

let parameter_envelopee_of_tag tag_ttt =
  let tag_cuu = coerce_up_up_of_tag tag_ttt in
  let rea = readee_of_tag tag_ttt in
  Doublet_v.make tag_cuu rea
;;

(** {6 Envelope of Tag} *)

let envelope_of_tag tag_ttt =
  let eee_par = parameter_envelopee_of_tag tag_ttt in
  [eee_par]
;;

(** {6 Measure of Tag} *)

let measure_of_tag tag_ttt =
  let eee_par = parameter_envelopee_of_tag tag_ttt in
  Parameter_envelopee_v.measure_off_parameter_envelopee eee_par
;;

let measure_list_of_tag tag_ttt =
  let mea = measure_of_tag tag_ttt in
  [mea]
;;

let measure_canonical_of_calculation_name_of_tag nam_cal tag_ttt =
  let mea = measure_of_tag tag_ttt in
  Measure_v.measure_canonical_of_measure_of_calculation_name mea
;;

let measure_canonical_list_of_calculation_name_of_tag nam_cal tag_ttt =
  let mac = measure_canonical_of_calculation_name_of_tag nam_cal tag_ttt in
  [mac]
;;

(** {6 Parameter_envelopee off Envelope} *)

let parameter_envelopee_off_envelope env_ttt =
  try List_v.element_off_one_element_list env_ttt 
  with Failure _ -> 
    Error_messages_v.print_fatal_error __LOC__ "parameter_envelopee_off_envelope"
      "One element list"
      (Format.sprintf "Parameter_envelopee list is :@.   %s" (List_v.name Parameter_envelopee_v.fullname env_ttt))
      "Check"
;;

(** {6 Extracting} *)

(** {9 Coeupup_tag off Envelope} *)

let coeupup_tag_off_envelope env_ttt =
  let eee_par = parameter_envelopee_off_envelope env_ttt in
  Parameter_envelopee_v.coeupup_tag_off_parameter_envelopee eee_par
;;
 
let parameter_tag_off_envelope env_ttt =
  let eee_par = parameter_envelopee_off_envelope env_ttt in
  Parameter_envelopee_v.parameter_tag_off_parameter_envelopee eee_par
;;

(** {9 Readee off Envelope} *)

let readee_off_envelope env_ttt =
  let env = parameter_envelopee_off_envelope env_ttt in
  Parameter_envelopee_v.readee_off_parameter_envelopee env
;;

(** {9 Measure off Envelope} *)

let measure_off_envelope env_ttt =
  let eee_par = parameter_envelopee_off_envelope env_ttt in
  Parameter_envelopee_v.measure_off_parameter_envelopee eee_par
;;

(** {9 Units} *)

let units_off_envelope env_ttt =
  let mea = measure_off_envelope env_ttt in
  Measure_v.units_off_measure mea
;;

(** {9 Float} *)

let float_off_envelope env_ttt  =
  let mea = measure_off_envelope env_ttt in
  Measure_v.float_off_measure mea 
;;

(** {9 Closure : list of Readee} *)

let closure_off_envelope env_ttt =
  let rea = readee_off_envelope env_ttt in
  [rea]
;;

(** {6 Making_of_tag } *)

(** {9 Closure : list of Readee} *)

let closure_of_tag tag_ttt =
  let rea = readee_of_tag tag_ttt in
  [rea]
;;

(** {9 Measure} *)

let measure_of_tag tag_ttt = 
  let rea = readee_of_tag tag_ttt in
  Readee_v.measure_off_readee rea 
;;

(** {9 Units} *)

let units_of_tag tag_ttt =
  let mea = measure_of_tag tag_ttt in
  Measure_v.units_off_measure mea
;;

(** {9 Float} *)

let float_of_tag tag_ttt  =
  let mea = measure_of_tag tag_ttt in
  Measure_v.float_off_measure mea 
;;

(** {6 Naming_for_envelope} *)

let name env_ttt =
  List_v.name Parameter_envelopee_v.name env_ttt
;;

let string_off env_ttt =
  List_v.name Parameter_envelopee_v.name env_ttt
;;

let fullname env_ttt =
  List_v.name Parameter_envelopee_v.fullname env_ttt
;;

let longname env_ttt =
  List_v.name Parameter_envelopee_v.longname env_ttt
;;
