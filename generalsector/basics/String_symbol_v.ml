(** {3 String_symbol_v} *)

let nam_mod = "String_symbol_v";;

let name = function 
  | String_symbol_t.String_constructor -> "string_constructor"
;;

(** {6 Longnaming_for_symbol} *)

let longname sym_flo =
  Format.sprintf "String_symbol_t.%s" (String.capitalize_ascii (name sym_flo))
;;


let string_off sym_flo = "";;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_flo =
  Format.sprintf "%s \"%s\"" (longname sym_flo) (string_off sym_flo)
;;

let string_constructor = String_symbol_t.String_constructor;;

(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | "string_constructor" -> string_constructor
  | _ ->
      failwith ("Not_a_topson_bare:"^nam_mod^".make_of_topson_bare")
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
      failwith ("Not_a_topson_ofstring:"^nam_mod^".make_of_topson_ofstring")
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith ("Not_a_topson_notleaf:"^nam_mod^".make_of_topson_notleaf")
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
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing String subtype" nam s)
      "it does not exists"
      ("Check file "^nam_mod^".ml")
    in
    failwith ("Not_a_string_symbol:"^nam_mod^".make")
;;


