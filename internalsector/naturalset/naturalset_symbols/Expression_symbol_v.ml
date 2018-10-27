(** {3 Expression_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SNAT:Expression_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Expression_symbol_t.Expression_atomic_symbol sym_eat ->
    Expression_atomic_symbol_v.name sym_eat
  | Expression_symbol_t.Expression_composite -> "expression_composite"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Expression_symbol_t.Expression_atomic_symbol sym_eat ->
  Expression_atomic_symbol_v.string_off sym_eat
  | Expression_symbol_t.Expression_composite -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_exp =
  Format.sprintf "Expression_symbol_t.%s" (String.capitalize (name sym_exp))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_exp =
  Format.sprintf "%s \"%s\"" (longname sym_exp) (string_off sym_exp)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let expression_atomic_symbol_off_expression_symbol = function
  | Expression_symbol_t.Expression_atomic_symbol sym_eat -> sym_eat
  | sym_exp -> Error_messages_v.print_fatal_error
      nam_cod "expression_atomic_symbol_off_expression_symbol"
      "Expression_atomic_symbol"
      (name sym_exp) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let expression_atomic_digit_symbol_off_expression_symbol sym_exp = 
  let sym_eat = expression_atomic_symbol_off_expression_symbol sym_exp in
    Expression_atomic_symbol_v.expression_atomic_digit_symbol_off_expression_atomic_symbol sym_eat
;;


(** {6 Querying_topson_bare_for_symbol} *)

let is_expression_composite = function
  | Expression_symbol_t.Expression_composite -> true
  | _ -> false
;;


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_expression_atomic_symbol_off_expression_symbol = function
  | Expression_symbol_t.Expression_atomic_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_zero sym_exp =
  if not (is_expression_atomic_symbol_off_expression_symbol sym_exp)
  then false
  else
    begin
      let sym_eat = expression_atomic_symbol_off_expression_symbol sym_exp in
      Expression_atomic_symbol_v.is_zero sym_eat
    end
;;

let is_one sym_exp =
  if not (is_expression_atomic_symbol_off_expression_symbol sym_exp)
  then false
  else
    begin
      let sym_eat = expression_atomic_symbol_off_expression_symbol sym_exp in
      Expression_atomic_symbol_v.is_one sym_eat
    end
;;

let is_two sym_exp =
  if not (is_expression_atomic_symbol_off_expression_symbol sym_exp)
  then false
  else
    begin
      let sym_eat = expression_atomic_symbol_off_expression_symbol sym_exp in
      Expression_atomic_symbol_v.is_two sym_eat
    end
;;

let is_three sym_exp =
  if not (is_expression_atomic_symbol_off_expression_symbol sym_exp)
  then false
  else
    begin
      let sym_eat = expression_atomic_symbol_off_expression_symbol sym_exp in
      Expression_atomic_symbol_v.is_three sym_eat
    end
;;

let is_four sym_exp =
  if not (is_expression_atomic_symbol_off_expression_symbol sym_exp)
  then false
  else
    begin
      let sym_eat = expression_atomic_symbol_off_expression_symbol sym_exp in
      Expression_atomic_symbol_v.is_four sym_eat
    end
;;

let is_five sym_exp =
  if not (is_expression_atomic_symbol_off_expression_symbol sym_exp)
  then false
  else
    begin
      let sym_eat = expression_atomic_symbol_off_expression_symbol sym_exp in
      Expression_atomic_symbol_v.is_five sym_eat
    end
;;

let is_six sym_exp =
  if not (is_expression_atomic_symbol_off_expression_symbol sym_exp)
  then false
  else
    begin
      let sym_eat = expression_atomic_symbol_off_expression_symbol sym_exp in
      Expression_atomic_symbol_v.is_six sym_eat
    end
;;

let is_seven sym_exp =
  if not (is_expression_atomic_symbol_off_expression_symbol sym_exp)
  then false
  else
    begin
      let sym_eat = expression_atomic_symbol_off_expression_symbol sym_exp in
      Expression_atomic_symbol_v.is_seven sym_eat
    end
;;

let is_eight sym_exp =
  if not (is_expression_atomic_symbol_off_expression_symbol sym_exp)
  then false
  else
    begin
      let sym_eat = expression_atomic_symbol_off_expression_symbol sym_exp in
      Expression_atomic_symbol_v.is_eight sym_eat
    end
;;

let is_nine sym_exp =
  if not (is_expression_atomic_symbol_off_expression_symbol sym_exp)
  then false
  else
    begin
      let sym_eat = expression_atomic_symbol_off_expression_symbol sym_exp in
      Expression_atomic_symbol_v.is_nine sym_eat
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_variable sym_exp =
  if not (is_expression_atomic_symbol_off_expression_symbol sym_exp)
  then false
  else
    begin
      let sym_eat = expression_atomic_symbol_off_expression_symbol sym_exp in
      Expression_atomic_symbol_v.is_variable sym_eat
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_expression_atomic_digit_symbol_off_expression_symbol sym_exp =
  if not (is_expression_atomic_symbol_off_expression_symbol sym_exp)
  then false
  else
    begin
  let sym_eat = expression_atomic_symbol_off_expression_symbol sym_exp in
  Expression_atomic_symbol_v.is_expression_atomic_digit_symbol_off_expression_atomic_symbol sym_eat
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let expression_symbol_of_expression_atomic_symbol sym_eat = 
  Expression_symbol_t.Expression_atomic_symbol sym_eat
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let expression_symbol_of_expression_atomic_digit_symbol sym_ead = 
  let sym_eat = Expression_atomic_symbol_v.expression_atomic_symbol_of_expression_atomic_digit_symbol sym_ead in
    expression_symbol_of_expression_atomic_symbol sym_eat
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)

let expression_composite = Expression_symbol_t.Expression_composite;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let zero = expression_symbol_of_expression_atomic_symbol Expression_atomic_symbol_v.zero;;

let one = expression_symbol_of_expression_atomic_symbol Expression_atomic_symbol_v.one;;

let two = expression_symbol_of_expression_atomic_symbol Expression_atomic_symbol_v.two;;

let three = expression_symbol_of_expression_atomic_symbol Expression_atomic_symbol_v.three;;

let four = expression_symbol_of_expression_atomic_symbol Expression_atomic_symbol_v.four;;

let five = expression_symbol_of_expression_atomic_symbol Expression_atomic_symbol_v.five;;

let six = expression_symbol_of_expression_atomic_symbol Expression_atomic_symbol_v.six;;

let seven = expression_symbol_of_expression_atomic_symbol Expression_atomic_symbol_v.seven;;

let eight = expression_symbol_of_expression_atomic_symbol Expression_atomic_symbol_v.eight;;

let nine = expression_symbol_of_expression_atomic_symbol Expression_atomic_symbol_v.nine;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let variable s = expression_symbol_of_expression_atomic_symbol (Expression_atomic_symbol_v.variable s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "expression_composite" -> expression_composite
  | _ ->
  failwith "Not_a_topson_bare:Expression_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Expression_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try expression_symbol_of_expression_atomic_symbol
      (Expression_atomic_symbol_v.make nam s)
  with Failure "Not_a_expression_atomic_symbol:Expression_atomic_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Expression_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Expression_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Expression_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Expression_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Expression subtype" nam s)
      "it does not exists"
      "Check file Expression_symbol_v.ml"
    in
    failwith "Not_a_expression_symbol:Expression_symbol_v.ml:make"
;;


(** Expression_symbol_v at 21:7:9 on 15 Jul 2013. created by version v2.4 of generator *)



