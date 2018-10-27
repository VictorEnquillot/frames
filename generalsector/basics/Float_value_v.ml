(** {3 Float_value_v} *)

let nam_mod = "Float_value_v";;

let float_value_of_string_of_float s f = 
  Float_value_t.Float_constructor (s, f)
;;

let float_value_of_string_of_string s sf = 
  let f = Scanf.sscanf sf " %f " (fun f -> f) in
  float_value_of_string_of_float s f
;;

(** {6 Abbreviating} *)

let one s = float_value_of_string_of_float s  1. ;;
let two s = float_value_of_string_of_float s  2. ;;
let three s = float_value_of_string_of_float s  3. ;;
let four s = float_value_of_string_of_float s  4. ;;
let five s = float_value_of_string_of_float s  5. ;;
let six s = float_value_of_string_of_float s  6. ;;
let seven s = float_value_of_string_of_float s  7. ;;
let eight s = float_value_of_string_of_float s  8. ;;
let nine s = float_value_of_string_of_float s  9. ;;
let ten s = float_value_of_string_of_float s  10. ;;

let one_half s = float_value_of_string_of_float s Constants_v.one_half ;;
 
let zero_single s = float_value_of_string_of_float s Constants_v.zero_single ;;

let zero_double s = float_value_of_string_of_float s Constants_v.zero_double ;;

(** {6 Extracting} *)

let float_off_float_value = function 
    Float_value_t.Float_constructor (s, f) -> f
;;

let string_off_float_value = function 
    Float_value_t.Float_constructor (s, f) -> s
;;

(** {6 Querying} *)

let is_greater val_flo_1 val_flo_2 =
  (float_off_float_value val_flo_1) > (float_off_float_value val_flo_2)
;;

let add val_flo_1 val_flo_2 =
  let s_1 = string_off_float_value val_flo_1 in
  let s_2 = string_off_float_value val_flo_2 in
  let f = (float_off_float_value val_flo_1) +. (float_off_float_value val_flo_2) in
  let s = s_1 ^ " + " ^ s_2 in
  float_value_of_string_of_float s f
;;

let multiply val_flo_1 val_flo_2 =
  let s_1 = string_off_float_value val_flo_1 in
  let s_2 = string_off_float_value val_flo_2 in
  let f = (float_off_float_value val_flo_1) *. (float_off_float_value val_flo_2) in
  let s = s_1 ^ " * " ^ s_2 in
  float_value_of_string_of_float s f
;;

let divide val_flo_1 val_flo_2 =
  let s_1 = string_off_float_value val_flo_1 in
  let s_2 = string_off_float_value val_flo_2 in
  let f = (float_off_float_value val_flo_1) /. (float_off_float_value val_flo_2) in
  let s = s_1 ^ " / " ^ s_2 in
  float_value_of_string_of_float s f
;;

let compare fp1 fp2 =
  let f1 = float_off_float_value fp1 in
  let f2 = float_off_float_value fp2 in
  compare f1 f2
;;

let name val_flo =
  Format.sprintf "(%s %f)" 
    (string_off_float_value val_flo) 
    (float_off_float_value val_flo)
;;

let as_string val_flo = name val_flo;;

let are_equal_of_epsilon eps f1 f2 =
  abs_float (f1 -. f2) < eps
;;

let are_equal_at_epsilon_float f1 f2 =
  abs_float (f1 -. f2) < epsilon_float
;;

