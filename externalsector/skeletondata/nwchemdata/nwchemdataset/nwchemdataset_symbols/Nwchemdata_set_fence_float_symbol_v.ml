(** {3 Nwchemdata_set_fence_float_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Nwchemdata_set_fence_float_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Nwchemdata_set_fence_float_symbol_t.Nwchemdata_set_fence_float_positive_symbol sym_nfp ->
    Nwchemdata_set_fence_float_positive_symbol_v.name sym_nfp
  | Nwchemdata_set_fence_float_symbol_t.Nwchemdata_set_fence_float_negative_symbol sym_nfn ->
    Nwchemdata_set_fence_float_negative_symbol_v.name sym_nfn
  | Nwchemdata_set_fence_float_symbol_t.Nwchemdata_set_fence_float_nonnegative_symbol sym_nfn ->
    Nwchemdata_set_fence_float_nonnegative_symbol_v.name sym_nfn
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Nwchemdata_set_fence_float_symbol_t.Nwchemdata_set_fence_float_positive_symbol sym_nfp ->
  Nwchemdata_set_fence_float_positive_symbol_v.string_off sym_nfp
  | Nwchemdata_set_fence_float_symbol_t.Nwchemdata_set_fence_float_negative_symbol sym_nfn ->
  Nwchemdata_set_fence_float_negative_symbol_v.string_off sym_nfn
  | Nwchemdata_set_fence_float_symbol_t.Nwchemdata_set_fence_float_nonnegative_symbol sym_nfn ->
  Nwchemdata_set_fence_float_nonnegative_symbol_v.string_off sym_nfn
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_nff =
  Format.sprintf "Nwchemdata_set_fence_float_symbol_t.%s" (String.capitalize (name sym_nff))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_nff =
  Format.sprintf "%s \"%s\"" (longname sym_nff) (string_off sym_nff)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let nwchemdata_set_fence_float_positive_symbol_off_nwchemdata_set_fence_float_symbol = function
  | Nwchemdata_set_fence_float_symbol_t.Nwchemdata_set_fence_float_positive_symbol sym_nfp -> sym_nfp
  | sym_nff -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_fence_float_positive_symbol_off_nwchemdata_set_fence_float_symbol"
      "Nwchemdata_set_fence_float_positive_symbol"
      (name sym_nff) "check"
;;

let nwchemdata_set_fence_float_negative_symbol_off_nwchemdata_set_fence_float_symbol = function
  | Nwchemdata_set_fence_float_symbol_t.Nwchemdata_set_fence_float_negative_symbol sym_nfn -> sym_nfn
  | sym_nff -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_fence_float_negative_symbol_off_nwchemdata_set_fence_float_symbol"
      "Nwchemdata_set_fence_float_negative_symbol"
      (name sym_nff) "check"
;;

let nwchemdata_set_fence_float_nonnegative_symbol_off_nwchemdata_set_fence_float_symbol = function
  | Nwchemdata_set_fence_float_symbol_t.Nwchemdata_set_fence_float_nonnegative_symbol sym_nfn -> sym_nfn
  | sym_nff -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_set_fence_float_nonnegative_symbol_off_nwchemdata_set_fence_float_symbol"
      "Nwchemdata_set_fence_float_nonnegative_symbol"
      (name sym_nff) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_nwchemdata_set_fence_float_positive_symbol_off_nwchemdata_set_fence_float_symbol = function
  | Nwchemdata_set_fence_float_symbol_t.Nwchemdata_set_fence_float_positive_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_fence_float_negative_symbol_off_nwchemdata_set_fence_float_symbol = function
  | Nwchemdata_set_fence_float_symbol_t.Nwchemdata_set_fence_float_negative_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_set_fence_float_nonnegative_symbol_off_nwchemdata_set_fence_float_symbol = function
  | Nwchemdata_set_fence_float_symbol_t.Nwchemdata_set_fence_float_nonnegative_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_nwchemdata_set_fence_float_positive_constructor sym_nff =
  if not (is_nwchemdata_set_fence_float_positive_symbol_off_nwchemdata_set_fence_float_symbol sym_nff)
  then false
  else
    begin
      let sym_nfp = nwchemdata_set_fence_float_positive_symbol_off_nwchemdata_set_fence_float_symbol sym_nff in
      Nwchemdata_set_fence_float_positive_symbol_v.is_nwchemdata_set_fence_float_positive_constructor sym_nfp
    end
;;

let is_nwchemdata_set_fence_float_negative_constructor sym_nff =
  if not (is_nwchemdata_set_fence_float_negative_symbol_off_nwchemdata_set_fence_float_symbol sym_nff)
  then false
  else
    begin
      let sym_nfn = nwchemdata_set_fence_float_negative_symbol_off_nwchemdata_set_fence_float_symbol sym_nff in
      Nwchemdata_set_fence_float_negative_symbol_v.is_nwchemdata_set_fence_float_negative_constructor sym_nfn
    end
;;

let is_nwchemdata_set_fence_float_nonnegative_constructor sym_nff =
  if not (is_nwchemdata_set_fence_float_nonnegative_symbol_off_nwchemdata_set_fence_float_symbol sym_nff)
  then false
  else
    begin
      let sym_nfn = nwchemdata_set_fence_float_nonnegative_symbol_off_nwchemdata_set_fence_float_symbol sym_nff in
      Nwchemdata_set_fence_float_nonnegative_symbol_v.is_nwchemdata_set_fence_float_nonnegative_constructor sym_nfn
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let nwchemdata_set_fence_float_symbol_of_nwchemdata_set_fence_float_positive_symbol sym_nfp = 
  Nwchemdata_set_fence_float_symbol_t.Nwchemdata_set_fence_float_positive_symbol sym_nfp
;;

let nwchemdata_set_fence_float_symbol_of_nwchemdata_set_fence_float_negative_symbol sym_nfn = 
  Nwchemdata_set_fence_float_symbol_t.Nwchemdata_set_fence_float_negative_symbol sym_nfn
;;

let nwchemdata_set_fence_float_symbol_of_nwchemdata_set_fence_float_nonnegative_symbol sym_nfn = 
  Nwchemdata_set_fence_float_symbol_t.Nwchemdata_set_fence_float_nonnegative_symbol sym_nfn
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let nwchemdata_set_fence_float_positive_constructor s = nwchemdata_set_fence_float_symbol_of_nwchemdata_set_fence_float_positive_symbol (Nwchemdata_set_fence_float_positive_symbol_v.nwchemdata_set_fence_float_positive_constructor s);;

let nwchemdata_set_fence_float_negative_constructor s = nwchemdata_set_fence_float_symbol_of_nwchemdata_set_fence_float_negative_symbol (Nwchemdata_set_fence_float_negative_symbol_v.nwchemdata_set_fence_float_negative_constructor s);;

let nwchemdata_set_fence_float_nonnegative_constructor s = nwchemdata_set_fence_float_symbol_of_nwchemdata_set_fence_float_nonnegative_symbol (Nwchemdata_set_fence_float_nonnegative_symbol_v.nwchemdata_set_fence_float_nonnegative_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Nwchemdata_set_fence_float_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Nwchemdata_set_fence_float_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try nwchemdata_set_fence_float_symbol_of_nwchemdata_set_fence_float_positive_symbol
      (Nwchemdata_set_fence_float_positive_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_fence_float_positive_symbol:Nwchemdata_set_fence_float_positive_symbol_v.ml:make" ->
  try nwchemdata_set_fence_float_symbol_of_nwchemdata_set_fence_float_negative_symbol
      (Nwchemdata_set_fence_float_negative_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_fence_float_negative_symbol:Nwchemdata_set_fence_float_negative_symbol_v.ml:make" ->
  try nwchemdata_set_fence_float_symbol_of_nwchemdata_set_fence_float_nonnegative_symbol
      (Nwchemdata_set_fence_float_nonnegative_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_set_fence_float_nonnegative_symbol:Nwchemdata_set_fence_float_nonnegative_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Nwchemdata_set_fence_float_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Nwchemdata_set_fence_float_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Nwchemdata_set_fence_float_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Nwchemdata_set_fence_float_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Nwchemdata_set_fence_float subtype" nam s)
      "it does not exists"
      "Check file Nwchemdata_set_fence_float_symbol_v.ml"
    in
    failwith "Not_a_nwchemdata_set_fence_float_symbol:Nwchemdata_set_fence_float_symbol_v.ml:make"
;;


(** Nwchemdata_set_fence_float_symbol_v at 17:57:23 on 4 Dec 2016. created by version v2.4 of generator *)



