(** {3 Coordinate_set_body_tuple_homogeneous_envelope_v} *)

(** {6 Documenting_for_envelope} *)

let documentation () = 
  [
   "Current : ECOO:Coordinate_set_body_tuple_homogeneous_envelope_v";
   "Needed-by : ";

   "Definition : an Envelopee = (Tagged_readee) is a Elementary_envelopee = Coordinate_envelopee | Coordinate_envelopee";
   "Definition : a  Coordinate_envelopee = (Coordinate_set_fence_tag, Readee)";
   "Definition : an Envelope is a list of Envelopee. It propagates Tagged Readee along the BT";
   "Definition : a Closure is a list of Readee. It valuates the Fence i.e. the Deepestfence of any Domain";   
   "Remark : Coordinate_envelope_t is NOT coerced";
   "Author : François Colonna 03 mai 2017 at 11:43:48+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming_for_envelope} *)

let name env_cth =
  List_v.name Coordinate_envelopee_v.name env_cth
;;

let string_off env_cth =
  List_v.name Coordinate_envelopee_v.name env_cth
;;

let fullname env_cth =
  List_v.name Coordinate_envelopee_v.fullname env_cth
;;

let longname env_cth =
  List_v.name Coordinate_envelopee_v.longname env_cth
;;

(** {6 Envelopee List} *)

let coordinate_envelopee_list_of_tag tag_cth =
  let tag_cth_l = 
    Coordinate_container_v.fence_as_list_of_tag 
      tag_cth 
  in
  let tag_csf_l = 
    List.map
      Coordinate_set_fence_tag_v.coordinate_set_fence_tag_off_cthrdinate_tag 
      tag_cth_l
  in
  List.map
    Coordinate_envelopee_v.coordinate_envelopee_of_cthrdinate_set_fence_tag 
      tag_csf_l
;;

(** {9 Envelopee Tuple of Tag} *)

let coordinate_envelopee_tuple_of_tag tag_cth =
  let coo_l = coordinate_envelopee_list_of_tag tag_cth in
  Tuple_v.tuple_of_list coo_l
;;

(** {9 Envelope_as Tuple of Tag} *)

let envelope_as_tuple_of_tag tag_cth =
  coordinate_envelopee_tuple_of_tag tag_cth
;;

(** {9 Envelope_as Trio of Tag} *)

let envelope_as_trio_of_tag tag_cth =
  let env_cth_t = coordinate_envelopee_tuple_of_tag tag_cth in
  try Tuple_v.trio_of_tuple env_cth_t 
  with Failure ("Not_a_trio:Tuple_v.trio_of_tuple") -> 
    Error_messages_v.print_fatal_error __LOC__ "envelope_as_trio_of_tag"
      (Format.sprintf "Coordinate Tuple Envelope %s for Tag %s were a Trio" 
	 (Tuple_v.name Coordinate_envelopee_v.fullname env_cth_t)
	 (Coordinate_tag_v.fullname tag_cth)
      )
      "it is NOT" 
      "Check" 
;;

(** {9 Envelope_as Duo of Tag} *)

let envelope_as_duo_of_tag tag_cth =
  let env_cth_t = coordinate_envelopee_tuple_of_tag tag_cth in
  try Tuple_v.duo_of_tuple env_cth_t 
  with Failure ("Not_a_duo:Tuple_v.duo_of_tuple") -> 
    Error_messages_v.print_fatal_error __LOC__ "envelope_as_duo_of_tag"
      (Format.sprintf "Coordinate Tuple Envelope %s for Tag %s were a Duo" 
	 (Tuple_v.name Coordinate_envelopee_v.fullname env_cth_t)
	 (Coordinate_tag_v.fullname tag_cth)
      )
      "it is NOT" 
      "Check" 
;;

(** {6 Envelope of Tag} *)

let envelope_of_tag tag_cth =
  coordinate_envelopee_list_of_tag tag_cth 
;;

(** {6 Making} *)

let make tag_cth =
  envelope_of_tag tag_cth
;;

(** {6 Measure List of Tag} *)

let measure_list_of_tag tag_cth =
  let env_cth = envelope_of_tag tag_cth in
  List.map 
    Coordinate_envelopee_v.measure_off_cthrdinate_envelopee 
    env_cth
;;

(** {6 Measure_actual List of Tag} *)

let measure_actual_list_of_tag tag_cth =
  let mea_l = measure_list_of_tag tag_cth in
  List.map Measure_v.measure_actual_off_measure mea_l
;;

(** {6 Measure_canonical List of Tag} *)

let measure_canonical_list_of_calculation_name_of_tag nam_cal tag_cth =
  let mea_l = measure_list_of_tag tag_cth in
  List.map 
    (fun m -> 
      Measure_v.measure_canonical_of_measure_of_calculation_name 
	m nam_cal
    )
    mea_l
;;

(** {6 Measure Tuple of Tag} *)

let measure_tuple_of_tag tag_cth =
  let env_cth_t = envelope_as_tuple_of_tag tag_cth in
  Tuple_v.map 
    Coordinate_envelopee_v.measure_off_cthrdinate_envelopee 
    env_cth_t
;;

(** {6 Measure_actual Tuple of Tag} *)

let measure_actual_tuple_of_tag tag_cth =
  let mea_t = measure_tuple_of_tag tag_cth in
  Tuple_v.map Measure_v.measure_actual_off_measure mea_t
;;

(** {6 Measure_canonical Tuple of Tag} *)

let measure_canonical_tuple_of_calculation_name_of_tag nam_cal tag_cth =
  let mea_l = measure_tuple_of_tag tag_cth in
  Tuple_v.map 
    (fun m -> 
      Measure_v.measure_canonical_of_measure_of_calculation_name 
	m nam_cal
    )
    mea_l
;;

(** {6 Measure Trio of Tag} *)

let measure_trio_of_tag tag_cth =
  let env_cth_t = envelope_as_trio_of_tag tag_cth in
  Trio_v.map 
    Coordinate_envelopee_v.measure_off_cthrdinate_envelopee 
    env_cth_t
;;

(** {6 Measure_actual Trio of Tag} *)

let measure_actual_trio_of_tag tag_cth =
  let mea_t = measure_trio_of_tag tag_cth in
  Trio_v.map Measure_v.measure_actual_off_measure mea_t
;;

(** {6 Measure_canonical Trio of Tag} *)

let measure_canonical_trio_of_calculation_name_of_tag nam_cal tag_cth =
  let mea_l = measure_trio_of_tag tag_cth in
  Trio_v.map 
    (fun m -> 
      Measure_v.measure_canonical_of_measure_of_calculation_name 
	m nam_cal
    )
    mea_l
;;

(** {6 Measure Duo of Tag} *)

let measure_duo_of_tag tag_cth =
  let env_cth_t = envelope_as_duo_of_tag tag_cth in
  Duo_v.map 
    Coordinate_envelopee_v.measure_off_cthrdinate_envelopee 
    env_cth_t
;;

(** {6 Measure_actual Duo of Tag} *)

let measure_actual_duo_of_tag tag_cth =
  let mea_t = measure_duo_of_tag tag_cth in
  Duo_v.map Measure_v.measure_actual_off_measure mea_t
;;

(** {6 Measure_canonical Duo of Tag} *)

let measure_canonical_duo_of_calculation_name_of_tag nam_cal tag_cth =
  let mea_l = measure_duo_of_tag tag_cth in
  Duo_v.map 
    (fun m -> 
      Measure_v.measure_canonical_of_measure_of_calculation_name 
	m nam_cal
    )
    mea_l
;;

(** {9 Units List of Tag} *)

let units_list_of_tag tag_cth =
  let mea_l = measure_list_of_tag tag_cth in
  List.map 
    Measure_v.units_off_measure 
    mea_l
;;

(** {9 Float List of Tag} *)

let float_list_of_tag tag_cth  =
  let mea_l = measure_list_of_tag tag_cth in
  List.map 
    Measure_v.float_off_measure 
    mea_l 
;;

(** {6 Readee List of Tag} *)

let readee_list_of_tag tag_cth =
  let env_cth = envelope_of_tag tag_cth in
  List.map
    Coordinate_envelopee_v.readee_off_cthrdinate_envelopee 
    env_cth
;;

(** {9 Closure of Tag : list of Readee} *)

let closure_of_tag tag_cth =
  readee_list_of_tag tag_cth
;;

(** {6 Extracting off Envelope} *)

(** {9 Coordinate_set_fence_tag List off Envelope} *)

let coordinate_set_fence_symbol_list_off_envelope env_cth =
  List.map
    Coordinate_envelopee_v.coordinate_set_fence_tag_off_cthrdinate_envelopee 
    env_cth
;;
 
(** {9 Coordinate_tag List off Envelope} *)

let coordinate_symbol_list_off_envelope env_cth =
  let tag_csf_l = coordinate_set_fence_symbol_list_off_envelope env_cth in 
  List.map
    Coordinate_set_fence_tag_v.coordinate_tag_of_cthrdinate_set_fence_tag
    tag_csf_l
;;

(** {9 Readee List off Envelope} *)

let readee_list_off_envelope env_cth =
  List.map
    Coordinate_envelopee_v.readee_off_cthrdinate_envelopee 
    env_cth
;;

(** {9 Closure off Envelope : list of Readee} *)

let closure_off_envelope env_cth =
  readee_list_off_envelope env_cth 
;;

(** {9 Measure List off Envelope} *)

let measure_list_off_envelope env_cth =
  List.map
    Coordinate_envelopee_v.measure_off_cthrdinate_envelopee 
    env_cth
;;

(** {9 Units List off Envelope} *)

let units_list_off_envelope env_cth =
  let mea_l = measure_list_off_envelope env_cth in
  List.map
    Measure_v.units_off_measure 
    mea_l
;;

(** {9 Float List off Envelope} *)

let float_off_envelope env_cth  =
  let mea_l = measure_list_off_envelope env_cth in
  List.map
    Measure_v.float_off_measure
    mea_l
;;

