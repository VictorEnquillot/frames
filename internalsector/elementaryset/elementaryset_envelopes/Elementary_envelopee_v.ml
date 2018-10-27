(** {3 Elementary_envelopee_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : EELE:Elementary_envelopee_v";
   "Needs : EELE:Elementary_coordinate_envelope_v";
   "Needed-by : any envelope_v.ml";
   "Definition : an Elementary_envelopee = (Tagged_readee) is a Elementary_envelopee = Coordinate_envelopee | Parameter_envelopee";
   "What-is-it : it is (Coordinate_set_fence_tag, Readee) generalization of old belts";
   "What-is-it : it provide the Measure for a specific Coordinate_set_fence Tag";
   "What-is-it : it is the Building brick of all Envelopes";
   "Abbreviation : eee_coo = coordinate_envelopee";
   "Abbreviation : _csf = coordinate_set_fence";
   "Author : François Colonna 27 décembre 2016 at 13:28:23+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name = function
  | Elementary_envelopee_t.Coordinate_envelopee eee_coo -> 
      Coordinate_envelopee_v.name eee_coo
  | Elementary_envelopee_t.Parameter_envelopee eee_par -> 
      Parameter_envelopee_v.name eee_par
;;

let shortname = function
  | Elementary_envelopee_t.Coordinate_envelopee eee_coo -> 
      Coordinate_envelopee_v.shortname eee_coo

  | Elementary_envelopee_t.Parameter_envelopee eee_par -> 
      Parameter_envelopee_v.shortname eee_par
;;

let string_off = function
  | Elementary_envelopee_t.Coordinate_envelopee eee_coo -> 
      Coordinate_envelopee_v.string_off eee_coo
  | Elementary_envelopee_t.Parameter_envelopee eee_par -> 
      Parameter_envelopee_v.string_off eee_par
;;

let longname = function
  | Elementary_envelopee_t.Coordinate_envelopee eee_coo -> 
      Coordinate_envelopee_v.longname eee_coo
  | Elementary_envelopee_t.Parameter_envelopee eee_par -> 
      Parameter_envelopee_v.longname eee_par
;;

let fullname = function
  | Elementary_envelopee_t.Coordinate_envelopee eee_coo -> 
      Coordinate_envelopee_v.fullname eee_coo
  | Elementary_envelopee_t.Parameter_envelopee eee_par -> 
      Parameter_envelopee_v.fullname eee_par
;;

(** {6 Making} *)

let elementary_envelopee_of_coordinate_envelopee eee_coo =
  Elementary_envelopee_t.Coordinate_envelopee eee_coo
;;

let elementary_envelopee_of_parameter_envelopee eee_par =
  Elementary_envelopee_t.Parameter_envelopee eee_par
;;

(** {6 Extracting} *)

let coordinate_envelopee_off_elementary_envelopee = function
  | Elementary_envelopee_t.Coordinate_envelopee eee_coo -> eee_coo
  | _ ->  
      failwith "Not_a_Coordinate_envelopee:Elementary_envelopee_v.ml:coordinate_envelopee_off_elementary_envelopee"
;;

let coordinate_set_fence_symbol_off_elementary_envelopee = function
  | Elementary_envelopee_t.Coordinate_envelopee eee_coo ->
      Coordinate_envelopee_v.coordinate_set_fence_symbol_off_coordinate_envelopee eee_coo

  | eee_pro -> Error_messages_v.print_fatal_error 
	nam_mod "coordinate_symbol_off_elementary_envelopee"
	"Elementary_envelopee_t.Coordinate_envelopee"
	(name eee_pro) 
	"check"
;;

let coordinate_symbol_off_elementary_envelopee = function
  | Elementary_envelopee_t.Coordinate_envelopee eee_coo ->
      Coordinate_envelopee_v.coordinate_symbol_off_coordinate_envelopee eee_coo
  | eee_pro -> Error_messages_v.print_fatal_error 
	nam_mod "coordinate_symbol_off_elementary_envelopee"
	"Elementary_envelopee_t.Coordinate_envelopee"
	(name eee_pro) 
	"check"
;;

let parameter_envelopee_off_elementary_envelopee = function
  | Elementary_envelopee_t.Parameter_envelopee eee_par -> eee_par
  | _ ->  
      failwith "Not_a_Parameter_envelopee:Elementary_envelopee_v.ml:parameter_envelopee_off_elementary_envelopee"
;;

let parameter_set_fence_symbol_off_elementary_envelopee = function
  | Elementary_envelopee_t.Parameter_envelopee eee_coo ->
      Parameter_envelopee_v.parameter_set_fence_symbol_off_parameter_envelopee eee_coo

  | eee_pro -> Error_messages_v.print_fatal_error 
	nam_mod "parameter_symbol_off_elementary_envelopee"
	"Elementary_envelopee_t.Parameter_envelopee"
	(name eee_pro) 
	"check"
;;

let parameter_symbol_off_elementary_envelopee = function
  | Elementary_envelopee_t.Parameter_envelopee eee_coo ->
      Parameter_envelopee_v.parameter_symbol_off_parameter_envelopee eee_coo
  | eee_pro -> Error_messages_v.print_fatal_error 
	nam_mod "parameter_symbol_off_elementary_envelopee"
	"Elementary_envelopee_t.Parameter_envelopee"
	(name eee_pro) 
	"check"
;;

let readee_off_elementary_envelopee = function
  | Elementary_envelopee_t.Coordinate_envelopee eee_coo -> 
      Coordinate_envelopee_v.readee_off_coordinate_envelopee eee_coo
  | Elementary_envelopee_t.Parameter_envelopee eee_par -> 
      Parameter_envelopee_v.readee_off_parameter_envelopee eee_par
;;

let measure_off_elementary_envelopee eee =
  let rea = readee_off_elementary_envelopee eee in
  Readee_v.measure_off_readee rea
;;

(** {6 Float} *)

let float_off_elementary_envelopee eee  =
  let mea = measure_off_elementary_envelopee eee in
  Measure_v.float_off_measure mea 
;;

(** {6 Units} *)

let units_off_elementary_envelopee eee =
  let mea = measure_off_elementary_envelopee eee in
  Measure_v.units_off_measure mea
;;

