(** {3 Readee_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Readee_v";
   "Needs : VELE:Readee_color_v";
   "Needs : VELE:Readee_measure_v";
   "Needed-by :";
   "What-is-it : Up_coercion of Closure type as Symbol type up_coercion";
   "Remark : It is a CT Stem type";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name = function
  | Readee_t.Readee_basic pba ->
      (Readee_basic_v.name pba)
	
  | Readee_t.Readee_color pco ->
      (Elementary_fence_color_symbol_v.name pco)
	
  | Readee_t.Readee_units pun ->
      (Measure_v.name pun)
;;

let string_off = function
  | Readee_t.Readee_basic pba ->
      (Readee_basic_v.string_off pba)
	
  | Readee_t.Readee_color pco ->
      (Elementary_fence_color_symbol_v.string_off pco)
	
  | Readee_t.Readee_units bun ->
      (Measure_v.string_off bun)
;;

let longname = function
  | Readee_t.Readee_basic pba ->
      (Readee_basic_v.longname pba)

  | Readee_t.Readee_color col ->
      (Elementary_fence_color_symbol_v.longname col)

  | Readee_t.Readee_units mea ->
      (Measure_v.longname mea)
;;

let fullname = function
  | Readee_t.Readee_basic pba ->
      (Readee_basic_v.fullname pba)

  | Readee_t.Readee_color col ->
      (Elementary_fence_color_symbol_v.fullname col)
	
  | Readee_t.Readee_units mea ->
      (Measure_v.fullname mea)
;;

(** {6 Coercing up} *)

let readee_of_readee_basic pba =
  Readee_t.Readee_basic pba
;;

let readee_of_readee_color pco =
  Readee_t.Readee_color pco 
;;

let readee_of_elementary_fence_color_symbol sym_eco =
  Readee_t.Readee_color sym_eco 
;;

let readee_of_measure mea =
  Readee_t.Readee_units mea 
;;

let readee_of_readee_units mea =
  Readee_t.Readee_units mea 
;;

(** {6 Coercing down} *)

let readee_basic_off_readee = function
  | Readee_t.Readee_basic col -> col
  | _ -> failwith "Not_a_basic:Readee_v.readee_basic_off_readee"
;;

let readee_basic_string_off_readee rea =
  let pba = readee_basic_off_readee rea in
  Readee_basic_v.readee_basic_string_off_readee_basic pba
;;

let readee_basic_integer_off_readee rea =
  let pba = readee_basic_off_readee rea in
  Readee_basic_v.readee_basic_integer_off_readee_basic pba
;;

let readee_basic_float_off_readee rea =
  let pba = readee_basic_off_readee rea in
  Readee_basic_v.readee_basic_float_off_readee_basic pba
;;

let readee_basic_boolean_off_readee rea =
  let pba = readee_basic_off_readee rea in
  Readee_basic_v.readee_basic_boolean_off_readee_basic pba
;;

let readee_color_off_readee = function
  | Readee_t.Readee_color col -> col
  | _ -> failwith "Not_a_color:Readee_v.readee_color_off_readee"
;;

let readee_units_off_readee = function 
  | Readee_t.Readee_units mea -> mea
  | _ -> failwith "Not_a_measure:Readee_v.readee_measure_off_readee"
;;
let elementary_fence_color_symbol_off_readee rea = readee_color_off_readee rea;;

let measure_off_readee rea = readee_units_off_readee rea;;

let measure_off_readee_units plu_uni = plu_uni;;

let boolean boo = readee_of_readee_basic (Readee_basic_v.readee_basic_of_readee_basic_boolean boo);;
let float flo = readee_of_readee_basic (Readee_basic_v.readee_basic_of_readee_basic_float flo);;
let integer ing = readee_of_readee_basic (Readee_basic_v.readee_basic_of_readee_basic_integer ing);;
let string str = readee_of_readee_basic (Readee_basic_v.readee_basic_of_readee_basic_string str);;

(** {6 Making} *)

let make nam s v w =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "basic" -> Readee_t.Readee_basic (Readee_basic_v.make s v)
  | "color" -> Readee_t.Readee_color (Elementary_fence_color_symbol_v.make s "")
  | "units" -> Readee_t.Readee_units (Measure_v.make_of_string_of_string_of_string s v w)
  | "measure" -> Readee_t.Readee_units (Measure_v.make_of_string_of_string_of_string s v w )
  | _ ->
      Error_messages_v.print_fatal_error nam_mod "make"
	(Format.sprintf "String >%s< were basic | color | measure | units" nam_low)
	"It is NOT"
	"Check DELE:Readee_v"
;;

