(** {3 functionalities for an Integer Index.} *)

let nam_mod = "Index_p";;

(** {6 Typing} *)

type index = Index of int   (* private *)
;;

(** An index is a non-negative integer. *)

let index i = 
  if (i < 0) 
  then failwith "Index_is_non_negative:Index_p.index"
  else Index i
;;

let make i = 
  if (i < 0) 
  then failwith "Index_is_non_negative:Index_p.make"
  else Index i
;;

let print_error_integer i mdn her =
    Format.fprintf Format.err_formatter 
    "@.@[<hov>%s.%s: --- Fatal Error ---@.\
    integer >%i< negative. not an index@]@." 
    mdn her i;       
;;

let fail_integer i mdn her =
  print_error_integer i mdn her;
  assert false
;;

let int_of_index = function Index i -> i
;;

let float_of_index idx =
  float_of_int (int_of_index idx)
;;

let increment idx =
  try make ((int_of_index idx) + 1)  
  with Failure _ ->
    failwith ("Index_is_non_negative:Index_p.increment")
;;

let decrement idx =
  try make ((int_of_index idx) - 1)  
  with Failure _ ->
    failwith ("Index_is_non_negative:Index_p.decrement")
;;

let int_decrement_of_index idx =
  (int_of_index idx) -1
;; 

let int_increment_of_index idx =
  (int_of_index idx) +1
;; 

let is_positive idx =
  (int_of_index idx) > 0
;;

let is_greater idx_1 idx_2 =
  (int_of_index idx_1) > (int_of_index idx_2)
;;

let is_greater_equal idx_1 idx_2 =
  (int_of_index idx_1) >= (int_of_index idx_2)
;;

let is_lower idx_1 idx_2 =
  (int_of_index idx_1) < (int_of_index idx_2)
;;

let is_zero idx =
  (int_of_index idx) = 0
;;

let is_even idx =
  let val_i = Integer_value_v.integer (int_of_index idx) in
  Integer_value_v.is_even val_i
;;

let half idx =
  let val_i = Integer_value_v.integer (int_of_index idx) in
  make (Integer_value_v.int_off_integer_value (Integer_value_v.half val_i))
;;

let add idx_1 idx_2 =
make ((int_of_index idx_1) + (int_of_index idx_2))
;;

let multiply idx_1 idx_2 =
make ((int_of_index idx_1) * (int_of_index idx_2))
;;

let compare idx_1 idx_2 =
  let i1 = int_of_index idx_1 in
  let i2 = int_of_index idx_2 in
 compare i1 i2
;;

let print_as_int ppf idx = 
  Format.fprintf ppf "%i" (int_of_index idx)
;;

let print ppf idx = 
  Format.fprintf ppf "index %i" (int_of_index idx)
;;

let name idx =
  Format.sprintf "%i" (int_of_index idx)
;;

let zero = make 0;;
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
