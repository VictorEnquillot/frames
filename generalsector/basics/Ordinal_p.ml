(** {3 An Ordinal is an integer > 0.} *)

let nam_mod = "Ordinal_p";;

(** An ordinal is a positive integer. *)

type ordinal = Ordinal of int
;;

let ordinal i = 
  if (i <= 0) 
  then failwith "Ordinal_is_positive:Ordinal_p.make"
  else Ordinal i
;;

let make i = 
  if (i <= 0) 
  then failwith "Ordinal_is_positive:Ordinal_p.make"
  else Ordinal i
;;

let print_error_integer i mdn her =
    Format.fprintf Format.err_formatter 
    "@.@[<hov>%s.%s: --- Fatal Error ---@.\
    integer >%i< not positive. not an ordinal@]@." 
    mdn her i;       
;;

let fail_integer i mdn her =
  print_error_integer i mdn her;
  assert false
;;

let int_of_ordinal = function 
    Ordinal i -> i
;;

let char_of_ordinal ord =
  let i = int_of_ordinal ord in
  try Char.chr (i + 64)
  with Invalid_argument _  ->
    failwith "Invalid_ordinal:Ordinal_p.char_of_ordinal"
;;

let int_array_of_ordinal_array ord_a =
  Array.map int_of_ordinal ord_a 
;;

let is_greater ord_1 ord_2 =
  (int_of_ordinal ord_1) > (int_of_ordinal ord_2)
;;

let ordinal_of_index = function
    Index_p.Index i -> 
      try make i
      with Failure _ ->
	fail_integer i nam_mod "ordinal_of_index"
;;

let index_of_ordinal = function 
    Ordinal i -> Index_p.make i
;;

let index_array_of_ordinal_array ord_a =
  Array.map index_of_ordinal ord_a 
;;

let increment ord =
  try make ((int_of_ordinal ord) + 1) 
  with Failure _ ->
    failwith "Ordinal_is_positive:Ordinal_p.increment" 
;;

let decrement ord =
  try make ((int_of_ordinal ord) - 1) 
  with Failure _ ->
    failwith "Ordinal_is_positive:Ordinal_p.decrement" 
;;

let int_decrement_of_ordinal ord =
  let i = int_of_ordinal ord in
  i-1
;;

let index_decrement_of_ordinal ord =
  let i = int_decrement_of_ordinal ord in
  try Index_p.make i
  with Failure _ ->
    failwith "Ordinal_is_positive:Ordinal_p.index_is_non_negative"
;;

let ordinal_increment_of_index idx =
  let i = Index_p.int_of_index idx in
  try make (i+1)
  with Failure _ ->
    failwith "Ordinal_is_positive:Ordinal_p.ordinal_increment_of_index" 
;;

let ordinal_increment_of_int i =
  try make (i+1)
  with Failure _ ->
    fail_integer (i+1) nam_mod "ordinal_increment_of_int"
;;

let add ord_1 ord_2 =
  make ((int_of_ordinal ord_1) + (int_of_ordinal ord_2))
;;

let multiply ord_1 ord_2 =
  make ((int_of_ordinal ord_1) * (int_of_ordinal ord_2))
;;

let compare o1 o2 =
  let i1 = int_of_ordinal o1 in
  let i2 = int_of_ordinal o2 in
  compare i1 i2
;;

let print_as_int ppf ord = 
  Format.fprintf ppf "%i" (int_of_ordinal ord)
;;

let print ppf ord = 
  Format.fprintf ppf "ordinal %i" (int_of_ordinal ord)
;;

let name ord =
  Format.sprintf "%i" (int_of_ordinal ord)
;;

let one = make 1;;
let two = make 2;;
let three = make 3;;
let four = make 4;;
let five = make 5;;
let six = make 6;;
let seven = make 7;;
let eight = make 8;;
let nine = make 9;;
let ten = make 10;;
