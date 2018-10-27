
let integer i =
  Integer_value_t.Integer i
;;

let int_off_integer_value = function
  | Integer_value_t.Integer i -> i
;;

let make str = 
  let i = Scanf.sscanf str " %i " (fun s -> s) in 
  integer i
;;

let increment val_i =
  let i = int_off_integer_value val_i in
  integer (i + 1)
;;

let decrement val_i =
  let i = int_off_integer_value val_i in
  integer (i - 1)
;;

let is_even val_i =
  let i = int_off_integer_value val_i in
  (2 * (i / 2) = i)
;;

let half val_i =
  if is_even val_i
  then 
    begin
      let i = int_off_integer_value val_i in
      integer (i /2) 
    end
  else failwith "Not_even:Integer_value_v.half"
;;

let char_lowercase_of_int i =
  try Char.chr (i + 96)
  with Invalid_argument _ ->
    failwith "Invalid_integer:Integer_value_v.char_lowercase_of_int"
;;

let char_uppercase_of_int i =
  try Char.chr (i + 64)
  with Invalid_argument _ ->
    failwith "Invalid_integer:Integer_value_v.char_uppercase_of_int"
;;
