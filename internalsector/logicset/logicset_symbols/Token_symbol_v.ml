(** {3 Token_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SLOG:Token_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Token_symbol_t.Connective_symbol sym_con ->
    Connective_symbol_v.name sym_con
  | Token_symbol_t.Leftparenthesis -> "leftparenthesis"
  | Token_symbol_t.Rightparenthesis -> "rightparenthesis"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Token_symbol_t.Connective_symbol sym_con ->
  Connective_symbol_v.string_off sym_con
  | Token_symbol_t.Leftparenthesis -> ""
  | Token_symbol_t.Rightparenthesis -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_tok =
  Format.sprintf "Token_symbol_t.%s" (String.capitalize (name sym_tok))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_tok =
  Format.sprintf "%s \"%s\"" (longname sym_tok) (string_off sym_tok)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let connective_symbol_off_token_symbol = function
  | Token_symbol_t.Connective_symbol sym_con -> sym_con
  | sym_tok -> Error_messages_v.print_fatal_error
      nam_cod "connective_symbol_off_token_symbol"
      "Connective_symbol"
      (name sym_tok) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_leftparenthesis = function
  | Token_symbol_t.Leftparenthesis -> true
  | _ -> false
;;

let is_rightparenthesis = function
  | Token_symbol_t.Rightparenthesis -> true
  | _ -> false
;;


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_connective_symbol_off_token_symbol = function
  | Token_symbol_t.Connective_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_negation sym_tok =
  if not (is_connective_symbol_off_token_symbol sym_tok)
  then false
  else
    begin
      let sym_con = connective_symbol_off_token_symbol sym_tok in
      Connective_symbol_v.is_negation sym_con
    end
;;

let is_conjunction sym_tok =
  if not (is_connective_symbol_off_token_symbol sym_tok)
  then false
  else
    begin
      let sym_con = connective_symbol_off_token_symbol sym_tok in
      Connective_symbol_v.is_conjunction sym_con
    end
;;

let is_disjunction sym_tok =
  if not (is_connective_symbol_off_token_symbol sym_tok)
  then false
  else
    begin
      let sym_con = connective_symbol_off_token_symbol sym_tok in
      Connective_symbol_v.is_disjunction sym_con
    end
;;

let is_implication sym_tok =
  if not (is_connective_symbol_off_token_symbol sym_tok)
  then false
  else
    begin
      let sym_con = connective_symbol_off_token_symbol sym_tok in
      Connective_symbol_v.is_implication sym_con
    end
;;

let is_equivalence sym_tok =
  if not (is_connective_symbol_off_token_symbol sym_tok)
  then false
  else
    begin
      let sym_con = connective_symbol_off_token_symbol sym_tok in
      Connective_symbol_v.is_equivalence sym_con
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let token_symbol_of_connective_symbol sym_con = 
  Token_symbol_t.Connective_symbol sym_con
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)

let leftparenthesis = Token_symbol_t.Leftparenthesis;;

let rightparenthesis = Token_symbol_t.Rightparenthesis;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let negation = token_symbol_of_connective_symbol Connective_symbol_v.negation;;

let conjunction = token_symbol_of_connective_symbol Connective_symbol_v.conjunction;;

let disjunction = token_symbol_of_connective_symbol Connective_symbol_v.disjunction;;

let implication = token_symbol_of_connective_symbol Connective_symbol_v.implication;;

let equivalence = token_symbol_of_connective_symbol Connective_symbol_v.equivalence;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "leftparenthesis" -> leftparenthesis
  | "rightparenthesis" -> rightparenthesis
  | _ ->
  failwith "Not_a_topson_bare:Token_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Token_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try token_symbol_of_connective_symbol
      (Connective_symbol_v.make nam s)
  with Failure "Not_a_connective_symbol:Connective_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Token_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Token_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Token_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Token_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Token subtype" nam s)
      "it does not exists"
      "Check file Token_symbol_v.ml"
    in
    failwith "Not_a_token_symbol:Token_symbol_v.ml:make"
;;


(** Token_symbol_v at 17:21:51 on 13 Jul 2013. created by version v2.3 of generator *)



