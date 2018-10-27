(** {3 Nwchemdata_set_body_keyword_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Nwchemdata_set_body_keyword_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_cartesian -> "nwchemdata_set_body_keyword_cartesian"
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_colon -> "nwchemdata_set_body_keyword_colon"
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_comma -> "nwchemdata_set_body_keyword_comma"
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_end_of_file -> "nwchemdata_set_body_keyword_end_of_file"
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_hash_basis -> "nwchemdata_set_body_keyword_hash_basis"
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_left_arrow -> "nwchemdata_set_body_keyword_left_arrow"
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_left_bracket -> "nwchemdata_set_body_keyword_left_bracket"
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_left_parenthesis -> "nwchemdata_set_body_keyword_left_parenthesis"
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_nelec -> "nwchemdata_set_body_keyword_nelec"
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_nosegment -> "nwchemdata_set_body_keyword_nosegment"
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_rel -> "nwchemdata_set_body_keyword_rel"
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_right_arrow -> "nwchemdata_set_body_keyword_right_arrow"
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_right_bracket -> "nwchemdata_set_body_keyword_right_bracket"
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_right_parenthesis -> "nwchemdata_set_body_keyword_right_parenthesis"
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_segment -> "nwchemdata_set_body_keyword_segment"
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_set -> "nwchemdata_set_body_keyword_set"
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_spherical -> "nwchemdata_set_body_keyword_spherical"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_cartesian -> ""
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_colon -> ""
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_comma -> ""
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_end_of_file -> ""
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_hash_basis -> ""
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_left_arrow -> ""
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_left_bracket -> ""
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_left_parenthesis -> ""
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_nelec -> ""
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_nosegment -> ""
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_rel -> ""
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_right_arrow -> ""
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_right_bracket -> ""
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_right_parenthesis -> ""
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_segment -> ""
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_set -> ""
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_spherical -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_nbk =
  Format.sprintf "Nwchemdata_set_body_keyword_symbol_t.%s" (String.capitalize (name sym_nbk))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_nbk =
  Format.sprintf "%s \"%s\"" (longname sym_nbk) (string_off sym_nbk)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_nwchemdata_set_body_keyword_cartesian = function
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_cartesian -> true
  | _ -> false
;;

let is_nwchemdata_set_body_keyword_colon = function
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_colon -> true
  | _ -> false
;;

let is_nwchemdata_set_body_keyword_comma = function
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_comma -> true
  | _ -> false
;;

let is_nwchemdata_set_body_keyword_end_of_file = function
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_end_of_file -> true
  | _ -> false
;;

let is_nwchemdata_set_body_keyword_hash_basis = function
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_hash_basis -> true
  | _ -> false
;;

let is_nwchemdata_set_body_keyword_left_arrow = function
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_left_arrow -> true
  | _ -> false
;;

let is_nwchemdata_set_body_keyword_left_bracket = function
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_left_bracket -> true
  | _ -> false
;;

let is_nwchemdata_set_body_keyword_left_parenthesis = function
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_left_parenthesis -> true
  | _ -> false
;;

let is_nwchemdata_set_body_keyword_nelec = function
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_nelec -> true
  | _ -> false
;;

let is_nwchemdata_set_body_keyword_nosegment = function
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_nosegment -> true
  | _ -> false
;;

let is_nwchemdata_set_body_keyword_rel = function
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_rel -> true
  | _ -> false
;;

let is_nwchemdata_set_body_keyword_right_arrow = function
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_right_arrow -> true
  | _ -> false
;;

let is_nwchemdata_set_body_keyword_right_bracket = function
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_right_bracket -> true
  | _ -> false
;;

let is_nwchemdata_set_body_keyword_right_parenthesis = function
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_right_parenthesis -> true
  | _ -> false
;;

let is_nwchemdata_set_body_keyword_segment = function
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_segment -> true
  | _ -> false
;;

let is_nwchemdata_set_body_keyword_set = function
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_set -> true
  | _ -> false
;;

let is_nwchemdata_set_body_keyword_spherical = function
  | Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_spherical -> true
  | _ -> false
;;


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)

let nwchemdata_set_body_keyword_cartesian = Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_cartesian;;

let nwchemdata_set_body_keyword_colon = Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_colon;;

let nwchemdata_set_body_keyword_comma = Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_comma;;

let nwchemdata_set_body_keyword_end_of_file = Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_end_of_file;;

let nwchemdata_set_body_keyword_hash_basis = Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_hash_basis;;

let nwchemdata_set_body_keyword_left_arrow = Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_left_arrow;;

let nwchemdata_set_body_keyword_left_bracket = Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_left_bracket;;

let nwchemdata_set_body_keyword_left_parenthesis = Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_left_parenthesis;;

let nwchemdata_set_body_keyword_nelec = Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_nelec;;

let nwchemdata_set_body_keyword_nosegment = Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_nosegment;;

let nwchemdata_set_body_keyword_rel = Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_rel;;

let nwchemdata_set_body_keyword_right_arrow = Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_right_arrow;;

let nwchemdata_set_body_keyword_right_bracket = Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_right_bracket;;

let nwchemdata_set_body_keyword_right_parenthesis = Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_right_parenthesis;;

let nwchemdata_set_body_keyword_segment = Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_segment;;

let nwchemdata_set_body_keyword_set = Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_set;;

let nwchemdata_set_body_keyword_spherical = Nwchemdata_set_body_keyword_symbol_t.Nwchemdata_set_body_keyword_spherical;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "nwchemdata_set_body_keyword_cartesian" -> nwchemdata_set_body_keyword_cartesian
  | "nwchemdata_set_body_keyword_colon" -> nwchemdata_set_body_keyword_colon
  | "nwchemdata_set_body_keyword_comma" -> nwchemdata_set_body_keyword_comma
  | "nwchemdata_set_body_keyword_end_of_file" -> nwchemdata_set_body_keyword_end_of_file
  | "nwchemdata_set_body_keyword_hash_basis" -> nwchemdata_set_body_keyword_hash_basis
  | "nwchemdata_set_body_keyword_left_arrow" -> nwchemdata_set_body_keyword_left_arrow
  | "nwchemdata_set_body_keyword_left_bracket" -> nwchemdata_set_body_keyword_left_bracket
  | "nwchemdata_set_body_keyword_left_parenthesis" -> nwchemdata_set_body_keyword_left_parenthesis
  | "nwchemdata_set_body_keyword_nelec" -> nwchemdata_set_body_keyword_nelec
  | "nwchemdata_set_body_keyword_nosegment" -> nwchemdata_set_body_keyword_nosegment
  | "nwchemdata_set_body_keyword_rel" -> nwchemdata_set_body_keyword_rel
  | "nwchemdata_set_body_keyword_right_arrow" -> nwchemdata_set_body_keyword_right_arrow
  | "nwchemdata_set_body_keyword_right_bracket" -> nwchemdata_set_body_keyword_right_bracket
  | "nwchemdata_set_body_keyword_right_parenthesis" -> nwchemdata_set_body_keyword_right_parenthesis
  | "nwchemdata_set_body_keyword_segment" -> nwchemdata_set_body_keyword_segment
  | "nwchemdata_set_body_keyword_set" -> nwchemdata_set_body_keyword_set
  | "nwchemdata_set_body_keyword_spherical" -> nwchemdata_set_body_keyword_spherical
  | _ ->
  failwith "Not_a_topson_bare:Nwchemdata_set_body_keyword_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Nwchemdata_set_body_keyword_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Nwchemdata_set_body_keyword_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Nwchemdata_set_body_keyword_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Nwchemdata_set_body_keyword_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Nwchemdata_set_body_keyword_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Nwchemdata_set_body_keyword subtype" nam s)
      "it does not exists"
      "Check file Nwchemdata_set_body_keyword_symbol_v.ml"
    in
    failwith "Not_a_nwchemdata_set_body_keyword_symbol:Nwchemdata_set_body_keyword_symbol_v.ml:make"
;;


(** Nwchemdata_set_body_keyword_symbol_v at 17:57:19 on 4 Dec 2016. created by version v2.4 of generator *)



