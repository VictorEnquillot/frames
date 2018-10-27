(** {3 Natural_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SNAT:Natural_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Natural_symbol_t.Expression_symbol sym_exp ->
    Expression_symbol_v.name sym_exp
  | Natural_symbol_t.Token_symbol sym_tok ->
    Token_symbol_v.name sym_tok
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Natural_symbol_t.Expression_symbol sym_exp ->
  Expression_symbol_v.string_off sym_exp
  | Natural_symbol_t.Token_symbol sym_tok ->
  Token_symbol_v.string_off sym_tok
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_nat =
  Format.sprintf "Natural_symbol_t.%s" (String.capitalize (name sym_nat))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_nat =
  Format.sprintf "%s \"%s\"" (longname sym_nat) (string_off sym_nat)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let expression_symbol_off_natural_symbol = function
  | Natural_symbol_t.Expression_symbol sym_exp -> sym_exp
  | sym_nat -> Error_messages_v.print_fatal_error
      nam_cod "expression_symbol_off_natural_symbol"
      "Expression_symbol"
      (name sym_nat) "check"
;;

let token_symbol_off_natural_symbol = function
  | Natural_symbol_t.Token_symbol sym_tok -> sym_tok
  | sym_nat -> Error_messages_v.print_fatal_error
      nam_cod "token_symbol_off_natural_symbol"
      "Token_symbol"
      (name sym_nat) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let expression_atomic_symbol_off_natural_symbol sym_nat = 
  let sym_exp = expression_symbol_off_natural_symbol sym_nat in
    Expression_symbol_v.expression_atomic_symbol_off_expression_symbol sym_exp
;;

let expression_atomic_digit_symbol_off_natural_symbol sym_nat = 
  let sym_exp = expression_symbol_off_natural_symbol sym_nat in
    Expression_symbol_v.expression_atomic_digit_symbol_off_expression_symbol sym_exp
;;

let operation_symbol_off_natural_symbol sym_nat = 
  let sym_tok = token_symbol_off_natural_symbol sym_nat in
    Token_symbol_v.operation_symbol_off_token_symbol sym_tok
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_expression_symbol_off_natural_symbol = function
  | Natural_symbol_t.Expression_symbol _ -> true
  | _ -> false
;;

let is_token_symbol_off_natural_symbol = function
  | Natural_symbol_t.Token_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_zero sym_nat =
  if not (is_expression_symbol_off_natural_symbol sym_nat)
  then false
  else
    begin
      let sym_exp = expression_symbol_off_natural_symbol sym_nat in
      Expression_symbol_v.is_zero sym_exp
    end
;;

let is_one sym_nat =
  if not (is_expression_symbol_off_natural_symbol sym_nat)
  then false
  else
    begin
      let sym_exp = expression_symbol_off_natural_symbol sym_nat in
      Expression_symbol_v.is_one sym_exp
    end
;;

let is_two sym_nat =
  if not (is_expression_symbol_off_natural_symbol sym_nat)
  then false
  else
    begin
      let sym_exp = expression_symbol_off_natural_symbol sym_nat in
      Expression_symbol_v.is_two sym_exp
    end
;;

let is_three sym_nat =
  if not (is_expression_symbol_off_natural_symbol sym_nat)
  then false
  else
    begin
      let sym_exp = expression_symbol_off_natural_symbol sym_nat in
      Expression_symbol_v.is_three sym_exp
    end
;;

let is_four sym_nat =
  if not (is_expression_symbol_off_natural_symbol sym_nat)
  then false
  else
    begin
      let sym_exp = expression_symbol_off_natural_symbol sym_nat in
      Expression_symbol_v.is_four sym_exp
    end
;;

let is_five sym_nat =
  if not (is_expression_symbol_off_natural_symbol sym_nat)
  then false
  else
    begin
      let sym_exp = expression_symbol_off_natural_symbol sym_nat in
      Expression_symbol_v.is_five sym_exp
    end
;;

let is_six sym_nat =
  if not (is_expression_symbol_off_natural_symbol sym_nat)
  then false
  else
    begin
      let sym_exp = expression_symbol_off_natural_symbol sym_nat in
      Expression_symbol_v.is_six sym_exp
    end
;;

let is_seven sym_nat =
  if not (is_expression_symbol_off_natural_symbol sym_nat)
  then false
  else
    begin
      let sym_exp = expression_symbol_off_natural_symbol sym_nat in
      Expression_symbol_v.is_seven sym_exp
    end
;;

let is_eight sym_nat =
  if not (is_expression_symbol_off_natural_symbol sym_nat)
  then false
  else
    begin
      let sym_exp = expression_symbol_off_natural_symbol sym_nat in
      Expression_symbol_v.is_eight sym_exp
    end
;;

let is_nine sym_nat =
  if not (is_expression_symbol_off_natural_symbol sym_nat)
  then false
  else
    begin
      let sym_exp = expression_symbol_off_natural_symbol sym_nat in
      Expression_symbol_v.is_nine sym_exp
    end
;;

let is_expression_composite sym_nat =
  if not (is_expression_symbol_off_natural_symbol sym_nat)
  then false
  else
    begin
      let sym_exp = expression_symbol_off_natural_symbol sym_nat in
      Expression_symbol_v.is_expression_composite sym_exp
    end
;;

let is_successor sym_nat =
  if not (is_token_symbol_off_natural_symbol sym_nat)
  then false
  else
    begin
      let sym_tok = token_symbol_off_natural_symbol sym_nat in
      Token_symbol_v.is_successor sym_tok
    end
;;

let is_addition sym_nat =
  if not (is_token_symbol_off_natural_symbol sym_nat)
  then false
  else
    begin
      let sym_tok = token_symbol_off_natural_symbol sym_nat in
      Token_symbol_v.is_addition sym_tok
    end
;;

let is_multiplication sym_nat =
  if not (is_token_symbol_off_natural_symbol sym_nat)
  then false
  else
    begin
      let sym_tok = token_symbol_off_natural_symbol sym_nat in
      Token_symbol_v.is_multiplication sym_tok
    end
;;

let is_leftparenthesis sym_nat =
  if not (is_token_symbol_off_natural_symbol sym_nat)
  then false
  else
    begin
      let sym_tok = token_symbol_off_natural_symbol sym_nat in
      Token_symbol_v.is_leftparenthesis sym_tok
    end
;;

let is_rightparenthesis sym_nat =
  if not (is_token_symbol_off_natural_symbol sym_nat)
  then false
  else
    begin
      let sym_tok = token_symbol_off_natural_symbol sym_nat in
      Token_symbol_v.is_rightparenthesis sym_tok
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_variable sym_nat =
  if not (is_expression_symbol_off_natural_symbol sym_nat)
  then false
  else
    begin
      let sym_exp = expression_symbol_off_natural_symbol sym_nat in
      Expression_symbol_v.is_variable sym_exp
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_expression_atomic_symbol_off_natural_symbol sym_nat =
  if not (is_expression_symbol_off_natural_symbol sym_nat)
  then false
  else
    begin
  let sym_exp = expression_symbol_off_natural_symbol sym_nat in
  Expression_symbol_v.is_expression_atomic_symbol_off_expression_symbol sym_exp
    end
;;

let is_expression_atomic_digit_symbol_off_natural_symbol sym_nat =
  if not (is_expression_symbol_off_natural_symbol sym_nat)
  then false
  else
    begin
  let sym_exp = expression_symbol_off_natural_symbol sym_nat in
  Expression_symbol_v.is_expression_atomic_digit_symbol_off_expression_symbol sym_exp
    end
;;

let is_operation_symbol_off_natural_symbol sym_nat =
  if not (is_token_symbol_off_natural_symbol sym_nat)
  then false
  else
    begin
  let sym_tok = token_symbol_off_natural_symbol sym_nat in
  Token_symbol_v.is_operation_symbol_off_token_symbol sym_tok
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let natural_symbol_of_expression_symbol sym_exp = 
  Natural_symbol_t.Expression_symbol sym_exp
;;

let natural_symbol_of_token_symbol sym_tok = 
  Natural_symbol_t.Token_symbol sym_tok
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let natural_symbol_of_expression_atomic_symbol sym_eat = 
  let sym_exp = Expression_symbol_v.expression_symbol_of_expression_atomic_symbol sym_eat in
    natural_symbol_of_expression_symbol sym_exp
;;

let natural_symbol_of_expression_atomic_digit_symbol sym_ead = 
  let sym_exp = Expression_symbol_v.expression_symbol_of_expression_atomic_digit_symbol sym_ead in
    natural_symbol_of_expression_symbol sym_exp
;;

let natural_symbol_of_operation_symbol sym_ope = 
  let sym_tok = Token_symbol_v.token_symbol_of_operation_symbol sym_ope in
    natural_symbol_of_token_symbol sym_tok
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let zero = natural_symbol_of_expression_symbol Expression_symbol_v.zero;;

let one = natural_symbol_of_expression_symbol Expression_symbol_v.one;;

let two = natural_symbol_of_expression_symbol Expression_symbol_v.two;;

let three = natural_symbol_of_expression_symbol Expression_symbol_v.three;;

let four = natural_symbol_of_expression_symbol Expression_symbol_v.four;;

let five = natural_symbol_of_expression_symbol Expression_symbol_v.five;;

let six = natural_symbol_of_expression_symbol Expression_symbol_v.six;;

let seven = natural_symbol_of_expression_symbol Expression_symbol_v.seven;;

let eight = natural_symbol_of_expression_symbol Expression_symbol_v.eight;;

let nine = natural_symbol_of_expression_symbol Expression_symbol_v.nine;;

let expression_composite = natural_symbol_of_expression_symbol Expression_symbol_v.expression_composite;;

let successor = natural_symbol_of_token_symbol Token_symbol_v.successor;;

let addition = natural_symbol_of_token_symbol Token_symbol_v.addition;;

let multiplication = natural_symbol_of_token_symbol Token_symbol_v.multiplication;;

let leftparenthesis = natural_symbol_of_token_symbol Token_symbol_v.leftparenthesis;;

let rightparenthesis = natural_symbol_of_token_symbol Token_symbol_v.rightparenthesis;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let variable s = natural_symbol_of_expression_symbol (Expression_symbol_v.variable s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Natural_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Natural_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try natural_symbol_of_expression_symbol
      (Expression_symbol_v.make nam s)
  with Failure "Not_a_expression_symbol:Expression_symbol_v.ml:make" ->
  try natural_symbol_of_token_symbol
      (Token_symbol_v.make nam s)
  with Failure "Not_a_token_symbol:Token_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Natural_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Natural_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Natural_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Natural_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Natural subtype" nam s)
      "it does not exists"
      "Check file Natural_symbol_v.ml"
    in
    failwith "Not_a_natural_symbol:Natural_symbol_v.ml:make"
;;


(** Natural_symbol_v at 21:7:9 on 15 Jul 2013. created by version v2.4 of generator *)



