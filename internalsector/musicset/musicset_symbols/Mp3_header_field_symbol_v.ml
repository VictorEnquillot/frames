(** {3 Mp3_header_field_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SMUS:Mp3_header_field_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Mp3_header_field_symbol_t.Mp3_header_field_onebit_symbol sym_mf1 ->
    Mp3_header_field_onebit_symbol_v.name sym_mf1
  | Mp3_header_field_symbol_t.Mp3_header_field_twobits_symbol sym_mf2 ->
    Mp3_header_field_twobits_symbol_v.name sym_mf2
  | Mp3_header_field_symbol_t.Mp3_header_field_fourbits_symbol sym_mf4 ->
    Mp3_header_field_fourbits_symbol_v.name sym_mf4
  | Mp3_header_field_symbol_t.Mp3_header_field_elevenbits_symbol sym_mfe ->
    Mp3_header_field_elevenbits_symbol_v.name sym_mfe
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Mp3_header_field_symbol_t.Mp3_header_field_onebit_symbol sym_mf1 ->
  Mp3_header_field_onebit_symbol_v.string_off sym_mf1
  | Mp3_header_field_symbol_t.Mp3_header_field_twobits_symbol sym_mf2 ->
  Mp3_header_field_twobits_symbol_v.string_off sym_mf2
  | Mp3_header_field_symbol_t.Mp3_header_field_fourbits_symbol sym_mf4 ->
  Mp3_header_field_fourbits_symbol_v.string_off sym_mf4
  | Mp3_header_field_symbol_t.Mp3_header_field_elevenbits_symbol sym_mfe ->
  Mp3_header_field_elevenbits_symbol_v.string_off sym_mfe
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_mhf =
  Format.sprintf "Mp3_header_field_symbol_t.%s" (String.capitalize (name sym_mhf))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_mhf =
  Format.sprintf "%s \"%s\"" (longname sym_mhf) (string_off sym_mhf)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let mp3_header_field_onebit_symbol_off_mp3_header_field_symbol = function
  | Mp3_header_field_symbol_t.Mp3_header_field_onebit_symbol sym_mf1 -> sym_mf1
  | sym_mhf -> Error_messages_v.print_fatal_error
      nam_cod "mp3_header_field_onebit_symbol_off_mp3_header_field_symbol"
      "Mp3_header_field_onebit_symbol"
      (name sym_mhf) "check"
;;

let mp3_header_field_twobits_symbol_off_mp3_header_field_symbol = function
  | Mp3_header_field_symbol_t.Mp3_header_field_twobits_symbol sym_mf2 -> sym_mf2
  | sym_mhf -> Error_messages_v.print_fatal_error
      nam_cod "mp3_header_field_twobits_symbol_off_mp3_header_field_symbol"
      "Mp3_header_field_twobits_symbol"
      (name sym_mhf) "check"
;;

let mp3_header_field_fourbits_symbol_off_mp3_header_field_symbol = function
  | Mp3_header_field_symbol_t.Mp3_header_field_fourbits_symbol sym_mf4 -> sym_mf4
  | sym_mhf -> Error_messages_v.print_fatal_error
      nam_cod "mp3_header_field_fourbits_symbol_off_mp3_header_field_symbol"
      "Mp3_header_field_fourbits_symbol"
      (name sym_mhf) "check"
;;

let mp3_header_field_elevenbits_symbol_off_mp3_header_field_symbol = function
  | Mp3_header_field_symbol_t.Mp3_header_field_elevenbits_symbol sym_mfe -> sym_mfe
  | sym_mhf -> Error_messages_v.print_fatal_error
      nam_cod "mp3_header_field_elevenbits_symbol_off_mp3_header_field_symbol"
      "Mp3_header_field_elevenbits_symbol"
      (name sym_mhf) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let version_symbol_off_mp3_header_field_symbol sym_mhf = 
  let sym_mf1 = mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf in
    Mp3_header_field_onebit_symbol_v.version_symbol_off_mp3_header_field_onebit_symbol sym_mf1
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_mp3_header_field_onebit_symbol_off_mp3_header_field_symbol = function
  | Mp3_header_field_symbol_t.Mp3_header_field_onebit_symbol _ -> true
  | _ -> false
;;

let is_mp3_header_field_twobits_symbol_off_mp3_header_field_symbol = function
  | Mp3_header_field_symbol_t.Mp3_header_field_twobits_symbol _ -> true
  | _ -> false
;;

let is_mp3_header_field_fourbits_symbol_off_mp3_header_field_symbol = function
  | Mp3_header_field_symbol_t.Mp3_header_field_fourbits_symbol _ -> true
  | _ -> false
;;

let is_mp3_header_field_elevenbits_symbol_off_mp3_header_field_symbol = function
  | Mp3_header_field_symbol_t.Mp3_header_field_elevenbits_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_version_1 sym_mhf =
  if not (is_mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf)
  then false
  else
    begin
      let sym_mf1 = mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf in
      Mp3_header_field_onebit_symbol_v.is_version_1 sym_mf1
    end
;;

let is_version_2 sym_mhf =
  if not (is_mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf)
  then false
  else
    begin
      let sym_mf1 = mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf in
      Mp3_header_field_onebit_symbol_v.is_version_2 sym_mf1
    end
;;

let is_version_2_5 sym_mhf =
  if not (is_mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf)
  then false
  else
    begin
      let sym_mf1 = mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf in
      Mp3_header_field_onebit_symbol_v.is_version_2_5 sym_mf1
    end
;;

let is_error_protection sym_mhf =
  if not (is_mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf)
  then false
  else
    begin
      let sym_mf1 = mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf in
      Mp3_header_field_onebit_symbol_v.is_error_protection sym_mf1
    end
;;

let is_pad_bit sym_mhf =
  if not (is_mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf)
  then false
  else
    begin
      let sym_mf1 = mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf in
      Mp3_header_field_onebit_symbol_v.is_pad_bit sym_mf1
    end
;;

let is_intensity_stereo sym_mhf =
  if not (is_mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf)
  then false
  else
    begin
      let sym_mf1 = mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf in
      Mp3_header_field_onebit_symbol_v.is_intensity_stereo sym_mf1
    end
;;

let is_ms_stereo sym_mhf =
  if not (is_mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf)
  then false
  else
    begin
      let sym_mf1 = mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf in
      Mp3_header_field_onebit_symbol_v.is_ms_stereo sym_mf1
    end
;;

let is_private_bit sym_mhf =
  if not (is_mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf)
  then false
  else
    begin
      let sym_mf1 = mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf in
      Mp3_header_field_onebit_symbol_v.is_private_bit sym_mf1
    end
;;

let is_copyright sym_mhf =
  if not (is_mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf)
  then false
  else
    begin
      let sym_mf1 = mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf in
      Mp3_header_field_onebit_symbol_v.is_copyright sym_mf1
    end
;;

let is_original sym_mhf =
  if not (is_mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf)
  then false
  else
    begin
      let sym_mf1 = mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf in
      Mp3_header_field_onebit_symbol_v.is_original sym_mf1
    end
;;

let is_layer sym_mhf =
  if not (is_mp3_header_field_twobits_symbol_off_mp3_header_field_symbol sym_mhf)
  then false
  else
    begin
      let sym_mf2 = mp3_header_field_twobits_symbol_off_mp3_header_field_symbol sym_mhf in
      Mp3_header_field_twobits_symbol_v.is_layer sym_mf2
    end
;;

let is_frequency sym_mhf =
  if not (is_mp3_header_field_twobits_symbol_off_mp3_header_field_symbol sym_mhf)
  then false
  else
    begin
      let sym_mf2 = mp3_header_field_twobits_symbol_off_mp3_header_field_symbol sym_mhf in
      Mp3_header_field_twobits_symbol_v.is_frequency sym_mf2
    end
;;

let is_mode sym_mhf =
  if not (is_mp3_header_field_twobits_symbol_off_mp3_header_field_symbol sym_mhf)
  then false
  else
    begin
      let sym_mf2 = mp3_header_field_twobits_symbol_off_mp3_header_field_symbol sym_mhf in
      Mp3_header_field_twobits_symbol_v.is_mode sym_mf2
    end
;;

let is_mode_extension sym_mhf =
  if not (is_mp3_header_field_twobits_symbol_off_mp3_header_field_symbol sym_mhf)
  then false
  else
    begin
      let sym_mf2 = mp3_header_field_twobits_symbol_off_mp3_header_field_symbol sym_mhf in
      Mp3_header_field_twobits_symbol_v.is_mode_extension sym_mf2
    end
;;

let is_emphasis sym_mhf =
  if not (is_mp3_header_field_twobits_symbol_off_mp3_header_field_symbol sym_mhf)
  then false
  else
    begin
      let sym_mf2 = mp3_header_field_twobits_symbol_off_mp3_header_field_symbol sym_mhf in
      Mp3_header_field_twobits_symbol_v.is_emphasis sym_mf2
    end
;;

let is_bit_rate sym_mhf =
  if not (is_mp3_header_field_fourbits_symbol_off_mp3_header_field_symbol sym_mhf)
  then false
  else
    begin
      let sym_mf4 = mp3_header_field_fourbits_symbol_off_mp3_header_field_symbol sym_mhf in
      Mp3_header_field_fourbits_symbol_v.is_bit_rate sym_mf4
    end
;;

let is_sync_word sym_mhf =
  if not (is_mp3_header_field_elevenbits_symbol_off_mp3_header_field_symbol sym_mhf)
  then false
  else
    begin
      let sym_mfe = mp3_header_field_elevenbits_symbol_off_mp3_header_field_symbol sym_mhf in
      Mp3_header_field_elevenbits_symbol_v.is_sync_word sym_mfe
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_version_symbol_off_mp3_header_field_symbol sym_mhf =
  if not (is_mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf)
  then false
  else
    begin
  let sym_mf1 = mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf in
  Mp3_header_field_onebit_symbol_v.is_version_symbol_off_mp3_header_field_onebit_symbol sym_mf1
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let mp3_header_field_symbol_of_mp3_header_field_onebit_symbol sym_mf1 = 
  Mp3_header_field_symbol_t.Mp3_header_field_onebit_symbol sym_mf1
;;

let mp3_header_field_symbol_of_mp3_header_field_twobits_symbol sym_mf2 = 
  Mp3_header_field_symbol_t.Mp3_header_field_twobits_symbol sym_mf2
;;

let mp3_header_field_symbol_of_mp3_header_field_fourbits_symbol sym_mf4 = 
  Mp3_header_field_symbol_t.Mp3_header_field_fourbits_symbol sym_mf4
;;

let mp3_header_field_symbol_of_mp3_header_field_elevenbits_symbol sym_mfe = 
  Mp3_header_field_symbol_t.Mp3_header_field_elevenbits_symbol sym_mfe
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let mp3_header_field_symbol_of_version_symbol sym_ver = 
  let sym_mf1 = Mp3_header_field_onebit_symbol_v.mp3_header_field_onebit_symbol_of_version_symbol sym_ver in
    mp3_header_field_symbol_of_mp3_header_field_onebit_symbol sym_mf1
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let version_1 = mp3_header_field_symbol_of_mp3_header_field_onebit_symbol Mp3_header_field_onebit_symbol_v.version_1;;

let version_2 = mp3_header_field_symbol_of_mp3_header_field_onebit_symbol Mp3_header_field_onebit_symbol_v.version_2;;

let version_2_5 = mp3_header_field_symbol_of_mp3_header_field_onebit_symbol Mp3_header_field_onebit_symbol_v.version_2_5;;

let error_protection = mp3_header_field_symbol_of_mp3_header_field_onebit_symbol Mp3_header_field_onebit_symbol_v.error_protection;;

let pad_bit = mp3_header_field_symbol_of_mp3_header_field_onebit_symbol Mp3_header_field_onebit_symbol_v.pad_bit;;

let intensity_stereo = mp3_header_field_symbol_of_mp3_header_field_onebit_symbol Mp3_header_field_onebit_symbol_v.intensity_stereo;;

let ms_stereo = mp3_header_field_symbol_of_mp3_header_field_onebit_symbol Mp3_header_field_onebit_symbol_v.ms_stereo;;

let private_bit = mp3_header_field_symbol_of_mp3_header_field_onebit_symbol Mp3_header_field_onebit_symbol_v.private_bit;;

let copyright = mp3_header_field_symbol_of_mp3_header_field_onebit_symbol Mp3_header_field_onebit_symbol_v.copyright;;

let original = mp3_header_field_symbol_of_mp3_header_field_onebit_symbol Mp3_header_field_onebit_symbol_v.original;;

let layer = mp3_header_field_symbol_of_mp3_header_field_twobits_symbol Mp3_header_field_twobits_symbol_v.layer;;

let frequency = mp3_header_field_symbol_of_mp3_header_field_twobits_symbol Mp3_header_field_twobits_symbol_v.frequency;;

let mode = mp3_header_field_symbol_of_mp3_header_field_twobits_symbol Mp3_header_field_twobits_symbol_v.mode;;

let mode_extension = mp3_header_field_symbol_of_mp3_header_field_twobits_symbol Mp3_header_field_twobits_symbol_v.mode_extension;;

let emphasis = mp3_header_field_symbol_of_mp3_header_field_twobits_symbol Mp3_header_field_twobits_symbol_v.emphasis;;

let bit_rate = mp3_header_field_symbol_of_mp3_header_field_fourbits_symbol Mp3_header_field_fourbits_symbol_v.bit_rate;;

let sync_word = mp3_header_field_symbol_of_mp3_header_field_elevenbits_symbol Mp3_header_field_elevenbits_symbol_v.sync_word;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Mp3_header_field_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Mp3_header_field_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try mp3_header_field_symbol_of_mp3_header_field_onebit_symbol
      (Mp3_header_field_onebit_symbol_v.make nam s)
  with Failure "Not_a_mp3_header_field_onebit_symbol:Mp3_header_field_onebit_symbol_v.ml:make" ->
  try mp3_header_field_symbol_of_mp3_header_field_twobits_symbol
      (Mp3_header_field_twobits_symbol_v.make nam s)
  with Failure "Not_a_mp3_header_field_twobits_symbol:Mp3_header_field_twobits_symbol_v.ml:make" ->
  try mp3_header_field_symbol_of_mp3_header_field_fourbits_symbol
      (Mp3_header_field_fourbits_symbol_v.make nam s)
  with Failure "Not_a_mp3_header_field_fourbits_symbol:Mp3_header_field_fourbits_symbol_v.ml:make" ->
  try mp3_header_field_symbol_of_mp3_header_field_elevenbits_symbol
      (Mp3_header_field_elevenbits_symbol_v.make nam s)
  with Failure "Not_a_mp3_header_field_elevenbits_symbol:Mp3_header_field_elevenbits_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Mp3_header_field_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Mp3_header_field_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Mp3_header_field_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Mp3_header_field_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Mp3_header_field subtype" nam s)
      "it does not exists"
      "Check file Mp3_header_field_symbol_v.ml"
    in
    failwith "Not_a_mp3_header_field_symbol:Mp3_header_field_symbol_v.ml:make"
;;


(** Mp3_header_field_symbol_v at 18:57:19 on 27 Jun 2013. created by version v2.3 of generator *)



