(** {3 Coordinate_envelopee_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : ECOO:Coordinate_envelopee_v";
   "Needs : ECOO:Elementary_border_coordinate_envelope_v";
   "Needed-by : any envelope_v.ml";
   "Definition : an Envelopee = (Tagged_readee) is a Elementary_envelopee = Coordinate_envelopee | Parameter_envelopee";
   "What-is-it : it is (Coordinate_set_fence_tag, Readee) generalization of old belts";
   "What-is-it : it provide the Measure for a specific Coordinate_set_fence Tag";
   "What-is-it : it is the Building brick of all Envelopes";
   "Abbreviation : eee_coo = coordinate_envelopee";
   "Abbreviation : _csf = coordinate_set_fence";
   "Author : François Colonna 27 décembre 2016 at 13:28:23+01:00";
   "Author : François Colonna 04 juillet 2017 at 14:55:27+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

(** {6 Making} *)

let coordinate_envelopee_of_coordinate_set_fence_tag tag_csf =
  let rea = Readee_by_coordinate_set_fence_tag_provider_v.provide tag_csf in
  let sym_csf = Tag_v.entity_off_tag tag_csf in
  Doublet_v.make sym_csf rea
;;

let make tag_csf =
  coordinate_envelopee_of_coordinate_set_fence_tag tag_csf
;;

(** {6 Extracting} *)

let coordinate_set_fence_symbol_off_coordinate_envelopee eee_coo =
  Doublet_v.left_off_doublet eee_coo
;;

let coordinate_symbol_off_coordinate_envelopee eee_coo =
  let sym_csf = coordinate_set_fence_symbol_off_coordinate_envelopee eee_coo in
  Coordinate_symbol_v.coordinate_symbol_of_coordinate_set_fence_symbol sym_csf
;;

let readee_off_coordinate_envelopee eee_coo =
  Doublet_v.right_off_doublet eee_coo
;;

let measure_off_coordinate_envelopee eee_coo =
  let rea = readee_off_coordinate_envelopee eee_coo in
  Readee_v.measure_off_readee rea
;;

(** {6 Float} *)

let float_off_coordinate_envelopee eee_coo  =
  let mea = measure_off_coordinate_envelopee eee_coo in
  Measure_v.float_off_measure mea 
;;

(** {6 Units} *)

let units_off_coordinate_envelopee eee_coo =
  let mea = measure_off_coordinate_envelopee eee_coo in
  Measure_v.units_off_measure mea
;;

(** {6 Naming} *)

let name eee_coo =
  Doublet_v.name Coordinate_set_fence_symbol_v.name Readee_v.name eee_coo
;;

let shortname eee_coo =
  let sym_csf = coordinate_set_fence_symbol_off_coordinate_envelopee eee_coo in
  let nam_coo = Coordinate_set_fence_symbol_v.name sym_csf in
  let str_l = String_v.split_of_character_of_string '_' nam_coo in
  let sna_coo = List_v.penultimate_element_off_list str_l in
  let sof_coo = Coordinate_set_fence_symbol_v.string_off sym_csf in

  let rea = readee_off_coordinate_envelopee eee_coo in
  let sna_rea = Readee_v.shortname rea in
  Format.sprintf "(%s %s %s)" sof_coo sna_coo sna_rea
;;

let string_off eee_coo =
  let sym_csf = coordinate_set_fence_symbol_off_coordinate_envelopee eee_coo in
  Coordinate_set_fence_symbol_v.string_off sym_csf 
;;

let dimension eee_coo =
  let mea = measure_off_coordinate_envelopee eee_coo in
  Measure_v.dimension mea
;;

let longname eee_coo = 
  Doublet_v.name Coordinate_set_fence_symbol_v.longname Readee_v.longname eee_coo
;;

let fullname eee_coo =
  Doublet_v.name Coordinate_set_fence_symbol_v.fullname Readee_v.fullname eee_coo
;;


