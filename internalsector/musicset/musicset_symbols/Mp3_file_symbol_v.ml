(** {3 Mp3_file_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SMUS:Mp3_file_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Mp3_file_symbol_t.Mp3_file_id3v1_symbol sym_mfi ->
    Mp3_file_id3v1_symbol_v.name sym_mfi
  | Mp3_file_symbol_t.Mp3_file_id3v2_symbol sym_mfi ->
    Mp3_file_id3v2_symbol_v.name sym_mfi
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Mp3_file_symbol_t.Mp3_file_id3v1_symbol sym_mfi ->
  Mp3_file_id3v1_symbol_v.string_off sym_mfi
  | Mp3_file_symbol_t.Mp3_file_id3v2_symbol sym_mfi ->
  Mp3_file_id3v2_symbol_v.string_off sym_mfi
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_mfi =
  Format.sprintf "Mp3_file_symbol_t.%s" (String.capitalize (name sym_mfi))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_mfi =
  Format.sprintf "%s \"%s\"" (longname sym_mfi) (string_off sym_mfi)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let mp3_file_id3v1_symbol_off_mp3_file_symbol = function
  | Mp3_file_symbol_t.Mp3_file_id3v1_symbol sym_mfi -> sym_mfi
  | sym_mfi -> Error_messages_v.print_fatal_error
      nam_cod "mp3_file_id3v1_symbol_off_mp3_file_symbol"
      "Mp3_file_id3v1_symbol"
      (name sym_mfi) "check"
;;

let mp3_file_id3v2_symbol_off_mp3_file_symbol = function
  | Mp3_file_symbol_t.Mp3_file_id3v2_symbol sym_mfi -> sym_mfi
  | sym_mfi -> Error_messages_v.print_fatal_error
      nam_cod "mp3_file_id3v2_symbol_off_mp3_file_symbol"
      "Mp3_file_id3v2_symbol"
      (name sym_mfi) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_mp3_file_id3v1_symbol_off_mp3_file_symbol = function
  | Mp3_file_symbol_t.Mp3_file_id3v1_symbol _ -> true
  | _ -> false
;;

let is_mp3_file_id3v2_symbol_off_mp3_file_symbol = function
  | Mp3_file_symbol_t.Mp3_file_id3v2_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_mp3_file_id3v1_1 sym_mfi =
  if not (is_mp3_file_id3v1_symbol_off_mp3_file_symbol sym_mfi)
  then false
  else
    begin
      let sym_mfi = mp3_file_id3v1_symbol_off_mp3_file_symbol sym_mfi in
      Mp3_file_id3v1_symbol_v.is_mp3_file_id3v1_1 sym_mfi
    end
;;

let is_mp3_file_id3v1_2 sym_mfi =
  if not (is_mp3_file_id3v1_symbol_off_mp3_file_symbol sym_mfi)
  then false
  else
    begin
      let sym_mfi = mp3_file_id3v1_symbol_off_mp3_file_symbol sym_mfi in
      Mp3_file_id3v1_symbol_v.is_mp3_file_id3v1_2 sym_mfi
    end
;;

let is_mp3_file_id3v1_2_5 sym_mfi =
  if not (is_mp3_file_id3v1_symbol_off_mp3_file_symbol sym_mfi)
  then false
  else
    begin
      let sym_mfi = mp3_file_id3v1_symbol_off_mp3_file_symbol sym_mfi in
      Mp3_file_id3v1_symbol_v.is_mp3_file_id3v1_2_5 sym_mfi
    end
;;

let is_mp3_file_id3v2_1 sym_mfi =
  if not (is_mp3_file_id3v2_symbol_off_mp3_file_symbol sym_mfi)
  then false
  else
    begin
      let sym_mfi = mp3_file_id3v2_symbol_off_mp3_file_symbol sym_mfi in
      Mp3_file_id3v2_symbol_v.is_mp3_file_id3v2_1 sym_mfi
    end
;;

let is_mp3_file_id3v2_2 sym_mfi =
  if not (is_mp3_file_id3v2_symbol_off_mp3_file_symbol sym_mfi)
  then false
  else
    begin
      let sym_mfi = mp3_file_id3v2_symbol_off_mp3_file_symbol sym_mfi in
      Mp3_file_id3v2_symbol_v.is_mp3_file_id3v2_2 sym_mfi
    end
;;

let is_mp3_file_id3v2_2_5 sym_mfi =
  if not (is_mp3_file_id3v2_symbol_off_mp3_file_symbol sym_mfi)
  then false
  else
    begin
      let sym_mfi = mp3_file_id3v2_symbol_off_mp3_file_symbol sym_mfi in
      Mp3_file_id3v2_symbol_v.is_mp3_file_id3v2_2_5 sym_mfi
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let mp3_file_symbol_of_mp3_file_id3v1_symbol sym_mfi = 
  Mp3_file_symbol_t.Mp3_file_id3v1_symbol sym_mfi
;;

let mp3_file_symbol_of_mp3_file_id3v2_symbol sym_mfi = 
  Mp3_file_symbol_t.Mp3_file_id3v2_symbol sym_mfi
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let mp3_file_id3v1_1 = mp3_file_symbol_of_mp3_file_id3v1_symbol Mp3_file_id3v1_symbol_v.mp3_file_id3v1_1;;

let mp3_file_id3v1_2 = mp3_file_symbol_of_mp3_file_id3v1_symbol Mp3_file_id3v1_symbol_v.mp3_file_id3v1_2;;

let mp3_file_id3v1_2_5 = mp3_file_symbol_of_mp3_file_id3v1_symbol Mp3_file_id3v1_symbol_v.mp3_file_id3v1_2_5;;

let mp3_file_id3v2_1 = mp3_file_symbol_of_mp3_file_id3v2_symbol Mp3_file_id3v2_symbol_v.mp3_file_id3v2_1;;

let mp3_file_id3v2_2 = mp3_file_symbol_of_mp3_file_id3v2_symbol Mp3_file_id3v2_symbol_v.mp3_file_id3v2_2;;

let mp3_file_id3v2_2_5 = mp3_file_symbol_of_mp3_file_id3v2_symbol Mp3_file_id3v2_symbol_v.mp3_file_id3v2_2_5;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Mp3_file_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Mp3_file_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try mp3_file_symbol_of_mp3_file_id3v1_symbol
      (Mp3_file_id3v1_symbol_v.make nam s)
  with Failure "Not_a_mp3_file_id3v1_symbol:Mp3_file_id3v1_symbol_v.ml:make" ->
  try mp3_file_symbol_of_mp3_file_id3v2_symbol
      (Mp3_file_id3v2_symbol_v.make nam s)
  with Failure "Not_a_mp3_file_id3v2_symbol:Mp3_file_id3v2_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Mp3_file_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Mp3_file_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Mp3_file_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Mp3_file_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Mp3_file subtype" nam s)
      "it does not exists"
      "Check file Mp3_file_symbol_v.ml"
    in
    failwith "Not_a_mp3_file_symbol:Mp3_file_symbol_v.ml:make"
;;


(** Mp3_file_symbol_v at 18:57:18 on 27 Jun 2013. created by version v2.3 of generator *)



