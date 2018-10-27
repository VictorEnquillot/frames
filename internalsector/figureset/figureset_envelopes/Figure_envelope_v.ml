(** {3 Figure_envelope_v} *)

(** {6 Documenting_for_envelope} *)

let documentation () = 
  [
   "Current : VFIG:Figure_envelope_v";
   "Needs : VFIG:Figure_set_fence_envelope_v";
   "Definition : an Envelopee = (Tagged_readee) is a Elementary_envelopee = Coordinate_envelopee | Coordinate_envelopee";
   "Definition : a  Coordinate_envelopee = (Coordinate_set_fence_tag, Readee). It is NOT coerced";
   "Definition : a  Coordinate_envelopee_tuple = Coordinate_envelopee Tuple";
   "Definition : an Envelope is list of Envelopee_tuple. It propagates Tagged Readee along the BT";
   "Definition : the Fence is the Tag list (Coerced Up) of the Leaf Entities of the B-Tree of any Entity";
   "Definition : a Closure is a list of Readee. It valuates the Fence i.e. the Deepest Fence of any Domain";   
   "Definition : Coordinate_set_fence_envelope is Coordinate_envelopee";
   "Definition : Coordinate_set_body_envelope is Coordinate_envelopee_tuple";
   "Definition : Figure_set_fence_envelope is Coordinate_envelopee_tuple one element list";
   "What-is-it : the list of its Coordinate_envelopee_tuple";
   "Definition : type coordinate_envelope = Coordinate_envelopee_t.coordinate_envelopee Tuple_t.tuple";
   "How-is-it-done : by building the Flatten List of the Envelopes of its Fence";
   "Abbreviation : psf = figure_set_fence";
   "Abbreviation : eee_coo = coordinate_envelopee";
   "Abbreviation : env_fig = figure_envelope";
   "Author : François Colonna 17 juin 2017 at 17:19:27+02:00 from ESKE";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Fence} *)

let figure_set_fence_tag_list_of_tag tag_fig =
  let fen = Figure_container_v.fence_as_list_of_tag tag_fig in
  List.map
    Figure_set_fence_tag_v.figure_set_fence_tag_off_figure_tag 
    fen
;;

(** {6 Son Tag List} *)

let figure_son_tag_list_of_tag tag_fig =
  Figure_son_tag_list_by_figure_father_tag_provider_v.provide tag_fig 
;;

(** {6 Fence Envelope of Tag i.e. a tuple list list } *)

let figure_set_fence_envelope_list_of_tag tag_fig =
  let tag_ssf_l = figure_set_fence_tag_list_of_tag tag_fig in
  List.map
    Figure_set_fence_envelope_v.envelope_of_tag
    tag_ssf_l
;;

(** {6 Coordinate_envelopee_tuple_list list of Tag from Fence} *)

let coordinate_envelopee_tuple_list_list_of_tag tag_fig =
  let tag_ssf_l = figure_set_fence_tag_list_of_tag tag_fig in
  List.map
    Figure_set_fence_envelope_v.envelope_of_tag
    tag_ssf_l
;;

(** {6 Envelope of Tag : i.e. coordinate_envelopee_tuple list} *)

let envelope_of_tag tag_fig =
  let env_ssf_l = coordinate_envelopee_tuple_list_list_of_tag tag_fig in
  List.flatten env_ssf_l
;;

(** {6 Making} *)

let make tag_fig =
  envelope_of_tag tag_fig
;;

(** {9 Figure_son_envelope_list_of_tag } *)

let figure_son_envelope_list_of_tag tag_fig =
  let tag_fig_son_l = figure_son_tag_list_of_tag tag_fig in
  List.map envelope_of_tag tag_fig_son_l
;;

(** {6 Extracting off Envelope} *)

(** {9 Coordinate_set_fence_symbol Tuple_list} *)

let coordinate_set_fence_symbol_tuple_list_off_envelope env_fig =
  List.map 
    Coordinate_envelopee_tuple_v.coordinate_set_fence_symbol_tuple_off_coordinate_envelopee_tuple
    env_fig
;;

let coordinate_set_fence_symbol_tuple_list_off_tag tag_fig =
  let env_fig = envelope_of_tag tag_fig in
  coordinate_set_fence_symbol_tuple_list_off_envelope env_fig
;;

(** {9 Coordinate_symbol Tuple_list} *)

let coordinate_symbol_tuple_list_off_envelope env_fig =
  List.map 
    Coordinate_envelopee_tuple_v.coordinate_symbol_tuple_off_coordinate_envelopee_tuple
    env_fig
;;

let coordinate_symbol_tuple_list_off_tag tag_fig =
  let env_fig = envelope_of_tag tag_fig in
  coordinate_symbol_tuple_list_off_envelope env_fig
;;

(** {9 Readee Tuple_list} *)

let readee_tuple_list_off_envelope env_fig =
  List.map 
    Coordinate_envelopee_tuple_v.readee_tuple_off_coordinate_envelopee_tuple
    env_fig
;;

let readee_tuple_list_off_tag tag_fig =
  let env_fig = envelope_of_tag tag_fig in
  readee_tuple_list_off_envelope env_fig
;;

(** {9 Closure : tuple_list of Readee} *)

let closure_off_envelope env_fig =
  List.map 
    Coordinate_envelopee_tuple_v.closure_off_coordinate_envelopee_tuple
    env_fig
;;

(** {6 Measure Tuple_list of Tag} *)

let measure_tuple_list_off_envelope env_fig =
  List.map 
    Coordinate_envelopee_tuple_v.measure_tuple_off_coordinate_envelopee_tuple
    env_fig
;;

let measure_tuple_list_of_tag tag_fig =
  let env_fig = envelope_of_tag tag_fig in
  measure_tuple_list_off_envelope env_fig
;;

(** {6 Measure_canonical Tuple_list of Tag} *)

let measure_canonical_tuple_list_of_calculation_name_off_envelope nam_cal env_fig =
  let mea_tl = measure_tuple_list_off_envelope env_fig in
  Tuple_list_v.map 
    (fun m -> 
      Measure_v.measure_canonical_of_measure_of_calculation_name 
	m nam_cal
    )
    mea_tl
;;

let measure_canonical_tuple_list_of_calculation_name_of_tag nam_cal tag_fig =
  let env_fig = envelope_of_tag tag_fig in
  measure_canonical_tuple_list_of_calculation_name_off_envelope nam_cal env_fig
;;

(** {9 Units Tuple_list} *)

let units_tuple_list_off_envelope env_fig =
  List.map 
    Coordinate_envelopee_tuple_v.units_tuple_off_coordinate_envelopee_tuple
    env_fig
;;

let units_tuple_list_off_tag tag_fig =
  let env_fig = envelope_of_tag tag_fig in
  units_tuple_list_off_envelope env_fig
;;

(** {9 Float Tuple_list} *)

let float_tuple_list_off_envelope env_fig =
  List.map 
    Coordinate_envelopee_tuple_v.float_tuple_off_coordinate_envelopee_tuple
    env_fig
;;

let float_tuple_list_off_tag tag_fig =
  let env_fig = envelope_of_tag tag_fig in
  float_tuple_list_off_envelope env_fig
;;

(** {6 Measured_float_tuple_list} *)

let measured_float_tuple_list_of_tag tag_fig =
  let tag_fsf_l = figure_set_fence_tag_list_of_tag tag_fig in
  List.map 
    Figure_set_fence_envelope_v.measured_float_tuple_of_tag 
    tag_fsf_l
;;

(** {6 Naming_for_envelope} *)

let name env_fig =
  List_v.name Coordinate_envelopee_tuple_v.name env_fig
;;

let string_off env_fig =
  List_v.name Coordinate_envelopee_tuple_v.name env_fig
;;

let shortname env_fig =
  List_v.name Coordinate_envelopee_tuple_v.shortname env_fig
;;

let fullname env_fig =
  List_v.name Coordinate_envelopee_tuple_v.fullname env_fig
;;

let longname env_fig =
  List_v.name Coordinate_envelopee_tuple_v.longname env_fig
;;
