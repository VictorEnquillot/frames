(** {3 The token used in any PDB record.} *)

let nam_cod = "Tokenpdb_v";;

let read_date_9 ib =
  Scanf.bscanf ib "%2i-%3s-%2i" (fun d m y -> (d, m, y))
;;

let date_9_of_string  str =
  let ib = Scanf.Scanning.from_string str in 
  read_date_9 ib
;;

(* TODO let string_2_of_string str = *)

let skip_char ib =
  Scanf.bscanf ib "%1c" (function i -> ())
;;

let read_integer_1 ib =
  Scanf.bscanf ib " %1i" (function i -> i)
;;

let read_integer_4 ib =
  Scanf.bscanf ib " %4i" (function i -> i)
;;

let read_integer_5 ib =
  Scanf.bscanf ib " %5i" (function i -> i)
;;

let read_integer_6 ib =
  Scanf.bscanf ib " %6i" (function i -> i)
;;

let read_integer_7 ib =
  Scanf.bscanf ib " %7i" (function i -> i)
;;

let read_float_4 ib =
  Scanf.bscanf ib " %4f" (function f -> f)
;;

let read_float_5 ib =
  Scanf.bscanf ib " %5f" (function f -> f)
;;

let read_float_6 ib =
  Scanf.bscanf ib " %6f" (function f -> f)
;;

let read_float_8 ib =
  Scanf.bscanf ib " %8f" (function f -> f)
;;

let integer_1_of_string  str =
  let ib = Scanf.Scanning.from_string str in
  read_integer_1 ib
;;

let integer_4_of_string  str =
  let ib = Scanf.Scanning.from_string str in
  read_integer_4 ib
;;

let integer_5_of_string  str =
  let ib = Scanf.Scanning.from_string str in
  read_integer_5 ib
;;

let float_4_of_string  str =
  let ib = Scanf.Scanning.from_string str in
  read_float_4 ib
;;

let float_5_of_string  str =
  let ib = Scanf.Scanning.from_string str in
  read_float_4 ib
;;

let float_6_of_string  str =
  let ib = Scanf.Scanning.from_string str in
  read_float_6 ib
;;

let float_8_of_string  str =
  let ib = Scanf.Scanning.from_string str in
  read_float_8 ib
;;

let integer_4_of_int i =
  let str = string_of_int i in
  Scanf.sscanf str "%4i" (fun i -> i)
;;

let integer_1_of_int i =
  let str = string_of_int i in
  Scanf.sscanf str "%1i" (fun i -> i)
;;

let float_6_of_float  f =
  Scanf.sscanf (string_of_float f) "%6f" (fun f -> f)
;;

let float_8_of_float  f =
  Scanf.sscanf (string_of_float f) "%8f" (fun f -> f)
;;

let read_string_1 ib =
  Scanf.bscanf ib "%1s" (function s -> s)
;;

let read_string_2 ib =
  Scanf.bscanf ib "%2s" (function s -> s)
;;

let read_string_3 ib =
  Scanf.bscanf ib "%3s" (function s -> s)
;;

let read_string_4 ib =
  Scanf.bscanf ib "%4s" (function s -> s)
;;

let read_string_6 ib =
  Scanf.bscanf ib "%6s" (function s -> s)
;;

let read_string_8 ib =
  Scanf.bscanf ib "%8s" (function s -> s)
;;

let read_string_44 ib =
  Scanf.bscanf ib "%44s" (function s -> s)
;;

let read_string_52 ib =
  Scanf.bscanf ib "%52s" (function s -> s)
;;

let print_word  ppf  word =
  Format.fprintf ppf "%s" word
;;

let print_integer_5  ppf  i5 =
  Format.fprintf ppf "%5i" i5
;;

let print_integer_4  ppf  i4 =
  Format.fprintf ppf "%4i" i4
;;

let print_integer_2  ppf  i2 =
  Format.fprintf ppf "%2i" i2
;;

let print_integer_1  ppf  i1 =
  Format.fprintf ppf "%1i" i1
;;

let print_float_4  ppf  f4 =
  Format.fprintf ppf "%4f" f4
;;

let print_float_5  ppf  f5 =
  Format.fprintf ppf "%5f" f5
;;

let print_float_6  ppf  f6 =
  Format.fprintf ppf "%6f" f6
;;

let print_float_8  ppf  f8 =
  Format.fprintf ppf "%8f" f8
;;

let print_string_8  ppf  s8 =
  Format.fprintf ppf "%8s" s8
;;

let print_string_6  ppf  s6 =
  Format.fprintf ppf "%6s" s6
;;

let print_string_4  ppf  s4 =
  Format.fprintf ppf "%4s" s4
;;

let print_string_3  ppf  s3 =
  Format.fprintf ppf "%3s" s3
;;

let print_string_2  ppf  s2 =
  Format.fprintf ppf "%2s" s2
;;

let print_date_9 ppf dat9 =
  let (d, m, y) = dat9 in
  Format.fprintf ppf "%a-%a-%a"
    print_integer_2 d
    print_string_3 m 
    print_integer_2 y
;;
 
let string_of_date_9  dat9 =
 print_date_9  Format.str_formatter dat9;
  Format.flush_str_formatter () 
;;

