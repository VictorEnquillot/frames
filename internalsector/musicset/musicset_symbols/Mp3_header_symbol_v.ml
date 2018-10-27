(** {3 Mp3_header_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SMUS:Mp3_header_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Mp3_header_symbol_t.Mp3_header_field_symbol sym_mhf ->
    Mp3_header_field_symbol_v.name sym_mhf
  | Mp3_header_symbol_t.Mp3_header_tag_symbol sym_mht ->
    Mp3_header_tag_symbol_v.name sym_mht
  | Mp3_header_symbol_t.Mp3_header_1 -> "mp3_header_1"
  | Mp3_header_symbol_t.Mp3_header_2 -> "mp3_header_2"
  | Mp3_header_symbol_t.Mp3_header_2_5 -> "mp3_header_2_5"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Mp3_header_symbol_t.Mp3_header_field_symbol sym_mhf ->
  Mp3_header_field_symbol_v.string_off sym_mhf
  | Mp3_header_symbol_t.Mp3_header_tag_symbol sym_mht ->
  Mp3_header_tag_symbol_v.string_off sym_mht
  | Mp3_header_symbol_t.Mp3_header_1 -> ""
  | Mp3_header_symbol_t.Mp3_header_2 -> ""
  | Mp3_header_symbol_t.Mp3_header_2_5 -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_mhe =
  Format.sprintf "Mp3_header_symbol_t.%s" (String.capitalize (name sym_mhe))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_mhe =
  Format.sprintf "%s \"%s\"" (longname sym_mhe) (string_off sym_mhe)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let mp3_header_field_symbol_off_mp3_header_symbol = function
  | Mp3_header_symbol_t.Mp3_header_field_symbol sym_mhf -> sym_mhf
  | sym_mhe -> Error_messages_v.print_fatal_error
      nam_cod "mp3_header_field_symbol_off_mp3_header_symbol"
      "Mp3_header_field_symbol"
      (name sym_mhe) "check"
;;

let mp3_header_tag_symbol_off_mp3_header_symbol = function
  | Mp3_header_symbol_t.Mp3_header_tag_symbol sym_mht -> sym_mht
  | sym_mhe -> Error_messages_v.print_fatal_error
      nam_cod "mp3_header_tag_symbol_off_mp3_header_symbol"
      "Mp3_header_tag_symbol"
      (name sym_mhe) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let mp3_header_field_onebit_symbol_off_mp3_header_symbol sym_mhe = 
  let sym_mhf = mp3_header_field_symbol_off_mp3_header_symbol sym_mhe in
    Mp3_header_field_symbol_v.mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf
;;

let version_symbol_off_mp3_header_symbol sym_mhe = 
  let sym_mhf = mp3_header_field_symbol_off_mp3_header_symbol sym_mhe in
    Mp3_header_field_symbol_v.version_symbol_off_mp3_header_field_symbol sym_mhf
;;

let mp3_header_field_twobits_symbol_off_mp3_header_symbol sym_mhe = 
  let sym_mhf = mp3_header_field_symbol_off_mp3_header_symbol sym_mhe in
    Mp3_header_field_symbol_v.mp3_header_field_twobits_symbol_off_mp3_header_field_symbol sym_mhf
;;

let mp3_header_field_fourbits_symbol_off_mp3_header_symbol sym_mhe = 
  let sym_mhf = mp3_header_field_symbol_off_mp3_header_symbol sym_mhe in
    Mp3_header_field_symbol_v.mp3_header_field_fourbits_symbol_off_mp3_header_field_symbol sym_mhf
;;

let mp3_header_field_elevenbits_symbol_off_mp3_header_symbol sym_mhe = 
  let sym_mhf = mp3_header_field_symbol_off_mp3_header_symbol sym_mhe in
    Mp3_header_field_symbol_v.mp3_header_field_elevenbits_symbol_off_mp3_header_field_symbol sym_mhf
;;


(** {6 Querying_topson_bare_for_symbol} *)

let is_mp3_header_1 = function
  | Mp3_header_symbol_t.Mp3_header_1 -> true
  | _ -> false
;;

let is_mp3_header_2 = function
  | Mp3_header_symbol_t.Mp3_header_2 -> true
  | _ -> false
;;

let is_mp3_header_2_5 = function
  | Mp3_header_symbol_t.Mp3_header_2_5 -> true
  | _ -> false
;;


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_mp3_header_field_symbol_off_mp3_header_symbol = function
  | Mp3_header_symbol_t.Mp3_header_field_symbol _ -> true
  | _ -> false
;;

let is_mp3_header_tag_symbol_off_mp3_header_symbol = function
  | Mp3_header_symbol_t.Mp3_header_tag_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_version_1 sym_mhe =
  if not (is_mp3_header_field_symbol_off_mp3_header_symbol sym_mhe)
  then false
  else
    begin
      let sym_mhf = mp3_header_field_symbol_off_mp3_header_symbol sym_mhe in
      Mp3_header_field_symbol_v.is_version_1 sym_mhf
    end
;;

let is_version_2 sym_mhe =
  if not (is_mp3_header_field_symbol_off_mp3_header_symbol sym_mhe)
  then false
  else
    begin
      let sym_mhf = mp3_header_field_symbol_off_mp3_header_symbol sym_mhe in
      Mp3_header_field_symbol_v.is_version_2 sym_mhf
    end
;;

let is_version_2_5 sym_mhe =
  if not (is_mp3_header_field_symbol_off_mp3_header_symbol sym_mhe)
  then false
  else
    begin
      let sym_mhf = mp3_header_field_symbol_off_mp3_header_symbol sym_mhe in
      Mp3_header_field_symbol_v.is_version_2_5 sym_mhf
    end
;;

let is_error_protection sym_mhe =
  if not (is_mp3_header_field_symbol_off_mp3_header_symbol sym_mhe)
  then false
  else
    begin
      let sym_mhf = mp3_header_field_symbol_off_mp3_header_symbol sym_mhe in
      Mp3_header_field_symbol_v.is_error_protection sym_mhf
    end
;;

let is_pad_bit sym_mhe =
  if not (is_mp3_header_field_symbol_off_mp3_header_symbol sym_mhe)
  then false
  else
    begin
      let sym_mhf = mp3_header_field_symbol_off_mp3_header_symbol sym_mhe in
      Mp3_header_field_symbol_v.is_pad_bit sym_mhf
    end
;;

let is_intensity_stereo sym_mhe =
  if not (is_mp3_header_field_symbol_off_mp3_header_symbol sym_mhe)
  then false
  else
    begin
      let sym_mhf = mp3_header_field_symbol_off_mp3_header_symbol sym_mhe in
      Mp3_header_field_symbol_v.is_intensity_stereo sym_mhf
    end
;;

let is_ms_stereo sym_mhe =
  if not (is_mp3_header_field_symbol_off_mp3_header_symbol sym_mhe)
  then false
  else
    begin
      let sym_mhf = mp3_header_field_symbol_off_mp3_header_symbol sym_mhe in
      Mp3_header_field_symbol_v.is_ms_stereo sym_mhf
    end
;;

let is_private_bit sym_mhe =
  if not (is_mp3_header_field_symbol_off_mp3_header_symbol sym_mhe)
  then false
  else
    begin
      let sym_mhf = mp3_header_field_symbol_off_mp3_header_symbol sym_mhe in
      Mp3_header_field_symbol_v.is_private_bit sym_mhf
    end
;;

let is_copyright sym_mhe =
  if not (is_mp3_header_field_symbol_off_mp3_header_symbol sym_mhe)
  then false
  else
    begin
      let sym_mhf = mp3_header_field_symbol_off_mp3_header_symbol sym_mhe in
      Mp3_header_field_symbol_v.is_copyright sym_mhf
    end
;;

let is_original sym_mhe =
  if not (is_mp3_header_field_symbol_off_mp3_header_symbol sym_mhe)
  then false
  else
    begin
      let sym_mhf = mp3_header_field_symbol_off_mp3_header_symbol sym_mhe in
      Mp3_header_field_symbol_v.is_original sym_mhf
    end
;;

let is_layer sym_mhe =
  if not (is_mp3_header_field_symbol_off_mp3_header_symbol sym_mhe)
  then false
  else
    begin
      let sym_mhf = mp3_header_field_symbol_off_mp3_header_symbol sym_mhe in
      Mp3_header_field_symbol_v.is_layer sym_mhf
    end
;;

let is_frequency sym_mhe =
  if not (is_mp3_header_field_symbol_off_mp3_header_symbol sym_mhe)
  then false
  else
    begin
      let sym_mhf = mp3_header_field_symbol_off_mp3_header_symbol sym_mhe in
      Mp3_header_field_symbol_v.is_frequency sym_mhf
    end
;;

let is_mode sym_mhe =
  if not (is_mp3_header_field_symbol_off_mp3_header_symbol sym_mhe)
  then false
  else
    begin
      let sym_mhf = mp3_header_field_symbol_off_mp3_header_symbol sym_mhe in
      Mp3_header_field_symbol_v.is_mode sym_mhf
    end
;;

let is_mode_extension sym_mhe =
  if not (is_mp3_header_field_symbol_off_mp3_header_symbol sym_mhe)
  then false
  else
    begin
      let sym_mhf = mp3_header_field_symbol_off_mp3_header_symbol sym_mhe in
      Mp3_header_field_symbol_v.is_mode_extension sym_mhf
    end
;;

let is_emphasis sym_mhe =
  if not (is_mp3_header_field_symbol_off_mp3_header_symbol sym_mhe)
  then false
  else
    begin
      let sym_mhf = mp3_header_field_symbol_off_mp3_header_symbol sym_mhe in
      Mp3_header_field_symbol_v.is_emphasis sym_mhf
    end
;;

let is_bit_rate sym_mhe =
  if not (is_mp3_header_field_symbol_off_mp3_header_symbol sym_mhe)
  then false
  else
    begin
      let sym_mhf = mp3_header_field_symbol_off_mp3_header_symbol sym_mhe in
      Mp3_header_field_symbol_v.is_bit_rate sym_mhf
    end
;;

let is_sync_word sym_mhe =
  if not (is_mp3_header_field_symbol_off_mp3_header_symbol sym_mhe)
  then false
  else
    begin
      let sym_mhf = mp3_header_field_symbol_off_mp3_header_symbol sym_mhe in
      Mp3_header_field_symbol_v.is_sync_word sym_mhf
    end
;;

let is_mp3_header_tag_onebit sym_mhe =
  if not (is_mp3_header_tag_symbol_off_mp3_header_symbol sym_mhe)
  then false
  else
    begin
      let sym_mht = mp3_header_tag_symbol_off_mp3_header_symbol sym_mhe in
      Mp3_header_tag_symbol_v.is_mp3_header_tag_onebit sym_mht
    end
;;

let is_mp3_header_tag_twobits sym_mhe =
  if not (is_mp3_header_tag_symbol_off_mp3_header_symbol sym_mhe)
  then false
  else
    begin
      let sym_mht = mp3_header_tag_symbol_off_mp3_header_symbol sym_mhe in
      Mp3_header_tag_symbol_v.is_mp3_header_tag_twobits sym_mht
    end
;;

let is_id3v2 sym_mhe =
  if not (is_mp3_header_tag_symbol_off_mp3_header_symbol sym_mhe)
  then false
  else
    begin
      let sym_mht = mp3_header_tag_symbol_off_mp3_header_symbol sym_mhe in
      Mp3_header_tag_symbol_v.is_id3v2 sym_mht
    end
;;

let is_mp3_header_tag_fourbits sym_mhe =
  if not (is_mp3_header_tag_symbol_off_mp3_header_symbol sym_mhe)
  then false
  else
    begin
      let sym_mht = mp3_header_tag_symbol_off_mp3_header_symbol sym_mhe in
      Mp3_header_tag_symbol_v.is_mp3_header_tag_fourbits sym_mht
    end
;;

let is_mp3_header_tag_twelvebits sym_mhe =
  if not (is_mp3_header_tag_symbol_off_mp3_header_symbol sym_mhe)
  then false
  else
    begin
      let sym_mht = mp3_header_tag_symbol_off_mp3_header_symbol sym_mhe in
      Mp3_header_tag_symbol_v.is_mp3_header_tag_twelvebits sym_mht
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_mp3_header_field_onebit_symbol_off_mp3_header_symbol sym_mhe =
  if not (is_mp3_header_field_symbol_off_mp3_header_symbol sym_mhe)
  then false
  else
    begin
  let sym_mhf = mp3_header_field_symbol_off_mp3_header_symbol sym_mhe in
  Mp3_header_field_symbol_v.is_mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf
    end
;;

let is_version_symbol_off_mp3_header_symbol sym_mhe =
  if not (is_mp3_header_field_symbol_off_mp3_header_symbol sym_mhe)
  then false
  else
    begin
  let sym_mhf = mp3_header_field_symbol_off_mp3_header_symbol sym_mhe in
  Mp3_header_field_symbol_v.is_version_symbol_off_mp3_header_field_symbol sym_mhf
    end
;;

let is_mp3_header_field_twobits_symbol_off_mp3_header_symbol sym_mhe =
  if not (is_mp3_header_field_symbol_off_mp3_header_symbol sym_mhe)
  then false
  else
    begin
  let sym_mhf = mp3_header_field_symbol_off_mp3_header_symbol sym_mhe in
  Mp3_header_field_symbol_v.is_mp3_header_field_twobits_symbol_off_mp3_header_field_symbol sym_mhf
    end
;;

let is_mp3_header_field_fourbits_symbol_off_mp3_header_symbol sym_mhe =
  if not (is_mp3_header_field_symbol_off_mp3_header_symbol sym_mhe)
  then false
  else
    begin
  let sym_mhf = mp3_header_field_symbol_off_mp3_header_symbol sym_mhe in
  Mp3_header_field_symbol_v.is_mp3_header_field_fourbits_symbol_off_mp3_header_field_symbol sym_mhf
    end
;;

let is_mp3_header_field_elevenbits_symbol_off_mp3_header_symbol sym_mhe =
  if not (is_mp3_header_field_symbol_off_mp3_header_symbol sym_mhe)
  then false
  else
    begin
  let sym_mhf = mp3_header_field_symbol_off_mp3_header_symbol sym_mhe in
  Mp3_header_field_symbol_v.is_mp3_header_field_elevenbits_symbol_off_mp3_header_field_symbol sym_mhf
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let mp3_header_symbol_of_mp3_header_field_symbol sym_mhf = 
  Mp3_header_symbol_t.Mp3_header_field_symbol sym_mhf
;;

let mp3_header_symbol_of_mp3_header_tag_symbol sym_mht = 
  Mp3_header_symbol_t.Mp3_header_tag_symbol sym_mht
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let mp3_header_symbol_of_mp3_header_field_onebit_symbol sym_mf1 = 
  let sym_mhf = Mp3_header_field_symbol_v.mp3_header_field_symbol_of_mp3_header_field_onebit_symbol sym_mf1 in
    mp3_header_symbol_of_mp3_header_field_symbol sym_mhf
;;

let mp3_header_symbol_of_version_symbol sym_ver = 
  let sym_mhf = Mp3_header_field_symbol_v.mp3_header_field_symbol_of_version_symbol sym_ver in
    mp3_header_symbol_of_mp3_header_field_symbol sym_mhf
;;

let mp3_header_symbol_of_mp3_header_field_twobits_symbol sym_mf2 = 
  let sym_mhf = Mp3_header_field_symbol_v.mp3_header_field_symbol_of_mp3_header_field_twobits_symbol sym_mf2 in
    mp3_header_symbol_of_mp3_header_field_symbol sym_mhf
;;

let mp3_header_symbol_of_mp3_header_field_fourbits_symbol sym_mf4 = 
  let sym_mhf = Mp3_header_field_symbol_v.mp3_header_field_symbol_of_mp3_header_field_fourbits_symbol sym_mf4 in
    mp3_header_symbol_of_mp3_header_field_symbol sym_mhf
;;

let mp3_header_symbol_of_mp3_header_field_elevenbits_symbol sym_mfe = 
  let sym_mhf = Mp3_header_field_symbol_v.mp3_header_field_symbol_of_mp3_header_field_elevenbits_symbol sym_mfe in
    mp3_header_symbol_of_mp3_header_field_symbol sym_mhf
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)

let mp3_header_1 = Mp3_header_symbol_t.Mp3_header_1;;

let mp3_header_2 = Mp3_header_symbol_t.Mp3_header_2;;

let mp3_header_2_5 = Mp3_header_symbol_t.Mp3_header_2_5;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let version_1 = mp3_header_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.version_1;;

let version_2 = mp3_header_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.version_2;;

let version_2_5 = mp3_header_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.version_2_5;;

let error_protection = mp3_header_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.error_protection;;

let pad_bit = mp3_header_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.pad_bit;;

let intensity_stereo = mp3_header_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.intensity_stereo;;

let ms_stereo = mp3_header_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.ms_stereo;;

let private_bit = mp3_header_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.private_bit;;

let copyright = mp3_header_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.copyright;;

let original = mp3_header_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.original;;

let layer = mp3_header_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.layer;;

let frequency = mp3_header_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.frequency;;

let mode = mp3_header_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.mode;;

let mode_extension = mp3_header_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.mode_extension;;

let emphasis = mp3_header_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.emphasis;;

let bit_rate = mp3_header_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.bit_rate;;

let sync_word = mp3_header_symbol_of_mp3_header_field_symbol Mp3_header_field_symbol_v.sync_word;;

let mp3_header_tag_onebit = mp3_header_symbol_of_mp3_header_tag_symbol Mp3_header_tag_symbol_v.mp3_header_tag_onebit;;

let mp3_header_tag_twobits = mp3_header_symbol_of_mp3_header_tag_symbol Mp3_header_tag_symbol_v.mp3_header_tag_twobits;;

let id3v2 = mp3_header_symbol_of_mp3_header_tag_symbol Mp3_header_tag_symbol_v.id3v2;;

let mp3_header_tag_fourbits = mp3_header_symbol_of_mp3_header_tag_symbol Mp3_header_tag_symbol_v.mp3_header_tag_fourbits;;

let mp3_header_tag_twelvebits = mp3_header_symbol_of_mp3_header_tag_symbol Mp3_header_tag_symbol_v.mp3_header_tag_twelvebits;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "mp3_header_1" -> mp3_header_1
  | "mp3_header_2" -> mp3_header_2
  | "mp3_header_2_5" -> mp3_header_2_5
  | _ ->
  failwith "Not_a_topson_bare:Mp3_header_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Mp3_header_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try mp3_header_symbol_of_mp3_header_field_symbol
      (Mp3_header_field_symbol_v.make nam s)
  with Failure "Not_a_mp3_header_field_symbol:Mp3_header_field_symbol_v.ml:make" ->
  try mp3_header_symbol_of_mp3_header_tag_symbol
      (Mp3_header_tag_symbol_v.make nam s)
  with Failure "Not_a_mp3_header_tag_symbol:Mp3_header_tag_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Mp3_header_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Mp3_header_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Mp3_header_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Mp3_header_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Mp3_header subtype" nam s)
      "it does not exists"
      "Check file Mp3_header_symbol_v.ml"
    in
    failwith "Not_a_mp3_header_symbol:Mp3_header_symbol_v.ml:make"
;;


(** Mp3_header_symbol_v at 18:57:18 on 27 Jun 2013. created by version v2.3 of generator *)



