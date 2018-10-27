(** {3 Coordinate_envelopee_tuple_v} *)

(** {6 Documenting_for_envelope} *)

let documentation () = 
  [
   "Current : ECOO:Coordinate_envelopee_tuple_v";
   "Needed-by : ";
   "Definition : an Envelopee = (Labelled_readee) is a Elementary_envelopee = Coordinate_envelopee | Coordinate_envelopee_tuplee";
   "Definition : Coordinate_set_fence_envelope is Coordinate_envelopee";
   "Definition : Coordinate_set_body_envelope is Coordinate_envelopee_tuple";
   "Definition : a Closure is a list of Readee. It valuates the Fence i.e. the Deepestfence of any Domain";   
   "Author : François Colonna 15 juin 2017 at 15:50:57+02:00";
   "Author : François Colonna 26 juin 2017 at 11:40:05+02:00 added ";
   "Abbreviation : coordinate_set_body csb ";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {9 Envelopee_tuple of Tag} *)

let coordinate_envelopee_tuple_of_coordinate_set_body_tag tag_csb =
  let tag_coo_csf_t = 
    Coordinate_set_body_container_v.fence_as_tuple_of_tag 
      tag_csb 
  in
  let tag_psf_t = Tuple_v.map
      Coordinate_set_fence_tag_v.coordinate_set_fence_tag_off_coordinate_tag 
      tag_coo_csf_t
  in
  Tuple_v.map
    Coordinate_envelopee_v.coordinate_envelopee_of_coordinate_set_fence_tag 
      tag_psf_t
;;

let coordinate_envelopee_tuple_of_coordinate_set_fence_tag tag_csf =
  let tag_coo_csf_t = 
    Coordinate_set_fence_container_v.fence_as_tuple_of_tag 
      tag_csf
  in
  let tag_psf_t = Tuple_v.map
      Coordinate_set_fence_tag_v.coordinate_set_fence_tag_off_coordinate_tag 
      tag_coo_csf_t
  in
  Tuple_v.map
    Coordinate_envelopee_v.coordinate_envelopee_of_coordinate_set_fence_tag 
      tag_psf_t
;;

(** {6 Making} *)

let make tag_coo =
  let (sym_coo, soi_coo) = tag_coo in
  match sym_coo with 
  | Coordinate_symbol_t.Coordinate_set_symbol
      (Coordinate_set_symbol_t.Coordinate_set_body_symbol sym_csb) ->
	let tag_csb = Tag_v.make sym_csb soi_coo in 
	coordinate_envelopee_tuple_of_coordinate_set_body_tag tag_csb

  | Coordinate_symbol_t.Coordinate_set_symbol
      (Coordinate_set_symbol_t.Coordinate_set_fence_symbol sym_csf) ->
	let tag_csf = Tag_v.make sym_csf soi_coo in 
	coordinate_envelopee_tuple_of_coordinate_set_fence_tag tag_csf

  | _ ->  
      Error_messages_v.print_fatal_error __LOC__ "make"
	"Coordinate_symbol were Coordinate_set_body_symbol | Coordinate_set_fence_symbol" 
	(Format.sprintf "%s" (Coordinate_symbol_v.fullname sym_coo))
	"Check" 
;;

(** {9 Envelopee_tuple_as Trio of Tag} *)

let coordinate_envelopee_tuple_as_trio_of_tag tag_coo =
  let env_coo_t = make tag_coo in
  try Tuple_v.trio_of_tuple env_coo_t 
  with Failure ("Not_a_trio:Tuple_v.trio_of_tuple") -> 
    Error_messages_v.print_fatal_error __LOC__ "coordinate_envelopee_tuple_as_trio_of_tag"
      (Format.sprintf "Coordinate Tuple Envelope %s for Tag %s were a Trio" 
	 (Tuple_v.name Coordinate_envelopee_v.fullname env_coo_t)
	 (Coordinate_tag_v.fullname tag_coo)
      )
      "it is NOT" 
      "Check" 
;;

(** {9 Envelope_as Duo of Tag} *)

let coordinate_envelopee_tuple_as_duo_of_tag tag_coo =
  let env_coo_t = make tag_coo in
  try Tuple_v.duo_of_tuple env_coo_t 
  with Failure ("Not_a_duo:Tuple_v.duo_of_tuple") -> 
    Error_messages_v.print_fatal_error __LOC__ "coordinate_envelopee_tuple_as_duo_of_tag"
      (Format.sprintf "Coordinate Tuple Envelope %s for Tag %s were a Duo" 
	 (Tuple_v.name Coordinate_envelopee_v.fullname env_coo_t)
	 (Coordinate_tag_v.fullname tag_coo)
      )
      "it is NOT" 
      "Check" 
;;

(** {6 Extracting off Envelope} *)

(** {9 Coordinate_set_fence_symbol Tuple} *)

let coordinate_set_fence_symbol_tuple_off_coordinate_envelopee_tuple eee_coo_t =
  Tuple_v.map
    Coordinate_envelopee_v.coordinate_set_fence_symbol_off_coordinate_envelopee 
    eee_coo_t
;;

let coordinate_symbol_tuple_off_coordinate_envelopee_tuple eee_coo_t =
  let sym_csf_t = 
    coordinate_set_fence_symbol_tuple_off_coordinate_envelopee_tuple 
      eee_coo_t 
  in
  Tuple_v.map
    Coordinate_symbol_v.coordinate_symbol_of_coordinate_set_fence_symbol
    sym_csf_t
;;

(** {9 Readee Tuple} *)

let readee_tuple_off_coordinate_envelopee_tuple eee_coo_t =
  Tuple_v.map
    Coordinate_envelopee_v.readee_off_coordinate_envelopee 
    eee_coo_t
;;

(** {9 Closure off Envelope : tuple of Readee} *)

let closure_off_coordinate_envelopee_tuple eee_coo_t =
  readee_tuple_off_coordinate_envelopee_tuple eee_coo_t 
;;

(** {9 Measure Tuple} *)

let measure_tuple_off_coordinate_envelopee_tuple eee_coo_t =
  Tuple_v.map
    Coordinate_envelopee_v.measure_off_coordinate_envelopee 
    eee_coo_t
;;

(** {6 Measure_canonical Tuple} *)

let measure_canonical_tuple_of_calculation_name_off_envelopee nam_cal eee_coo_t =
  Tuple_v.map
    Coordinate_envelopee_v.measure_off_coordinate_envelopee 
    eee_coo_t
;;

(** {6 Measure Trio of Tag} *)

let measure_trio_of_tag tag_coo =
  let env_coo_t = coordinate_envelopee_tuple_as_trio_of_tag tag_coo in
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
  let env_coo_t = coordinate_envelopee_tuple_as_duo_of_tag tag_coo in
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

(** {9 Units Tuple} *)

let units_tuple_off_coordinate_envelopee_tuple eee_coo_t =
  let mea_l = measure_tuple_off_coordinate_envelopee_tuple eee_coo_t in
  Tuple_v.map
    Measure_v.units_off_measure 
    mea_l
;;

(** {9 Float Tuple} *)

let float_tuple_off_coordinate_envelopee_tuple eee_coo_t  =
  let mea_t = measure_tuple_off_coordinate_envelopee_tuple eee_coo_t in
  Tuple_v.map
    Measure_v.float_off_measure
    mea_t
;;

(** {6 Naming_for_envelope} *)

let name eee_coo_t =
  Tuple_v.name Coordinate_envelopee_v.name eee_coo_t
;;

let string_off eee_coo_t =
  Tuple_v.name Coordinate_envelopee_v.name eee_coo_t
;;

let shortname eee_coo_t =
  Tuple_v.name Coordinate_envelopee_v.shortname eee_coo_t
;;

let fullname eee_coo_t =
  Tuple_v.name Coordinate_envelopee_v.fullname eee_coo_t
;;

let longname eee_coo_t =
  Tuple_v.name Coordinate_envelopee_v.longname eee_coo_t
;;

