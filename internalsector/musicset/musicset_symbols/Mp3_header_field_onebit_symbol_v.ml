(** {3 Mp3_header_field_onebit_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SMUS:Mp3_header_field_onebit_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Mp3_header_field_onebit_symbol_t.Version_symbol sym_ver ->
    Version_symbol_v.name sym_ver
  | Mp3_header_field_onebit_symbol_t.Error_protection -> "error_protection"
  | Mp3_header_field_onebit_symbol_t.Pad_bit -> "pad_bit"
  | Mp3_header_field_onebit_symbol_t.Intensity_stereo -> "intensity_stereo"
  | Mp3_header_field_onebit_symbol_t.Ms_stereo -> "ms_stereo"
  | Mp3_header_field_onebit_symbol_t.Private_bit -> "private_bit"
  | Mp3_header_field_onebit_symbol_t.Copyright -> "copyright"
  | Mp3_header_field_onebit_symbol_t.Original -> "original"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Mp3_header_field_onebit_symbol_t.Version_symbol sym_ver ->
  Version_symbol_v.string_off sym_ver
  | Mp3_header_field_onebit_symbol_t.Error_protection -> ""
  | Mp3_header_field_onebit_symbol_t.Pad_bit -> ""
  | Mp3_header_field_onebit_symbol_t.Intensity_stereo -> ""
  | Mp3_header_field_onebit_symbol_t.Ms_stereo -> ""
  | Mp3_header_field_onebit_symbol_t.Private_bit -> ""
  | Mp3_header_field_onebit_symbol_t.Copyright -> ""
  | Mp3_header_field_onebit_symbol_t.Original -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_mf1 =
  Format.sprintf "Mp3_header_field_onebit_symbol_t.%s" (String.capitalize (name sym_mf1))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_mf1 =
  Format.sprintf "%s \"%s\"" (longname sym_mf1) (string_off sym_mf1)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let version_symbol_off_mp3_header_field_onebit_symbol = function
  | Mp3_header_field_onebit_symbol_t.Version_symbol sym_ver -> sym_ver
  | sym_mf1 -> Error_messages_v.print_fatal_error
      nam_cod "version_symbol_off_mp3_header_field_onebit_symbol"
      "Version_symbol"
      (name sym_mf1) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_error_protection = function
  | Mp3_header_field_onebit_symbol_t.Error_protection -> true
  | _ -> false
;;

let is_pad_bit = function
  | Mp3_header_field_onebit_symbol_t.Pad_bit -> true
  | _ -> false
;;

let is_intensity_stereo = function
  | Mp3_header_field_onebit_symbol_t.Intensity_stereo -> true
  | _ -> false
;;

let is_ms_stereo = function
  | Mp3_header_field_onebit_symbol_t.Ms_stereo -> true
  | _ -> false
;;

let is_private_bit = function
  | Mp3_header_field_onebit_symbol_t.Private_bit -> true
  | _ -> false
;;

let is_copyright = function
  | Mp3_header_field_onebit_symbol_t.Copyright -> true
  | _ -> false
;;

let is_original = function
  | Mp3_header_field_onebit_symbol_t.Original -> true
  | _ -> false
;;


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_version_symbol_off_mp3_header_field_onebit_symbol = function
  | Mp3_header_field_onebit_symbol_t.Version_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_version_1 sym_mf1 =
  if not (is_version_symbol_off_mp3_header_field_onebit_symbol sym_mf1)
  then false
  else
    begin
      let sym_ver = version_symbol_off_mp3_header_field_onebit_symbol sym_mf1 in
      Version_symbol_v.is_version_1 sym_ver
    end
;;

let is_version_2 sym_mf1 =
  if not (is_version_symbol_off_mp3_header_field_onebit_symbol sym_mf1)
  then false
  else
    begin
      let sym_ver = version_symbol_off_mp3_header_field_onebit_symbol sym_mf1 in
      Version_symbol_v.is_version_2 sym_ver
    end
;;

let is_version_2_5 sym_mf1 =
  if not (is_version_symbol_off_mp3_header_field_onebit_symbol sym_mf1)
  then false
  else
    begin
      let sym_ver = version_symbol_off_mp3_header_field_onebit_symbol sym_mf1 in
      Version_symbol_v.is_version_2_5 sym_ver
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let mp3_header_field_onebit_symbol_of_version_symbol sym_ver = 
  Mp3_header_field_onebit_symbol_t.Version_symbol sym_ver
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)

let error_protection = Mp3_header_field_onebit_symbol_t.Error_protection;;

let pad_bit = Mp3_header_field_onebit_symbol_t.Pad_bit;;

let intensity_stereo = Mp3_header_field_onebit_symbol_t.Intensity_stereo;;

let ms_stereo = Mp3_header_field_onebit_symbol_t.Ms_stereo;;

let private_bit = Mp3_header_field_onebit_symbol_t.Private_bit;;

let copyright = Mp3_header_field_onebit_symbol_t.Copyright;;

let original = Mp3_header_field_onebit_symbol_t.Original;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let version_1 = mp3_header_field_onebit_symbol_of_version_symbol Version_symbol_v.version_1;;

let version_2 = mp3_header_field_onebit_symbol_of_version_symbol Version_symbol_v.version_2;;

let version_2_5 = mp3_header_field_onebit_symbol_of_version_symbol Version_symbol_v.version_2_5;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "error_protection" -> error_protection
  | "pad_bit" -> pad_bit
  | "intensity_stereo" -> intensity_stereo
  | "ms_stereo" -> ms_stereo
  | "private_bit" -> private_bit
  | "copyright" -> copyright
  | "original" -> original
  | _ ->
  failwith "Not_a_topson_bare:Mp3_header_field_onebit_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Mp3_header_field_onebit_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try mp3_header_field_onebit_symbol_of_version_symbol
      (Version_symbol_v.make nam s)
  with Failure "Not_a_version_symbol:Version_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Mp3_header_field_onebit_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Mp3_header_field_onebit_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Mp3_header_field_onebit_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Mp3_header_field_onebit_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Mp3_header_field_onebit subtype" nam s)
      "it does not exists"
      "Check file Mp3_header_field_onebit_symbol_v.ml"
    in
    failwith "Not_a_mp3_header_field_onebit_symbol:Mp3_header_field_onebit_symbol_v.ml:make"
;;


(** Mp3_header_field_onebit_symbol_v at 18:57:19 on 27 Jun 2013. created by version v2.3 of generator *)



