(** {3 Coordinate_envelope_v} *)

(** {6 Documenting_for_envelope} *)

let documentation () = 
  [
   "Current : VCOO:Coordinate_envelope_v";
   "Needed-by : ";

   "Definition : an Envelopee = (Tagged_readee) is a Elementary_envelopee = Coordinate_envelopee | Coordinate_envelopee";
   "Definition : a  Coordinate_envelopee = (Coordinate_set_fence_tag, Readee). It is NOT coerced";
   "Definition : an Envelope is a list of Envelopee. It propagates Tagged Readee along the BT";
   "Definition : the Fence is the Tag list (Coerced Up) of the Leaf Entities of the B-Tree of any Entity";
   "Definition : a Closure is a list of Readee. It valuates the Fence i.e. the Deepestfence of any Domain";   
   "What-is-it : one element list of itself";
   "Abbreviation : psf = coordinate_set_fence";
   "Abbreviation : pfa = coordinate_set_fence_aopef";
   "Abbreviation : pfe = coordinate_set_fence_ecppef";
   "Abbreviation : pac = coordinate_set_fence_heterogeneous_polar_rho";
   "Abbreviation : pae = coordinate_set_fence_heterogeneous_polar_theta";
   "Abbreviation : pec = coordinate_set_fence_homogeneous_planar_x";
   "Abbreviation : pee = coordinate_set_fence_homogeneous_planar_y";
   "Abbreviation : eee_coo = coordinate_envelopee";
   "Abbreviation : env_coo = coordinate_envelope";
   "Author : François Colonna 06 janvier 2017 at 15:48:43+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Envelopee List} *)

let coordinate_envelopee_list_of_tag tag_coo =
  let tag_coo_l = 
    Coordinate_container_v.fence_as_list_of_tag 
      tag_coo 
  in
  let tag_csf_l = 
    List.map
      Coordinate_set_fence_tag_v.coordinate_set_fence_tag_off_coordinate_tag 
      tag_coo_l
  in
  List.map
    Coordinate_envelopee_v.coordinate_envelopee_of_coordinate_set_fence_tag 
      tag_csf_l
;;

(** {6 Envelope of Tag} *)

let envelope_of_tag tag_coo =
  coordinate_envelopee_list_of_tag tag_coo 
;;

(** {6 Making} *)

let make tag_coo =
  envelope_of_tag tag_coo
;;

(** {6 Measure List of Tag} *)

let measure_list_of_tag tag_coo =
  let env_coo = envelope_of_tag tag_coo in
  List.map 
    Coordinate_envelopee_v.measure_off_coordinate_envelopee 
    env_coo
;;

let measure_canonical_list_of_calculation_name_of_tag nam_cal tag_coo =
  let mea_l = measure_list_of_tag tag_coo in
  List.map 
    Measure_v.measure_canonical_of_measure_of_calculation_name 
    mea_l
;;

(** {9 Units List of Tag} *)

let units_list_of_tag tag_coo =
  let mea_l = measure_list_of_tag tag_coo in
  List.map 
    Measure_v.units_off_measure 
    mea_l
;;

(** {9 Float List of Tag} *)

let float_list_of_tag tag_coo  =
  let mea_l = measure_list_of_tag tag_coo in
  List.map 
    Measure_v.float_off_measure 
    mea_l 
;;

(** {6 Readee List of Tag} *)

let readee_list_of_tag tag_coo =
  let env_coo = envelope_of_tag tag_coo in
  List.map
    Coordinate_envelopee_v.readee_off_coordinate_envelopee 
    env_coo
;;

(** {9 Closure of Tag : list of Readee} *)

let closure_of_tag tag_coo =
  readee_list_of_tag tag_coo
;;

(** {6 Extracting} *)

(** {9 Coordinate_set_fence_tag List off Envelope} *)

let coordinate_set_fence_tag_list_off_envelope env_coo =
  List.map
    Coordinate_envelopee_v.coordinate_set_fence_tag_off_coordinate_envelopee 
    env_coo
;;
 
(** {9 Coordinate_tag List off Envelope} *)

let coordinate_tag_list_off_envelope env_coo =
  let tag_csf_l = coordinate_set_fence_tag_list_off_envelope env_coo in 
  List.map
    Coordinate_set_fence_tag_v.coordinate_tag_of_coordinate_set_fence_tag
    tag_csf_l
;;

(** {9 Readee List off Envelope} *)

let readee_list_off_envelope env_coo =
  List.map
    Coordinate_envelopee_v.readee_off_coordinate_envelopee 
    env_coo
;;

(** {9 Closure off Envelope : list of Readee} *)

let closure_off_envelope env_coo =
  readee_list_off_envelope env_coo 
;;

(** {9 Measure List off Envelope} *)

let measure_list_off_envelope env_coo =
  List.map
    Coordinate_envelopee_v.measure_off_coordinate_envelopee 
    env_coo
;;

(** {9 Units List off Envelope} *)

let units_list_off_envelope env_coo =
  let mea_l = measure_list_off_envelope env_coo in
  List.map
    Measure_v.units_off_measure 
    mea_l
;;

(** {9 Float List off Envelope} *)

let float_off_envelope env_coo  =
  let mea_l = measure_list_off_envelope env_coo in
  List.map
    Measure_v.float_off_measure
    mea_l
;;

(** {6 Naming_for_envelope} *)

let name env_coo =
  List_v.name Coordinate_envelopee_v.name env_coo
;;

let string_off env_coo =
  List_v.name Coordinate_envelopee_v.name env_coo
;;

let fullname env_coo =
  List_v.name Coordinate_envelopee_v.fullname env_coo
;;

let longname env_coo =
  List_v.name Coordinate_envelopee_v.longname env_coo
;;
