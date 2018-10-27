(** {3 Nwchemdata_lexer_hashline_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : LEXNWC:Nwchemdata_lexer_hashline_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_datafile _ -> "nwchemdata_lexer_hashline_datafile"
  | Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_dashed _ -> "nwchemdata_lexer_hashline_dashed"
  | Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_emsl _ -> "nwchemdata_lexer_hashline_emsl"
  | Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_header _ -> "nwchemdata_lexer_hashline_header"
  | Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_reference _ -> "nwchemdata_lexer_hashline_reference"
  | Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_empty -> "nwchemdata_lexer_hashline_empty"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_datafile s -> s
  | Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_dashed s -> s
  | Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_emsl s -> s
  | Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_header s -> s
  | Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_reference s -> s
  | Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_empty -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_dlh =
  Format.sprintf "Nwchemdata_lexer_hashline_symbol_t.%s" (String.capitalize (name sym_dlh))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_dlh =
  Format.sprintf "%s \"%s\"" (longname sym_dlh) (string_off sym_dlh)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_nwchemdata_lexer_hashline_empty = function
  | Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_empty -> true
  | _ -> false
;;


(** {6 Querying_topson_ofstring_for_symbol} *)

let is_nwchemdata_lexer_hashline_datafile = function
  | Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_datafile _ -> true
  | _ -> false
;;

let is_nwchemdata_lexer_hashline_dashed = function
  | Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_dashed _ -> true
  | _ -> false
;;

let is_nwchemdata_lexer_hashline_emsl = function
  | Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_emsl _ -> true
  | _ -> false
;;

let is_nwchemdata_lexer_hashline_header = function
  | Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_header _ -> true
  | _ -> false
;;

let is_nwchemdata_lexer_hashline_reference = function
  | Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_reference _ -> true
  | _ -> false
;;


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)

let nwchemdata_lexer_hashline_empty = Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_empty;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)

let nwchemdata_lexer_hashline_datafile s = Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_datafile s;;

let nwchemdata_lexer_hashline_dashed s = Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_dashed s;;

let nwchemdata_lexer_hashline_emsl s = Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_emsl s;;

let nwchemdata_lexer_hashline_header s = Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_header s;;

let nwchemdata_lexer_hashline_reference s = Nwchemdata_lexer_hashline_symbol_t.Nwchemdata_lexer_hashline_reference s;;


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "nwchemdata_lexer_hashline_empty" -> nwchemdata_lexer_hashline_empty
  | _ ->
  failwith "Not_a_topson_bare:Nwchemdata_lexer_hashline_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "nwchemdata_lexer_hashline_datafile" -> nwchemdata_lexer_hashline_datafile s
  | "nwchemdata_lexer_hashline_dashed" -> nwchemdata_lexer_hashline_dashed s
  | "nwchemdata_lexer_hashline_emsl" -> nwchemdata_lexer_hashline_emsl s
  | "nwchemdata_lexer_hashline_header" -> nwchemdata_lexer_hashline_header s
  | "nwchemdata_lexer_hashline_reference" -> nwchemdata_lexer_hashline_reference s
  | _ ->
  failwith "Not_a_topson_ofstring:Nwchemdata_lexer_hashline_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Nwchemdata_lexer_hashline_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Nwchemdata_lexer_hashline_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Nwchemdata_lexer_hashline_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Nwchemdata_lexer_hashline_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Nwchemdata_lexer_hashline subtype" nam s)
      "it does not exists"
      "Check file Nwchemdata_lexer_hashline_symbol_v.ml"
    in
    failwith "Not_a_nwchemdata_lexer_hashline_symbol:Nwchemdata_lexer_hashline_symbol_v.ml:make"
;;


(** Nwchemdata_lexer_hashline_symbol_v at 17:56:3 on 23 Apr 2015. created by version v2.4 of generator *)



