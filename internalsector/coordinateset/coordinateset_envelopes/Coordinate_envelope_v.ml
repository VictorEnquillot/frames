(** {3 Coordinate_envelope_v} *)

(** {6 Documenting_for_envelope} *)

let documentation () = 
  [
   "Current : ECOO:Coordinate_envelope_v";
   "Needed-by : ";

   "Definition : an Envelopee = (Labelled_readee) is a Elementary_envelopee = Coordinate_envelopee | Coordinate_envelopee";
   "Definition : a  Coordinate_envelopee = (Coordinate_set_fence_symbol, Readee) Tuple";
   "Definition : an Envelope is a tuple_list of Envelopee. It propagates Labelled Readee along the BT";
   "Definition : a Closure is a list of Readee. It valuates the Fence i.e. the Deepestfence of any Domain";   
   "Remark : Coordinate_envelope_t is NOT coerced";
   "Author : François Colonna 19 juin 2017 at 09:12:04+02:00";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {9 Envelopee Tuple of Tag} *)

let coordinate_envelopee_tuple_of_tag tag_coo =
  Coordinate_envelopee_tuple_v.make tag_coo
;;

(** {9 Envelope_as Tuple of Tag} *)

let envelope_as_tuple_of_tag tag_coo =
  coordinate_envelopee_tuple_of_tag tag_coo
;;

(** {9 Envelope_as Trio of Tag} *)

let envelope_as_trio_of_tag tag_coo =
  let nam_fun = "envelope_as_trio_of_tag" in

  let sym_coo = Tag_v.entity_off_tag tag_coo in
  match sym_coo with
  | Coordinate_symbol_t.Coordinate_set_symbol 
      (Coordinate_set_symbol_t.Coordinate_set_body_symbol sym_csb) -> 
	Coordinate_envelopee_tuple_v.coordinate_envelopee_tuple_as_trio_of_tag tag_coo

  | _ -> 
      Error_messages_v.print_fatal_error __LOC__ nam_fun
	"Coordinate_symbol were Coordinate_set_body_symbol"
	(Format.sprintf "%s" (Coordinate_symbol_v.fullname sym_coo))
	"Check"
;;

(** {9 Envelope_as Duo of Tag} *)

let envelope_as_duo_of_tag tag_coo =
  let nam_fun = "envelope_as_trio_of_tag" in

  let sym_coo = Tag_v.entity_off_tag tag_coo in
  match sym_coo with
  | Coordinate_symbol_t.Coordinate_set_symbol 
      (Coordinate_set_symbol_t.Coordinate_set_body_symbol sym_csb) -> 
	Coordinate_envelopee_tuple_v.coordinate_envelopee_tuple_as_duo_of_tag tag_coo

  | _ -> 
      Error_messages_v.print_fatal_error __LOC__ nam_fun
	"Coordinate_symbol were Coordinate_set_body_symbol"
	(Format.sprintf "%s" (Coordinate_symbol_v.fullname sym_coo))
	"Check"
;;

(** {6 Envelope of Tag} *)

let envelope_of_tag tag_coo =
  coordinate_envelopee_tuple_of_tag tag_coo 
;;

(** {6 Making} *)

let make tag_coo =
  envelope_of_tag tag_coo
;;

(** {6 Measure Tuple of Tag} *)

let measure_tuple_of_tag tag_coo =
  let nam_fun = "measure_tuple_of_tag" in

  let soi_coo = Tag_v.sole_index_off_tag tag_coo in
  let sym_coo = Tag_v.entity_off_tag tag_coo in
  match sym_coo with
  | Coordinate_symbol_t.Coordinate_set_symbol 
      (Coordinate_set_symbol_t.Coordinate_set_fence_symbol sym_csf) ->
	let tag_csf = Tag_v.make sym_csf soi_coo in
	Coordinate_set_fence_envelope_v.measure_tuple_of_tag tag_csf
	  
  | Coordinate_symbol_t.Coordinate_set_symbol 
      (Coordinate_set_symbol_t.Coordinate_set_body_symbol sym_csb) -> 
	let tag_csb = Tag_v.make sym_csb soi_coo in
	Coordinate_set_body_envelope_v.measure_tuple_of_tag tag_csb

  | _ -> 
      Error_messages_v.print_fatal_error __LOC__ nam_fun
	"Coordinate_symbol were Coordinate_set_fence_symbol | Coordinate_set_body_symbol"
	(Format.sprintf "%s" (Coordinate_symbol_v.fullname sym_coo))
	"Check"
;;

(** {6 Measure_actual Tuple of Tag} *)

let measure_actual_tuple_of_tag tag_coo =
  let mea_l = measure_tuple_of_tag tag_coo in
  Tuple_v.map Measure_v.measure_actual_off_measure mea_l
;;

(** {6 Measure_canonical Tuple of Tag} *)

let measure_canonical_tuple_of_calculation_name_of_tag nam_cal tag_coo =
  let mea_l = measure_tuple_of_tag tag_coo in
  Tuple_v.map 
    (fun m -> 
      Measure_v.measure_canonical_of_measure_of_calculation_name 
	m nam_cal
    )
    mea_l
;;

(** {6 Measure Trio of Tag} *)

let measure_trio_of_tag tag_coo =
  let env_coo_t = envelope_as_trio_of_tag tag_coo in
  Trio_v.map 
    Coordinate_envelopee_v.measure_off_coordinate_envelopee 
    env_coo_t
;;

(** {6 Measure_actual Trio of Tag} *)

let measure_actual_trio_of_tag tag_coo =
  let mea_t = measure_trio_of_tag tag_coo in
  Trio_v.map Measure_v.measure_actual_off_measure mea_t
;;

(** {6 Measure_canonical Trio of Tag} *)

let measure_canonical_trio_of_calculation_name_of_tag nam_cal tag_coo =
  let mea_l = measure_trio_of_tag tag_coo in
  Trio_v.map 
    (fun m -> 
      Measure_v.measure_canonical_of_measure_of_calculation_name 
	m nam_cal
    )
    mea_l
;;

(** {6 Measure Duo of Tag} *)

let measure_duo_of_tag tag_coo =
  let env_coo_t = envelope_as_duo_of_tag tag_coo in
  Duo_v.map 
    Coordinate_envelopee_v.measure_off_coordinate_envelopee 
    env_coo_t
;;

(** {6 Measure_actual Duo of Tag} *)

let measure_actual_duo_of_tag tag_coo =
  let mea_t = measure_duo_of_tag tag_coo in
  Duo_v.map Measure_v.measure_actual_off_measure mea_t
;;

(** {6 Measure_canonical Duo of Tag} *)

let measure_canonical_duo_of_calculation_name_of_tag nam_cal tag_coo =
  let mea_l = measure_duo_of_tag tag_coo in
  Duo_v.map 
    (fun m -> 
      Measure_v.measure_canonical_of_measure_of_calculation_name 
	m nam_cal
    )
    mea_l
;;

(** {9 Units Tuple of Tag} *)

let units_tuple_of_tag tag_coo =
  let mea_l = measure_tuple_of_tag tag_coo in
  Tuple_v.map 
    Measure_v.units_off_measure 
    mea_l
;;

(** {9 Float Tuple of Tag} *)

let float_tuple_of_tag tag_coo  =
  let mea_l = measure_tuple_of_tag tag_coo in
  Tuple_v.map 
    Measure_v.float_off_measure 
    mea_l 
;;

(** {6 Readee Tuple of Tag} *)

let readee_tuple_of_tag tag_coo =
  let env_coo = envelope_of_tag tag_coo in
  Tuple_v.map
    Coordinate_envelopee_v.readee_off_coordinate_envelopee 
    env_coo
;;

(** {9 Closure of Tag : tuple of Readee} *)

let closure_of_tag tag_coo =
  readee_tuple_of_tag tag_coo
;;

(** {6 Extracting off Envelope} *)

(** {9 Coordinate_set_fence_symbol Tuple off Envelope} *)

let coordinate_set_fence_symbol_tuple_off_envelope env_coo =
  Tuple_v.map
    Coordinate_envelopee_v.coordinate_set_fence_symbol_off_coordinate_envelopee 
    env_coo
;;

(** {9 Coordinate_symbol Tuple off Envelope} *)

let coordinate_symbol_tuple_off_envelope env_coo =
  let sym_csf_t = coordinate_set_fence_symbol_tuple_off_envelope env_coo in 
  Tuple_v.map
    Coordinate_symbol_v.coordinate_symbol_of_coordinate_set_fence_symbol
    sym_csf_t
;;

(** {9 Readee Tuple off Envelope} *)

let readee_tuple_off_envelope env_coo =
  Tuple_v.map
    Coordinate_envelopee_v.readee_off_coordinate_envelopee 
    env_coo
;;

(** {9 Closure off Envelope : tuple of Readee} *)

let closure_off_envelope env_coo =
  readee_tuple_off_envelope env_coo 
;;

(** {9 Measure Tuple off Envelope} *)

let measure_tuple_off_envelope env_coo =
  Tuple_v.map
    Coordinate_envelopee_v.measure_off_coordinate_envelopee 
    env_coo
;;

(** {9 Measure Tuple off Envelope} *)

let measure_tuple_off_envelope env_coo =
  let mea_l =  measure_tuple_off_envelope env_coo in
  Tuple_v.tuple_of_tuple mea_l
;;

(** {9 Units Tuple off Envelope} *)

let units_tuple_off_envelope env_coo =
  let mea_l = measure_tuple_off_envelope env_coo in
  Tuple_v.map
    Measure_v.units_off_measure 
    mea_l
;;

(** {9 Float Tuple off Envelope} *)

let float_off_envelope env_coo  =
  let mea_l = measure_tuple_off_envelope env_coo in
  Tuple_v.map
    Measure_v.float_off_measure
    mea_l
;;

(** {6 Naming} *)

let name env_coo =
  Tuple_v.name Coordinate_envelopee_v.name env_coo
;;

let string_off env_coo =
  Tuple_v.name Coordinate_envelopee_v.name env_coo
;;

let fullname env_coo =
  Tuple_v.name Coordinate_envelopee_v.fullname env_coo
;;

let longname env_coo =
  Tuple_v.name Coordinate_envelopee_v.longname env_coo
;;

