(** {3 Figure_set_fence_envelope_v}  *)

(** {6 Documenting} *)

let documentation () = 
   [
   "Current : EFIG:Figure_set_fence_envelope_v";
   "Needs : ECOO:Coordinate_envelope_v";
   "Needs : ECOO:Measured_float_tuple_by_coordinate_set_body_tuple_tag_provider_v";
   "Needs : EFIG:Figure_bridge_by_figure_set_fence_tag_provider_v";
   "Bridge : Figure_set_fence sof <=> Coordinate_set_body_tuple sof";
   "What-is-it : it is a Tuple_list of Coordinate_envelopee";
   "What-is-it : its list is a one element list";
   "Definition : Coordinate_set_fence_envelope is Coordinate_envelopee";
   "Definition : Coordinate_set_body_envelope is Coordinate_envelopee_tuple";
   "Definition : Figure_set_fence_envelope is Coordinate_envelopee_tuple one element list";
   "How-is-it-done : its envelope is a Tuple of Coordinate_envelopee : the same as its bridged Coordinate Tuple";
   "How-is-it-done : its envelope is a list of its Bridge envelope. Calculate thing from Bridge envelope";
   "Abbreviation : Coordinate_set_body_tuple = pbt";
   "Author : François Colonna 17 juin 2017 at 16:52:24+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Calculating of Tag} *)

(** {9 Bridge of Tag *)

let bridge_of_tag tag_fsf =
  Figure_bridge_by_figure_set_fence_tag_provider_v.provide tag_fsf 
;;

let coordinate_set_body_tag_of_tag tag_fsf =
  let tag_coo = bridge_of_tag tag_fsf in
  Coordinate_set_body_tag_v.coordinate_set_body_tag_off_coordinate_tag tag_coo
;;

(** {6 Coordinate_envelopee Tuple of Tag} *)

let coordinate_envelopee_tuple_of_tag tag_fsf =
  let tag_coo = bridge_of_tag tag_fsf in
  Coordinate_envelopee_tuple_v.make tag_coo
;;

(** {6 Coordinate_envelopee Tuple_list of Tag} *)

let coordinate_envelopee_tuple_list_of_tag tag_fsf =
  let eee_coo_t = coordinate_envelopee_tuple_of_tag tag_fsf in
  [eee_coo_t]
;;

(** {9 Envelope of Tag} *)

let envelope_of_tag tag_fsf =
  coordinate_envelopee_tuple_list_of_tag tag_fsf
;;

(** {6 Making} *)

let make tag_fsf =
  envelope_of_tag tag_fsf 
;;

(** {6 Extracting off Envelope} *)

(** {9 Coordinate_set_fence_symbol_tuple of Tag} *)

let coordinate_set_fence_symbol_tuple_of_tag tag_fsf =
  let eee_coo_t = coordinate_envelopee_tuple_of_tag tag_fsf in
  Tuple_v.map 
    Coordinate_envelopee_v.coordinate_set_fence_symbol_off_coordinate_envelopee 
    eee_coo_t
;;

(** {9 Coordinate_symbol_tuple of Tag} *)

let coordinate_symbol_tuple_of_tag tag_fsf =
  let sym_csf_t = coordinate_set_fence_symbol_tuple_of_tag tag_fsf in
  Tuple_v.map 
    Coordinate_symbol_v.coordinate_symbol_of_coordinate_set_fence_symbol 
    sym_csf_t
;;

(** {9 Coordinate_set_fence_symbol_tuple_list of Tag} *)

let coordinate_set_fence_symbol_tuple_list_of_tag tag_fsf =
  let sym_csf_t = coordinate_set_fence_symbol_tuple_of_tag tag_fsf in
  [sym_csf_t]
;;

(** {9 Coordinate_symbol_tuple_list of Tag} *)

let coordinate_symbol_tuple_list_of_tag tag_fsf =
  let sym_csf_tl = coordinate_set_fence_symbol_tuple_list_of_tag tag_fsf in
  Tuple_list_v.map 
    Coordinate_symbol_v.coordinate_symbol_of_coordinate_set_fence_symbol 
    sym_csf_tl
;;

(** {9 Coordinate_set_fence_symbol_tuple_list_off Envelope} *)

let coordinate_set_fence_symbol_tuple_list_off_envelope env_fsf =
  Tuple_list_v.map Doublet_v.first_off_doublet env_fsf
;;

(** {9 Coordinate_symbol_tuple_list_off Envelope} *)

let coordinate_symbol_tuple_list_off_envelope env_fsf =
  let sym_csf_tl = coordinate_set_fence_symbol_tuple_list_off_envelope env_fsf in
  Tuple_list_v.map 
    Coordinate_symbol_v.coordinate_symbol_of_coordinate_set_fence_symbol 
    sym_csf_tl
;;

(** {9 Coordinate_set_fence_symbol_tuple off Envelope} *)

let coordinate_set_fence_symbol_tuple_off_envelope env_fsf =
  let sym_csf_tl = coordinate_set_fence_symbol_tuple_list_off_envelope env_fsf in
  List_v.element_off_one_element_list sym_csf_tl
;;

(** {9 Coordinate_symbol_tuple off Envelope} *)

let coordinate_symbol_tuple_off_envelope env_fsf =
  let sym_csf_t = coordinate_set_fence_symbol_tuple_off_envelope env_fsf in
  Tuple_v.map 
    Coordinate_symbol_v.coordinate_symbol_of_coordinate_set_fence_symbol 
    sym_csf_t
;;

(** {9 Readee Tuple_list} *)

let readee_tuple_list_off_envelope env_fsf =
  Tuple_list_v.map Doublet_v.second_off_doublet env_fsf
;;

let readee_tuple_list_of_tag tag_fsf =
  let env_fsf = envelope_of_tag tag_fsf in
  readee_tuple_list_off_envelope env_fsf
;;

(** {9 Closure : list of Readee} *)

let closure_off_envelope env_fsf =
  let rea_tl = readee_tuple_list_off_envelope env_fsf in
  Tuple_list_v.list_of_tuple_list rea_tl
;;

let closure_of_tag tag_fsf =
  let env_fsf = envelope_of_tag tag_fsf in
  closure_off_envelope env_fsf
;;

(** {9 Measure_tuple_list} *)

let measure_tuple_list_off_envelope env_fsf =
  let rea_tl = readee_tuple_list_off_envelope env_fsf in
  Tuple_list_v.map Readee_v.measure_off_readee rea_tl 
;;

let measure_tuple_list_of_tag tag_fsf =
  let env_fsf = envelope_of_tag tag_fsf in
  measure_tuple_list_off_envelope env_fsf
;;

let measure_canonical_tuple_of_calculation_name_of_tag nam_cal tag_fsf =
  let tag_csb = coordinate_set_body_tag_of_tag tag_fsf in
  Coordinate_set_body_envelope_v.measure_canonical_tuple_of_calculation_name_of_tag nam_cal tag_csb
;;
 
let measure_canonical_tuple_list_of_calculation_name_of_tag nam_cal tag_fsf =
  let mca_t = measure_canonical_tuple_of_calculation_name_of_tag nam_cal tag_fsf in
  [mca_t]
;;

(** {9 Units_tuple_list} *)

let units_tuple_list_off_envelope env_fsf =
  let mea_tl = measure_tuple_list_off_envelope env_fsf in
  Tuple_list_v.map Measure_v.units_off_measure mea_tl
;;

let units_tuple_list_of_tag tag_fsf =
  let env_fsf = envelope_of_tag tag_fsf in
  units_tuple_list_off_envelope env_fsf
;;

(** {9 Float_tuple_list} *)

let float_tuple_list_off_envelope env_fsf  =
  let mea_tl = measure_tuple_list_off_envelope env_fsf in
  Tuple_list_v.map Measure_v.float_off_measure mea_tl 
;;

let float_tuple_list_of_tag tag_fsf =
  let env_fsf = envelope_of_tag tag_fsf in
  float_tuple_list_off_envelope env_fsf
;;

(** {6 Measured_float_tuple} *)

let measured_float_tuple_of_tag tag_fsf =
  let tag_coo = bridge_of_tag tag_fsf in
  Measured_float_tuple_by_coordinate_tag_provider_v.provide tag_coo
;;

(** {6 Naming} *)

let name env_fsf =
  Tuple_list_v.name Coordinate_envelopee_v.name env_fsf
;;

let string_off env_fsf =
  Tuple_list_v.name Coordinate_envelopee_v.name env_fsf
;;

let shortname env_fsf =
  Tuple_list_v.name Coordinate_envelopee_v.shortname env_fsf
;;

let fullname env_fsf =
  Tuple_list_v.name Coordinate_envelopee_v.fullname env_fsf
;;

let longname env_fsf =
  Tuple_list_v.name Coordinate_envelopee_v.longname env_fsf
;;

