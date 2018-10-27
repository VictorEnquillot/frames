(** {3 Expression_atomic_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SNAT:Expression_atomic_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Expression_atomic_symbol_t.Expression_atomic_digit_symbol sym_ead ->
    Expression_atomic_digit_symbol_v.name sym_ead
  | Expression_atomic_symbol_t.Variable _ -> "variable"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Expression_atomic_symbol_t.Expression_atomic_digit_symbol sym_ead ->
  Expression_atomic_digit_symbol_v.string_off sym_ead
  | Expression_atomic_symbol_t.Variable s -> s
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_eat =
  Format.sprintf "Expression_atomic_symbol_t.%s" (String.capitalize (name sym_eat))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_eat =
  Format.sprintf "%s \"%s\"" (longname sym_eat) (string_off sym_eat)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let expression_atomic_digit_symbol_off_expression_atomic_symbol = function
  | Expression_atomic_symbol_t.Expression_atomic_digit_symbol sym_ead -> sym_ead
  | sym_eat -> Error_messages_v.print_fatal_error
      nam_cod "expression_atomic_digit_symbol_off_expression_atomic_symbol"
      "Expression_atomic_digit_symbol"
      (name sym_eat) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)

let is_variable = function
  | Expression_atomic_symbol_t.Variable _ -> true
  | _ -> false
;;


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_expression_atomic_digit_symbol_off_expression_atomic_symbol = function
  | Expression_atomic_symbol_t.Expression_atomic_digit_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_zero sym_eat =
  if not (is_expression_atomic_digit_symbol_off_expression_atomic_symbol sym_eat)
  then false
  else
    begin
      let sym_ead = expression_atomic_digit_symbol_off_expression_atomic_symbol sym_eat in
      Expression_atomic_digit_symbol_v.is_zero sym_ead
    end
;;

let is_one sym_eat =
  if not (is_expression_atomic_digit_symbol_off_expression_atomic_symbol sym_eat)
  then false
  else
    begin
      let sym_ead = expression_atomic_digit_symbol_off_expression_atomic_symbol sym_eat in
      Expression_atomic_digit_symbol_v.is_one sym_ead
    end
;;

let is_two sym_eat =
  if not (is_expression_atomic_digit_symbol_off_expression_atomic_symbol sym_eat)
  then false
  else
    begin
      let sym_ead = expression_atomic_digit_symbol_off_expression_atomic_symbol sym_eat in
      Expression_atomic_digit_symbol_v.is_two sym_ead
    end
;;

let is_three sym_eat =
  if not (is_expression_atomic_digit_symbol_off_expression_atomic_symbol sym_eat)
  then false
  else
    begin
      let sym_ead = expression_atomic_digit_symbol_off_expression_atomic_symbol sym_eat in
      Expression_atomic_digit_symbol_v.is_three sym_ead
    end
;;

let is_four sym_eat =
  if not (is_expression_atomic_digit_symbol_off_expression_atomic_symbol sym_eat)
  then false
  else
    begin
      let sym_ead = expression_atomic_digit_symbol_off_expression_atomic_symbol sym_eat in
      Expression_atomic_digit_symbol_v.is_four sym_ead
    end
;;

let is_five sym_eat =
  if not (is_expression_atomic_digit_symbol_off_expression_atomic_symbol sym_eat)
  then false
  else
    begin
      let sym_ead = expression_atomic_digit_symbol_off_expression_atomic_symbol sym_eat in
      Expression_atomic_digit_symbol_v.is_five sym_ead
    end
;;

let is_six sym_eat =
  if not (is_expression_atomic_digit_symbol_off_expression_atomic_symbol sym_eat)
  then false
  else
    begin
      let sym_ead = expression_atomic_digit_symbol_off_expression_atomic_symbol sym_eat in
      Expression_atomic_digit_symbol_v.is_six sym_ead
    end
;;

let is_seven sym_eat =
  if not (is_expression_atomic_digit_symbol_off_expression_atomic_symbol sym_eat)
  then false
  else
    begin
      let sym_ead = expression_atomic_digit_symbol_off_expression_atomic_symbol sym_eat in
      Expression_atomic_digit_symbol_v.is_seven sym_ead
    end
;;

let is_eight sym_eat =
  if not (is_expression_atomic_digit_symbol_off_expression_atomic_symbol sym_eat)
  then false
  else
    begin
      let sym_ead = expression_atomic_digit_symbol_off_expression_atomic_symbol sym_eat in
      Expression_atomic_digit_symbol_v.is_eight sym_ead
    end
;;

let is_nine sym_eat =
  if not (is_expression_atomic_digit_symbol_off_expression_atomic_symbol sym_eat)
  then false
  else
    begin
      let sym_ead = expression_atomic_digit_symbol_off_expression_atomic_symbol sym_eat in
      Expression_atomic_digit_symbol_v.is_nine sym_ead
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let expression_atomic_symbol_of_expression_atomic_digit_symbol sym_ead = 
  Expression_atomic_symbol_t.Expression_atomic_digit_symbol sym_ead
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)

let variable s = Expression_atomic_symbol_t.Variable s;;


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let zero = expression_atomic_symbol_of_expression_atomic_digit_symbol Expression_atomic_digit_symbol_v.zero;;

let one = expression_atomic_symbol_of_expression_atomic_digit_symbol Expression_atomic_digit_symbol_v.one;;

let two = expression_atomic_symbol_of_expression_atomic_digit_symbol Expression_atomic_digit_symbol_v.two;;

let three = expression_atomic_symbol_of_expression_atomic_digit_symbol Expression_atomic_digit_symbol_v.three;;

let four = expression_atomic_symbol_of_expression_atomic_digit_symbol Expression_atomic_digit_symbol_v.four;;

let five = expression_atomic_symbol_of_expression_atomic_digit_symbol Expression_atomic_digit_symbol_v.five;;

let six = expression_atomic_symbol_of_expression_atomic_digit_symbol Expression_atomic_digit_symbol_v.six;;

let seven = expression_atomic_symbol_of_expression_atomic_digit_symbol Expression_atomic_digit_symbol_v.seven;;

let eight = expression_atomic_symbol_of_expression_atomic_digit_symbol Expression_atomic_digit_symbol_v.eight;;

let nine = expression_atomic_symbol_of_expression_atomic_digit_symbol Expression_atomic_digit_symbol_v.nine;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Expression_atomic_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "variable" -> variable s
  | _ ->
  failwith "Not_a_topson_ofstring:Expression_atomic_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try expression_atomic_symbol_of_expression_atomic_digit_symbol
      (Expression_atomic_digit_symbol_v.make nam s)
  with Failure "Not_a_expression_atomic_digit_symbol:Expression_atomic_digit_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Expression_atomic_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Expression_atomic_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Expression_atomic_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Expression_atomic_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Expression_atomic subtype" nam s)
      "it does not exists"
      "Check file Expression_atomic_symbol_v.ml"
    in
    failwith "Not_a_expression_atomic_symbol:Expression_atomic_symbol_v.ml:make"
;;


(** Expression_atomic_symbol_v at 21:7:9 on 15 Jul 2013. created by version v2.4 of generator *)



