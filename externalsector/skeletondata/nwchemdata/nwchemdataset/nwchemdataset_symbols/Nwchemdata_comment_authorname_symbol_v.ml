(** {3 Nwchemdata_comment_authorname_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Nwchemdata_comment_authorname_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Nwchemdata_comment_authorname_symbol_t.Nwchemdata_comment_authorname_one_symbol sym_na1 ->
    Nwchemdata_comment_authorname_one_symbol_v.name sym_na1
  | Nwchemdata_comment_authorname_symbol_t.Nwchemdata_comment_authorname_two_symbol sym_na2 ->
    Nwchemdata_comment_authorname_two_symbol_v.name sym_na2
  | Nwchemdata_comment_authorname_symbol_t.Nwchemdata_comment_authorname_many_symbol sym_nam ->
    Nwchemdata_comment_authorname_many_symbol_v.name sym_nam
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Nwchemdata_comment_authorname_symbol_t.Nwchemdata_comment_authorname_one_symbol sym_na1 ->
  Nwchemdata_comment_authorname_one_symbol_v.string_off sym_na1
  | Nwchemdata_comment_authorname_symbol_t.Nwchemdata_comment_authorname_two_symbol sym_na2 ->
  Nwchemdata_comment_authorname_two_symbol_v.string_off sym_na2
  | Nwchemdata_comment_authorname_symbol_t.Nwchemdata_comment_authorname_many_symbol sym_nam ->
  Nwchemdata_comment_authorname_many_symbol_v.string_off sym_nam
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_nca =
  Format.sprintf "Nwchemdata_comment_authorname_symbol_t.%s" (String.capitalize (name sym_nca))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_nca =
  Format.sprintf "%s \"%s\"" (longname sym_nca) (string_off sym_nca)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let nwchemdata_comment_authorname_one_symbol_off_nwchemdata_comment_authorname_symbol = function
  | Nwchemdata_comment_authorname_symbol_t.Nwchemdata_comment_authorname_one_symbol sym_na1 -> sym_na1
  | sym_nca -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_comment_authorname_one_symbol_off_nwchemdata_comment_authorname_symbol"
      "Nwchemdata_comment_authorname_one_symbol"
      (name sym_nca) "check"
;;

let nwchemdata_comment_authorname_two_symbol_off_nwchemdata_comment_authorname_symbol = function
  | Nwchemdata_comment_authorname_symbol_t.Nwchemdata_comment_authorname_two_symbol sym_na2 -> sym_na2
  | sym_nca -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_comment_authorname_two_symbol_off_nwchemdata_comment_authorname_symbol"
      "Nwchemdata_comment_authorname_two_symbol"
      (name sym_nca) "check"
;;

let nwchemdata_comment_authorname_many_symbol_off_nwchemdata_comment_authorname_symbol = function
  | Nwchemdata_comment_authorname_symbol_t.Nwchemdata_comment_authorname_many_symbol sym_nam -> sym_nam
  | sym_nca -> Error_messages_v.print_fatal_error
      nam_cod "nwchemdata_comment_authorname_many_symbol_off_nwchemdata_comment_authorname_symbol"
      "Nwchemdata_comment_authorname_many_symbol"
      (name sym_nca) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_nwchemdata_comment_authorname_one_symbol_off_nwchemdata_comment_authorname_symbol = function
  | Nwchemdata_comment_authorname_symbol_t.Nwchemdata_comment_authorname_one_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_comment_authorname_two_symbol_off_nwchemdata_comment_authorname_symbol = function
  | Nwchemdata_comment_authorname_symbol_t.Nwchemdata_comment_authorname_two_symbol _ -> true
  | _ -> false
;;

let is_nwchemdata_comment_authorname_many_symbol_off_nwchemdata_comment_authorname_symbol = function
  | Nwchemdata_comment_authorname_symbol_t.Nwchemdata_comment_authorname_many_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_nwchemdata_comment_authorname_one_constructor sym_nca =
  if not (is_nwchemdata_comment_authorname_one_symbol_off_nwchemdata_comment_authorname_symbol sym_nca)
  then false
  else
    begin
      let sym_na1 = nwchemdata_comment_authorname_one_symbol_off_nwchemdata_comment_authorname_symbol sym_nca in
      Nwchemdata_comment_authorname_one_symbol_v.is_nwchemdata_comment_authorname_one_constructor sym_na1
    end
;;

let is_nwchemdata_comment_authorname_two_constructor sym_nca =
  if not (is_nwchemdata_comment_authorname_two_symbol_off_nwchemdata_comment_authorname_symbol sym_nca)
  then false
  else
    begin
      let sym_na2 = nwchemdata_comment_authorname_two_symbol_off_nwchemdata_comment_authorname_symbol sym_nca in
      Nwchemdata_comment_authorname_two_symbol_v.is_nwchemdata_comment_authorname_two_constructor sym_na2
    end
;;

let is_nwchemdata_comment_authorname_many_constructor sym_nca =
  if not (is_nwchemdata_comment_authorname_many_symbol_off_nwchemdata_comment_authorname_symbol sym_nca)
  then false
  else
    begin
      let sym_nam = nwchemdata_comment_authorname_many_symbol_off_nwchemdata_comment_authorname_symbol sym_nca in
      Nwchemdata_comment_authorname_many_symbol_v.is_nwchemdata_comment_authorname_many_constructor sym_nam
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let nwchemdata_comment_authorname_symbol_of_nwchemdata_comment_authorname_one_symbol sym_na1 = 
  Nwchemdata_comment_authorname_symbol_t.Nwchemdata_comment_authorname_one_symbol sym_na1
;;

let nwchemdata_comment_authorname_symbol_of_nwchemdata_comment_authorname_two_symbol sym_na2 = 
  Nwchemdata_comment_authorname_symbol_t.Nwchemdata_comment_authorname_two_symbol sym_na2
;;

let nwchemdata_comment_authorname_symbol_of_nwchemdata_comment_authorname_many_symbol sym_nam = 
  Nwchemdata_comment_authorname_symbol_t.Nwchemdata_comment_authorname_many_symbol sym_nam
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let nwchemdata_comment_authorname_one_constructor s = nwchemdata_comment_authorname_symbol_of_nwchemdata_comment_authorname_one_symbol (Nwchemdata_comment_authorname_one_symbol_v.nwchemdata_comment_authorname_one_constructor s);;

let nwchemdata_comment_authorname_two_constructor s = nwchemdata_comment_authorname_symbol_of_nwchemdata_comment_authorname_two_symbol (Nwchemdata_comment_authorname_two_symbol_v.nwchemdata_comment_authorname_two_constructor s);;

let nwchemdata_comment_authorname_many_constructor s = nwchemdata_comment_authorname_symbol_of_nwchemdata_comment_authorname_many_symbol (Nwchemdata_comment_authorname_many_symbol_v.nwchemdata_comment_authorname_many_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Nwchemdata_comment_authorname_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Nwchemdata_comment_authorname_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try nwchemdata_comment_authorname_symbol_of_nwchemdata_comment_authorname_one_symbol
      (Nwchemdata_comment_authorname_one_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_comment_authorname_one_symbol:Nwchemdata_comment_authorname_one_symbol_v.ml:make" ->
  try nwchemdata_comment_authorname_symbol_of_nwchemdata_comment_authorname_two_symbol
      (Nwchemdata_comment_authorname_two_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_comment_authorname_two_symbol:Nwchemdata_comment_authorname_two_symbol_v.ml:make" ->
  try nwchemdata_comment_authorname_symbol_of_nwchemdata_comment_authorname_many_symbol
      (Nwchemdata_comment_authorname_many_symbol_v.make nam s)
  with Failure "Not_a_nwchemdata_comment_authorname_many_symbol:Nwchemdata_comment_authorname_many_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Nwchemdata_comment_authorname_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Nwchemdata_comment_authorname_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Nwchemdata_comment_authorname_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Nwchemdata_comment_authorname_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Nwchemdata_comment_authorname subtype" nam s)
      "it does not exists"
      "Check file Nwchemdata_comment_authorname_symbol_v.ml"
    in
    failwith "Not_a_nwchemdata_comment_authorname_symbol:Nwchemdata_comment_authorname_symbol_v.ml:make"
;;


(** Nwchemdata_comment_authorname_symbol_v at 17:57:14 on 4 Dec 2016. created by version v2.4 of generator *)



