(** {3 Parameter_envelope_v} *)

(** {6 Documenting_for_envelope} *)

let documentation () = 
  [
   "Current : EPAR:Parameter_envelope_v";
   "Needed-by : ";

   "Definition : an Envelopee = (Labelled_readee) is a Elementary_envelopee = Parameter_envelopee | Parameter_envelopee";
   "Definition : a  Parameter_envelopee = (Parameter_set_fence_symbol, Readee) Tuple";
   "Definition : an Envelope is a tuple_list of Envelopee. It propagates Labelled Readee along the BT";
   "Definition : a Closure is a list of Readee. It valuates the Fence i.e. the Deepestfence of any Domain";   
   "Remark : Parameter_envelope_t is NOT coerced";
   "Author : François Colonna 06 janvier 2017 at 15:48:43+01:00";
   "Author : François Colonna 04 mai 2017 at 11:49:22+02:00 tag -> symbol";
   "Author : François Colonna 12 juin 2017 at 15:14:26+02:00 tuple not list";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {9 Envelopee Tuple of Tag} *)

let parameter_envelopee_tuple_of_tag tag_par =
  let nam_fun = "parameter_envelopee_tuple_of_tag" in

  let soi_par = Tag_v.sole_index_off_tag tag_par in
  let sym_par = Tag_v.entity_off_tag tag_par in
  match sym_par with
  | Parameter_symbol_t.Parameter_set_symbol 
      (Parameter_set_symbol_t.Parameter_set_fence_symbol sym_psf) -> 
	Parameter_set_fence_envelope_v.envelope_as_tuple_of_tag (sym_psf, soi_par) 

  | Parameter_symbol_t.Parameter_set_symbol 
      (Parameter_set_symbol_t.Parameter_set_body_symbol sym_psb) -> 
	Parameter_set_body_envelope_v.envelope_of_tag (sym_psb, soi_par)

  | _ -> 
      Error_messages_v.print_fatal_error __LOC__ nam_fun
	"Parameter_symbol were Parameter_set_fence_symbol | Parameter_set_body_symbol"
	(Format.sprintf "%s" (Parameter_symbol_v.fullname sym_par))
	"Check"
;;

(** {9 Envelope_as Tuple of Tag} *)

let envelope_as_tuple_of_tag tag_par =
  parameter_envelopee_tuple_of_tag tag_par
;;

(** {9 Envelope_as Trio of Tag} *)

let envelope_as_trio_of_tag tag_par =
  let nam_fun = "envelope_as_trio_of_tag" in

  let soi_par = Tag_v.sole_index_off_tag tag_par in
  let sym_par = Tag_v.entity_off_tag tag_par in
  match sym_par with
  | Parameter_symbol_t.Parameter_set_symbol 
      (Parameter_set_symbol_t.Parameter_set_body_symbol 
	 (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol sym_pbt)) -> 
	Parameter_envelopee_tuple_v.parameter_envelopee_tuple_as_trio_of_tag (sym_pbt, soi_par)

  | _ -> 
      Error_messages_v.print_fatal_error __LOC__ nam_fun
	"Parameter_symbol were Parameter_set_body_symbol"
	(Format.sprintf "%s" (Parameter_symbol_v.fullname sym_par))
	"Check"
;;

(** {9 Envelope_as Duo of Tag} *)

let envelope_as_duo_of_tag tag_par =
  let nam_fun = "envelope_as_trio_of_tag" in

  let soi_par = Tag_v.sole_index_off_tag tag_par in
  let sym_par = Tag_v.entity_off_tag tag_par in
  match sym_par with
  | Parameter_symbol_t.Parameter_set_symbol 
      (Parameter_set_symbol_t.Parameter_set_body_symbol 
	 (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol sym_pbt)) -> 
	   Parameter_envelopee_tuple_v.parameter_envelopee_tuple_as_duo_of_tag (sym_pbt, soi_par)

  | _ -> 
      Error_messages_v.print_fatal_error __LOC__ nam_fun
	"Parameter_symbol were Parameter_set_body_symbol"
	(Format.sprintf "%s" (Parameter_symbol_v.fullname sym_par))
	"Check"
;;

(** {6 Envelope of Tag} *)

let envelope_of_tag tag_par =
  parameter_envelopee_tuple_of_tag tag_par 
;;

(** {6 Making} *)

let make tag_par =
  envelope_of_tag tag_par
;;

(** {6 Measure Tuple of Tag} *)

let measure_tuple_of_tag tag_par =
  let nam_fun = "measure_tuple_of_tag" in

  let soi_par = Tag_v.sole_index_off_tag tag_par in
  let sym_par = Tag_v.entity_off_tag tag_par in
  match sym_par with
  | Parameter_symbol_t.Parameter_set_symbol 
      (Parameter_set_symbol_t.Parameter_set_fence_symbol sym_psf) -> 
	Parameter_set_fence_envelope_v.measure_tuple_of_tag (sym_psf, soi_par) 

  | Parameter_symbol_t.Parameter_set_symbol 
      (Parameter_set_symbol_t.Parameter_set_body_symbol sym_psb) -> 
	Parameter_set_body_envelope_v.measure_tuple_of_tag (sym_psb, soi_par)

  | _ -> 
      Error_messages_v.print_fatal_error __LOC__ nam_fun
	"Parameter_symbol were Parameter_set_fence_symbol | Parameter_set_body_symbol"
	(Format.sprintf "%s" (Parameter_symbol_v.fullname sym_par))
	"Check"
;;

(** {6 Measure_actual Tuple of Tag} *)

let measure_actual_tuple_of_tag tag_par =
  let mea_l = measure_tuple_of_tag tag_par in
  Tuple_v.map Measure_v.measure_actual_off_measure mea_l
;;

(** {6 Measure_canonical Tuple of Tag} *)

let measure_canonical_tuple_of_calculation_name_of_tag nam_cal tag_par =
  let mea_l = measure_tuple_of_tag tag_par in
  Tuple_v.map 
    (fun m -> 
      Measure_v.measure_canonical_of_measure_of_calculation_name 
	m nam_cal
    )
    mea_l
;;

(** {6 Measure Trio of Tag} *)

let measure_trio_of_tag tag_par =
  let env_par_t = envelope_as_trio_of_tag tag_par in
  Trio_v.map 
    Parameter_envelopee_v.measure_off_parameter_envelopee 
    env_par_t
;;

(** {6 Measure_actual Trio of Tag} *)

let measure_actual_trio_of_tag tag_par =
  let mea_t = measure_trio_of_tag tag_par in
  Trio_v.map Measure_v.measure_actual_off_measure mea_t
;;

(** {6 Measure_canonical Trio of Tag} *)

let measure_canonical_trio_of_calculation_name_of_tag nam_cal tag_par =
  let mea_l = measure_trio_of_tag tag_par in
  Trio_v.map 
    (fun m -> 
      Measure_v.measure_canonical_of_measure_of_calculation_name 
	m nam_cal
    )
    mea_l
;;

(** {6 Measure Duo of Tag} *)

let measure_duo_of_tag tag_par =
  let env_par_t = envelope_as_duo_of_tag tag_par in
  Duo_v.map 
    Parameter_envelopee_v.measure_off_parameter_envelopee 
    env_par_t
;;

(** {6 Measure_actual Duo of Tag} *)

let measure_actual_duo_of_tag tag_par =
  let mea_t = measure_duo_of_tag tag_par in
  Duo_v.map Measure_v.measure_actual_off_measure mea_t
;;

(** {6 Measure_canonical Duo of Tag} *)

let measure_canonical_duo_of_calculation_name_of_tag nam_cal tag_par =
  let mea_l = measure_duo_of_tag tag_par in
  Duo_v.map 
    (fun m -> 
      Measure_v.measure_canonical_of_measure_of_calculation_name 
	m nam_cal
    )
    mea_l
;;

(** {9 Units Tuple of Tag} *)

let units_tuple_of_tag tag_par =
  let mea_l = measure_tuple_of_tag tag_par in
  Tuple_v.map 
    Measure_v.units_off_measure 
    mea_l
;;

(** {9 Float Tuple of Tag} *)

let float_tuple_of_tag tag_par  =
  let mea_l = measure_tuple_of_tag tag_par in
  Tuple_v.map 
    Measure_v.float_off_measure 
    mea_l 
;;

(** {6 Readee Tuple of Tag} *)

let readee_tuple_of_tag tag_par =
  let env_par = envelope_of_tag tag_par in
  Tuple_v.map
    Parameter_envelopee_v.readee_off_parameter_envelopee 
    env_par
;;

(** {9 Closure of Tag : tuple of Readee} *)

let closure_of_tag tag_par =
  readee_tuple_of_tag tag_par
;;

(** {6 Extracting off Envelope} *)

(** {9 Parameter_set_fence_symbol Tuple off Envelope} *)

let parameter_set_fence_symbol_tuple_off_envelope env_par =
  Tuple_v.map
    Parameter_envelopee_v.parameter_set_fence_symbol_off_parameter_envelopee 
    env_par
;;

(** {9 Parameter_symbol Tuple off Envelope} *)

let parameter_symbol_tuple_off_envelope env_par =
  let sym_psf_t = parameter_set_fence_symbol_tuple_off_envelope env_par in 
  Tuple_v.map
    Parameter_symbol_v.parameter_symbol_of_parameter_set_fence_symbol
    sym_psf_t
;;

(** {9 Readee Tuple off Envelope} *)

let readee_tuple_off_envelope env_par =
  Tuple_v.map
    Parameter_envelopee_v.readee_off_parameter_envelopee 
    env_par
;;

(** {9 Closure off Envelope : tuple of Readee} *)

let closure_off_envelope env_par =
  readee_tuple_off_envelope env_par 
;;

(** {9 Measure Tuple off Envelope} *)

let measure_tuple_off_envelope env_par =
  Tuple_v.map
    Parameter_envelopee_v.measure_off_parameter_envelopee 
    env_par
;;

(** {9 Measure Tuple off Envelope} *)

let measure_tuple_off_envelope env_par =
  let mea_l =  measure_tuple_off_envelope env_par in
  Tuple_v.tuple_of_tuple mea_l
;;

(** {9 Units Tuple off Envelope} *)

let units_tuple_off_envelope env_par =
  let mea_l = measure_tuple_off_envelope env_par in
  Tuple_v.map
    Measure_v.units_off_measure 
    mea_l
;;

(** {9 Float Tuple off Envelope} *)

let float_off_envelope env_par  =
  let mea_l = measure_tuple_off_envelope env_par in
  Tuple_v.map
    Measure_v.float_off_measure
    mea_l
;;

(** {6 Naming_for_envelope} *)

let name env_par =
  Tuple_v.name Parameter_envelopee_v.name env_par
;;

let string_off env_par =
  Tuple_v.name Parameter_envelopee_v.name env_par
;;

let shortname env_par =
  Tuple_v.name Parameter_envelopee_v.shortname env_par
;;

let dimension env_par =
  Tuple_v.name Parameter_envelopee_v.dimension env_par
;;

let fullname env_par =
  Tuple_v.name Parameter_envelopee_v.fullname env_par
;;

let longname env_par =
  Tuple_v.name Parameter_envelopee_v.longname env_par
;;

