(** {3 Float_symbol_v} *)


let nam_mod = "Float_symbol_v";;


(** {6 Naming_for_symbol} *)

let name = function
  | Float_symbol_t.Float_constructor s -> "float_constructor"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Float_symbol_t.Float_constructor s -> s
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_flo =
  Format.sprintf "Float_symbol_t.%s" (String.capitalize_ascii (name sym_flo))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_flo =
  Format.sprintf "%s \"%s\"" (longname sym_flo) (string_off sym_flo)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_float_constructor = function
  | Float_symbol_t.Float_constructor _ -> true
;;


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)

let float_constructor s = Float_symbol_t.Float_constructor s;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Float_symbol_v.make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | "float_constructor" -> float_constructor s
  | _ ->
  failwith "Not_a_topson_ofstring:Float_symbol_v.make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Float_symbol_v.make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure _ ->
  try make_of_topson_ofstring nam s
  with Failure _ ->
  try make_of_topson_notleaf nam s
  with Failure _ ->
   let _ =
      Error_messages_v.print_information nam_mod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Float subtype" nam s)
      "it does not exists"
      "Check file Float_symbol_v.ml"
    in
    failwith "Not_a_float_symbol:Float_symbol_v.make"
;;


(** Float_symbol_v at 18:53:56 on 31 May 2013. created by version v1.13 of generator *)



