(** {3 An Float_positive is an float > 0.} *)

let nam_mod = "Float_positive_p";;


(** An float_positive is a positive float. *)

type float_positive = Float_positive of float
;;

let float_positive f = 
  if (f <= 0.) 
  then failwith "Float_positive_is_positive:Float_positive_p.make"
  else Float_positive f
;;

let make f = 
  if (f <= 0.) 
  then failwith "Float_positive_is_positive:Float_positive_p.make"
  else Float_positive f
;;

let print_error_float f mdn her =
    Format.fprintf Format.err_formatter 
    "@.@[<hov>%s.%s: --- Fatal Error ---@.\
    float >%f< not positive. not an float_positive@]@." 
    mdn her f;       
;;

let fail_float f mdn her =
  print_error_float f mdn her;
  assert false
;;

let float_of_float_positive = function 
    Float_positive f -> f
;;

let is_greater flp_1 flp_2 =
  (float_of_float_positive flp_1) > (float_of_float_positive flp_2)
;;

let add flp_1 flp_2 =
  make ((float_of_float_positive flp_1) +. (float_of_float_positive flp_2))
;;

let multiply flp_1 flp_2 =
  make ((float_of_float_positive flp_1) *. (float_of_float_positive flp_2))
;;

let divide flp_1 flp_2 =
  make ((float_of_float_positive flp_1) /. (float_of_float_positive flp_2))
;;

let compare fp1 fp2 =
  let f1 = float_of_float_positive fp1 in
  let f2 = float_of_float_positive fp2 in
  compare f1 f2
;;

let name flp =
  Format.sprintf "%f" (float_of_float_positive flp)
;;

let one = make 1.;;
let two = make 2.;;
let three = make 3.;;
let four = make 4.;;
let five = make 5.;;
let six = make 6.;;
let seven = make 7.;;
let eight = make 8.;;
let nine = make 9.;;
let ten = make 10.;;
