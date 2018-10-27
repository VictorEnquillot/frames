(** {3 Elementary_envelopee_tuple_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : EELE:Elementary_envelopee_tuple_v";
   "Needs : EELE:Elementary_coordinate_envelope_v";
   "Needs : EELE:Elementary_parameter_envelope_v";
   "Needed-by : any envelope_v.ml";
   "Definition : an Elementary_envelopee_tuple = (Tagged_readee) is a Elementary_envelopee_tuple = Coordinate_envelopee_tuple | Parameter_envelopee_tuple";
   "What-is-it : it is (Coordinate_set_fence_tag, Readee) generalization of old belts";
   "What-is-it : it provide the Measure for a specific Coordinate_set_fence Tag";
   "What-is-it : it is the Building brick of all Envelopes";
   "Abbreviation : eee_coo = coordinate_envelopee_tuple";
   "Abbreviation : _csf = coordinate_set_fence";
   "Author : François Colonna 27 décembre 2016 at 13:28:23+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name = function
  | Elementary_envelopee_tuple_t.Coordinate_envelopee_tuple eee_coo_t -> 
      Coordinate_envelopee_tuple_v.name eee_coo_t
  | Elementary_envelopee_tuple_t.Parameter_envelopee_tuple eee_par_t -> 
      Parameter_envelopee_tuple_v.name eee_par_t
;;

let shortname = function
  | Elementary_envelopee_tuple_t.Coordinate_envelopee_tuple eee_coo_t -> 
      Coordinate_envelopee_tuple_v.shortname eee_coo_t

  | Elementary_envelopee_tuple_t.Parameter_envelopee_tuple eee_par_t -> 
      Parameter_envelopee_tuple_v.shortname eee_par_t
;;

let string_off = function
  | Elementary_envelopee_tuple_t.Coordinate_envelopee_tuple eee_coo_t -> 
      Coordinate_envelopee_tuple_v.string_off eee_coo_t
  | Elementary_envelopee_tuple_t.Parameter_envelopee_tuple eee_par_t -> 
      Parameter_envelopee_tuple_v.string_off eee_par_t
;;

let longname = function
  | Elementary_envelopee_tuple_t.Coordinate_envelopee_tuple eee_coo_t -> 
      Coordinate_envelopee_tuple_v.longname eee_coo_t
  | Elementary_envelopee_tuple_t.Parameter_envelopee_tuple eee_par_t -> 
      Parameter_envelopee_tuple_v.longname eee_par_t
;;

let fullname = function
  | Elementary_envelopee_tuple_t.Coordinate_envelopee_tuple eee_coo_t -> 
      Coordinate_envelopee_tuple_v.fullname eee_coo_t
  | Elementary_envelopee_tuple_t.Parameter_envelopee_tuple eee_par_t -> 
      Parameter_envelopee_tuple_v.fullname eee_par_t
;;

(** {6 Making} *)

let elementary_envelopee_tuple_of_coordinate_envelopee_tuple eee_coo_t =
  Elementary_envelopee_tuple_t.Coordinate_envelopee_tuple eee_coo_t
;;

let elementary_envelopee_tuple_of_parameter_envelopee_tuple eee_par_t =
  Elementary_envelopee_tuple_t.Parameter_envelopee_tuple eee_par_t
;;

(** {6 Extracting} *)

let coordinate_envelopee_tuple_off_elementary_envelopee_tuple = function
  | Elementary_envelopee_tuple_t.Coordinate_envelopee_tuple eee_coo_t -> eee_coo_t
  | _ ->  
      failwith "Not_a_Coordinate_envelopee_tuple:Elementary_envelopee_tuple_v.ml:coordinate_envelopee_tuple_off_elementary_envelopee_tuple"
;;

let coordinate_set_fence_symbol_tuple_off_elementary_envelopee_tuple = function
  | Elementary_envelopee_tuple_t.Coordinate_envelopee_tuple eee_coo_t ->
      Coordinate_envelopee_tuple_v.coordinate_set_fence_symbol_tuple_off_coordinate_envelopee_tuple eee_coo_t
                                   
  | eee_pro -> Error_messages_v.print_fatal_error 
	nam_mod "coordinate_set_fence_symbol_tuple_off_elementary_envelopee_tuple"
	"Elementary_envelopee_tuple_t.Coordinate_envelopee_tuple"
	(name eee_pro) 
	"check"
;;

let coordinate_symbol_tuple_off_elementary_envelopee_tuple = function
  | Elementary_envelopee_tuple_t.Coordinate_envelopee_tuple eee_coo_t ->
      Coordinate_envelopee_tuple_v.coordinate_symbol_tuple_off_coordinate_envelopee_tuple eee_coo_t
  | eee_pro -> Error_messages_v.print_fatal_error 
	nam_mod "coordinate_symbol_tuple_off_elementary_envelopee_tuple"
	"Elementary_envelopee_tuple_t.Coordinate_envelopee_tuple"
	(name eee_pro) 
	"check"
;;

let parameter_envelopee_tuple_off_elementary_envelopee_tuple = function
  | Elementary_envelopee_tuple_t.Parameter_envelopee_tuple eee_par_t -> eee_par_t
  | _ ->  
      failwith "Not_a_Parameter_envelopee_tuple:Elementary_envelopee_tuple_v.ml:parameter_envelopee_tuple_off_elementary_envelopee_tuple"
;;

let parameter_set_fence_symbol_tuple_off_elementary_envelopee_tuple = function
  | Elementary_envelopee_tuple_t.Parameter_envelopee_tuple eee_coo_t ->
      Parameter_envelopee_tuple_v.parameter_set_fence_symbol_tuple_off_parameter_envelopee_tuple eee_coo_t

  | eee_pro -> Error_messages_v.print_fatal_error 
	nam_mod "parameter_symbol_off_elementary_envelopee_tuple"
	"Elementary_envelopee_tuple_t.Parameter_envelopee_tuple"
	(name eee_pro) 
	"check"
;;

let parameter_symbol_tuple_off_elementary_envelopee_tuple = function
  | Elementary_envelopee_tuple_t.Parameter_envelopee_tuple eee_coo_t ->
      Parameter_envelopee_tuple_v.parameter_symbol_tuple_off_parameter_envelopee_tuple eee_coo_t

  | eee_pro -> Error_messages_v.print_fatal_error 
	nam_mod "parameter_symbol_tuple_off_elementary_envelopee_tuple"
	"Elementary_envelopee_tuple_t.Parameter_envelopee_tuple"
	(name eee_pro) 
	"check"
;;

let readee_tuple_off_elementary_envelopee_tuple = function
  | Elementary_envelopee_tuple_t.Coordinate_envelopee_tuple eee_coo_t -> 
      Coordinate_envelopee_tuple_v.readee_tuple_off_coordinate_envelopee_tuple eee_coo_t
  | Elementary_envelopee_tuple_t.Parameter_envelopee_tuple eee_par_t -> 
      Parameter_envelopee_tuple_v.readee_tuple_off_parameter_envelopee_tuple eee_par_t
;;

let measure_tuple_off_elementary_envelopee_tuple eee_ele_t =
  let rea_t = readee_tuple_off_elementary_envelopee_tuple eee_ele_t in
  Tuple_v.map Readee_v.measure_off_readee rea_t
;;

(** {6 Float} *)

let float_tuple_off_elementary_envelopee_tuple eee_ele_t  =
  let mea_t = measure_tuple_off_elementary_envelopee_tuple eee_ele_t in
  Tuple_v.map Measure_v.float_off_measure mea_t 
;;

(** {6 Units} *)

let units_tuple_off_elementary_envelopee_tuple eee_ele_t =
  let mea_t = measure_tuple_off_elementary_envelopee_tuple eee_ele_t in
  Tuple_v.map Measure_v.units_off_measure mea_t
;;

let measured_float_tuple_off_elementary_envelopee_tuple eee_ele_t =
  let flo_t = float_tuple_off_elementary_envelopee_tuple eee_ele_t in
  let uni_t = units_tuple_off_elementary_envelopee_tuple eee_ele_t in
  if Units_tuple_v.is_homogeneous_of_units_tuple uni_t
  then Measured_float_tuple_v.make flo_t uni_t
  else failwith "Non_homogeneous_tuple:Units_tuple_v.make_of_measure_tuple"
;;
