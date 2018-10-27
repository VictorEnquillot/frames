(** {3 Readee_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : REA:Readee_v";
   "Needs : VELE:Readee_color_v";
   "Needs : VELE:Readee_measure_actual_v";
   "Needed-by :";
   "What-is-it : Up_coercion of Closure type as Symbol type up_coercion";
   "Remark : It is a CT Stem type";
   "Author : François Colonna 28 novembre 2016 at 15:48:40+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name = function
  | Readee_t.Readee_basic rba ->
      (Readee_basic_v.name rba)
	
  | Readee_t.Readee_color rco ->
      (Readee_color_v.name rco)
	
  | Readee_t.Readee_measure rme ->
      (Readee_measure_v.name rme)
;;

let shortname = function
  | Readee_t.Readee_basic rba ->
      (Readee_basic_v.shortname rba)
	
  | Readee_t.Readee_color rco ->
      (Readee_color_v.shortname rco)
	
  | Readee_t.Readee_measure rme ->
      (Readee_measure_v.shortname rme)
;;

let string_off = function
  | Readee_t.Readee_basic rba ->
      (Readee_basic_v.string_off rba)
	
  | Readee_t.Readee_color rco ->
      (Readee_color_v.string_off rco)
	
  | Readee_t.Readee_measure bun -> ""
;;

let longname = function
  | Readee_t.Readee_basic rba ->
      (Readee_basic_v.longname rba)

  | Readee_t.Readee_color col ->
      (Readee_color_v.longname col)

  | Readee_t.Readee_measure rme ->
      (Readee_measure_v.longname rme)
;;

let fullname = function
  | Readee_t.Readee_basic rba ->
      (Readee_basic_v.fullname rba)

  | Readee_t.Readee_color rco ->
      (Readee_color_v.fullname rco)
	
  | Readee_t.Readee_measure rme ->
      (Readee_measure_v.fullname rme)
;;

let dimension = function
  | Readee_t.Readee_basic rba -> ""
	
  | Readee_t.Readee_color rco -> ""
	
  | Readee_t.Readee_measure rme ->
      (Readee_measure_v.dimension rme)
;;

(** {6 Coercing up} *)

let readee_of_readee_basic rba =
  Readee_t.Readee_basic rba
;;

let readee_of_readee_color rco =
  Readee_t.Readee_color rco 
;;

let readee_of_readee_color sym_eco =
  Readee_t.Readee_color sym_eco 
;;

let readee_of_measure mea =
  let rem = Readee_measure_v.readee_measure_of_measure mea in
  Readee_t.Readee_measure rem
;;

(** {6 Coercing down} *)

let readee_basic_off_readee = function
  | Readee_t.Readee_basic col -> col
  | _ -> failwith "Not_a_basic:Readee_v.readee_basic_off_readee"
;;

let readee_basic_string_off_readee rea =
  let rba = readee_basic_off_readee rea in
  Readee_basic_v.readee_basic_string_off_readee_basic rba
;;

let readee_basic_integer_off_readee rea =
  let rba = readee_basic_off_readee rea in
  Readee_basic_v.readee_basic_integer_off_readee_basic rba
;;

let readee_basic_float_off_readee rea =
  let rba = readee_basic_off_readee rea in
  Readee_basic_v.readee_basic_float_off_readee_basic rba
;;

let readee_basic_boolean_off_readee rea =
  let rba = readee_basic_off_readee rea in
  Readee_basic_v.readee_basic_boolean_off_readee_basic rba
;;

let readee_color_off_readee = function
  | Readee_t.Readee_color col -> col
  | _ -> failwith "Not_a_color:Readee_v.readee_color_off_readee"
;;

let readee_measure_off_readee = function 
  | Readee_t.Readee_measure mea -> mea
  | _ -> failwith "Not_a_measure_actual:Readee_v.readee_measure_actual_off_readee"
;;

let measure_off_readee rea = 
  let rme = readee_measure_off_readee rea in
  Readee_measure_v.measure_off rme
;;

let measure_actual_off_readee rea = 
  let mea = measure_off_readee rea in
  Measure_v.measure_canonical_off_measure mea
;;

let measure_canonical_off_readee rea = 
  let mea = measure_off_readee rea in
  Measure_v.measure_canonical_off_measure mea
;;

let boolean boo = readee_of_readee_basic (Readee_basic_v.readee_basic_of_readee_basic_boolean boo);;
let float flo = readee_of_readee_basic (Readee_basic_v.readee_basic_of_readee_basic_float flo);;
let integer ing = readee_of_readee_basic (Readee_basic_v.readee_basic_of_readee_basic_integer ing);;
let string str = readee_of_readee_basic (Readee_basic_v.readee_basic_of_readee_basic_string str);;

(** {6 Making} *)

let make nam s v w =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "basic" -> Readee_t.Readee_basic (Readee_basic_v.make s v)
  | "color" -> Readee_t.Readee_color (Readee_color_v.make s "")
  | "measure" -> Readee_t.Readee_measure 
	(Readee_measure_v.make "readee_measure" s v w )
  | _ ->
      Error_messages_v.print_fatal_error nam_mod "make"
	(Format.sprintf "String >%s< were basic | color | measure | units" nam_low)
	"It is NOT"
	"Check DELE:Readee_v"
;;

