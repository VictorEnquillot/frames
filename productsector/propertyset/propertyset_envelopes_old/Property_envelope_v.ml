(** {3 Property_envelope_v} *)

(** {6 Documenting_for_envelope} *)

let documentation () = 
  [
   "Current : VPRO:Property_envelope_v";
   "Needs : VPRO:Property_set_fence_envelope_v";
   "Definition : an Envelopee = (Tagged_readee) is a Elementary_envelopee = Envelopee | Envelopee";
   "Definition : a  Envelopee = (Coordinate_set_fence_tag, Readee). It is NOT coerced";
   "Definition : an Envelope is a list of Envelopee. It propagates Tagged Readee along the BT";
   "Definition : the Fence is the Tag list (Coerced Up) of the Leaf Entities of the B-Tree of any Entity";
   "Definition : a Closure is a list of Readee. It valuates the Fence i.e. the Deepest Fence of any Domain";   
   "What-is-it : the list of its Envelopee";
   "How-is-it-done : by building the Flatten List of the Envelopes of its Fence";
   "Abbreviation : psf = property_set_fence";
   "Abbreviation : eee = envelopee";
   "Abbreviation : env_pro = property_envelope";
   "Author : François Colonna 11 janvier 2017 at 18:35:44+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Envelopee List of Tag} *)

let envelopee_list_list_of_tag tag_pro =
  let fen = 
    Property_container_v.fence_as_list_of_tag 
      tag_pro 
  in
  let tag_fsf_l = 
    List.map
      Property_set_fence_tag_v.property_set_fence_tag_off_property_tag 
      fen
  in
  List.map
    Property_set_fence_envelope_v.envelope_of_tag
      tag_fsf_l
;;

(** {6 Envelope of Tag} *)

let envelope_of_tag tag_pro =
  List.flatten (envelopee_list_list_of_tag tag_pro) 
;;

(** {6 Making} *)

let make tag_pro =
  envelope_of_tag tag_pro
;;

(** {6 Measure List of Tag} *)

let measure_list_of_tag tag_pro =
  let env_pro = envelope_of_tag tag_pro in
  List.map 
    Elementary_envelopee_v.measure_off_elementary_envelopee 
    env_pro
;;

let measure_canonical_list_of_calculation_name_of_tag nam_cal tag_pro =
  let mea_l = measure_list_of_tag tag_pro in
  List.map (fun m ->
    Measure_v.measure_canonical_of_measure_of_calculation_name 
      m nam_cal)
    mea_l
;;

(** {9 Units List of Tag} *)

let units_list_of_tag tag_pro =
  let mea_l = measure_list_of_tag tag_pro in
  List.map 
    Measure_v.units_off_measure 
    mea_l
;;

(** {9 Float List of Tag} *)

let float_list_of_tag tag_pro  =
  let mea_l = measure_list_of_tag tag_pro in
  List.map 
    Measure_v.float_off_measure 
    mea_l 
;;

(** {6 Readee List of Tag} *)

let readee_list_of_tag tag_pro =
  let env_pro = envelope_of_tag tag_pro in
  List.map
    Elementary_envelopee_v.readee_off_elementary_envelopee 
    env_pro
;;

(** {9 Closure of Tag : list of Readee} *)

let closure_of_tag tag_pro =
  readee_list_of_tag tag_pro
;;

(** {6 Extracting} *)

(** {9 Coordinate_set_fence_tag List off Envelope} *)

let coordinate_set_fence_tag_list_off_envelope env_pro =
  List.map
    Elementary_envelopee_v.coordinate_set_fence_tag_off_elementary_envelopee 
    env_pro
;;
 
(** {9 Coordinate_tag List off Envelope} *)

let coordinate_tag_list_off_envelope env_pro =
  let tag_csf_l = coordinate_set_fence_tag_list_off_envelope env_pro in 
  List.map
    Coordinate_set_fence_tag_v.coordinate_tag_of_coordinate_set_fence_tag
    tag_csf_l
;;

(** {9 Readee List off Envelope} *)

let readee_list_off_envelope env_pro =
  List.map
    Elementary_envelopee_v.readee_off_elementary_envelopee 
    env_pro
;;

(** {9 Closure off Envelope : list of Readee} *)

let closure_off_envelope env_pro =
  readee_list_off_envelope env_pro 
;;

(** {9 Measure List off Envelope} *)

let measure_list_off_envelope env_pro =
  List.map
    Elementary_envelopee_v.measure_off_elementary_envelopee 
    env_pro
;;

(** {9 Units List off Envelope} *)

let units_list_off_envelope env_pro =
  let mea_l = measure_list_off_envelope env_pro in
  List.map
    Measure_v.units_off_measure 
    mea_l
;;

(** {9 Float List off Envelope} *)

let float_off_envelope env_pro  =
  let mea_l = measure_list_off_envelope env_pro in
  List.map
    Measure_v.float_off_measure
    mea_l
;;

(** {6 Naming_for_envelope} *)

let name env_pro =
  List_v.name Elementary_envelopee_v.name env_pro
;;

let string_off env_pro =
  List_v.name Elementary_envelopee_v.name env_pro
;;

let fullname env_pro =
  List_v.name Elementary_envelopee_v.fullname env_pro
;;

let longname env_pro =
  List_v.name Elementary_envelopee_v.longname env_pro
;;
