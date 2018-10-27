(** {3 Coordinate_set_body_envelope_v} *)

(** {6 Documenting_for_envelope} *)

let documentation () = 
  [
   "Current : ECOO:Coordinate_set_body_envelope_v";
   "Needed-by : ";

   "Definition : an Envelopee = (Labelled_readee) is a Elementary_envelopee = Coordinate_set_body_envelopee | Coordinate_set_body_envelopee";
   "Definition : a  Coordinate_set_body_envelopee = (Coordinate_set_fence_symbol, Readee) Tuple";
   "Definition : an Envelope is a tuple_list of Envelopee. It propagates Labelled Readee along the BT";
   "Definition : a Closure is a list of Readee. It valuates the Fence i.e. the Deepestfence of any Domain";   
   "Remark : Coordinate_envelope_t is NOT coerced";
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

let envelope_of_tag tag_csb =
  Coordinate_envelopee_tuple_v.coordinate_envelopee_tuple_of_coordinate_set_body_tag tag_csb 
;;

(** {6 Making} *)

let make tag_csb =
  envelope_of_tag tag_csb
;;

(** {6 Extracting off Envelope} *)

(** {9 Coordinate_set_fence_symbol Tuple} *)

let coordinate_set_fence_symbol_tuple_off_envelope env_csb =
  Tuple_v.map
    Coordinate_envelopee_v.coordinate_set_fence_symbol_off_coordinate_envelopee 
    env_csb
;;

let coordinate_set_fence_symbol_tuple_of_tag tag_csb =
  let env_csb = envelope_of_tag tag_csb in
  coordinate_set_fence_symbol_tuple_off_envelope env_csb
;;

(** {9 Coordinate_symbol Tuple} *)

let coordinate_symbol_tuple_off_envelope env_csb =
  let sym_csf_t = coordinate_set_fence_symbol_tuple_off_envelope env_csb in 
  Tuple_v.map
    Coordinate_symbol_v.coordinate_symbol_of_coordinate_set_fence_symbol
    sym_csf_t
;;

let coordinate_symbol_tuple_of_tag tag_csb =
  let sym_csf_t = coordinate_set_fence_symbol_tuple_of_tag tag_csb in 
  Tuple_v.map
    Coordinate_symbol_v.coordinate_symbol_of_coordinate_set_fence_symbol
    sym_csf_t
;;

(** {9 Readee Tuple} *)

let readee_tuple_off_envelope env_csb =
  Tuple_v.map
    Coordinate_envelopee_v.readee_off_coordinate_envelopee 
    env_csb
;;

let readee_tuple_of_tag tag_csb =
  let env_csb = envelope_of_tag tag_csb in
  readee_tuple_off_envelope env_csb
;;

(** {9 Closure off Envelope : tuple of Readee} *)

let closure_off_envelope env_csb =
  readee_tuple_off_envelope env_csb 
;;

let closure_of_tag tag_csb =
  readee_tuple_of_tag tag_csb 
;;

(** {9 Measure Tuple} *)

let measure_tuple_off_envelope env_csb =
  Tuple_v.map
    Coordinate_envelopee_v.measure_off_coordinate_envelopee 
    env_csb
;;

let measure_tuple_of_tag tag_csb =
  let env_csb = envelope_of_tag tag_csb in
  measure_tuple_off_envelope env_csb 
;;

(** {6 Measure_actual Tuple of Tag} *)

let measure_actual_tuple_of_tag tag_csb =
  let mea_t = measure_tuple_of_tag tag_csb in
  Tuple_v.map Measure_v.measure_actual_off_measure mea_t
;;

(** {6 Measure_canonical Tuple of Tag} *)

let measure_canonical_tuple_of_calculation_name_of_tag nam_cal tag_csb =
  let mea_t = measure_tuple_of_tag tag_csb in
  Tuple_v.map 
    (fun m -> 
      Measure_v.measure_canonical_of_measure_of_calculation_name 
	m nam_cal
    )
    mea_t
;;

(** {9 Units Tuple} *)

let units_tuple_off_envelope env_csb =
  let mea_l = measure_tuple_off_envelope env_csb in
  Tuple_v.map
    Measure_v.units_off_measure 
    mea_l
;;

let units_tuple_of_tag tag_csb =
  let env_csb = envelope_of_tag tag_csb in
  units_tuple_off_envelope env_csb 
;;

(** {9 Float Tuple} *)

let float_tuple_off_envelope env_csb  =
  let mea_t = measure_tuple_off_envelope env_csb in
  Tuple_v.map
    Measure_v.float_off_measure
    mea_t
;;

let float_tuple_of_tag tag_csb =
  let env_csb = envelope_of_tag tag_csb in
  float_tuple_off_envelope env_csb 
;;

(** {6 Naming_for_envelope} *)

let name env_csb =
  Tuple_v.name Coordinate_envelopee_v.name env_csb
;;

let string_off env_csb =
  Tuple_v.name Coordinate_envelopee_v.name env_csb
;;

let fullname env_csb =
  Tuple_v.name Coordinate_envelopee_v.fullname env_csb
;;

let longname env_csb =
  Tuple_v.name Coordinate_envelopee_v.longname env_csb
;;

