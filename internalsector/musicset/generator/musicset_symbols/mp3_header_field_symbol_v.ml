
(** {3 The functionalities for a Symbol for a Mp3_header_field.} *)

let nam_cod = "mp3_header_field_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Mp3_header_field_symbol_t.Mp3_header_field_onebit_symbol sym_hf1 ->
      Mp3_header_field_onebit_symbol_v.name sym_hf1
  | Mp3_header_field_symbol_t.Mp3_header_field_twobits_symbol sym_hf2 ->
      Mp3_header_field_twobits_symbol_v.name sym_hf2
  | Mp3_header_field_symbol_t.Mp3_header_field_fourbits_symbol sym_hf4 ->
      Mp3_header_field_fourbits_symbol_v.name sym_hf4
  | Mp3_header_field_symbol_t.Mp3_header_field_elevenbits_symbol sym_hfe ->
      Mp3_header_field_elevenbits_symbol_v.name sym_hfe
;;


(** {6 Upgrading} *)


let mp3_header_field_symbol_of_mp3_header_field_onebit_symbol sym_hf1 = 
  Mp3_header_field_symbol_t.Mp3_header_field_onebit_symbol sym_hf1
;;

let mp3_header_field_symbol_of_version_symbol sym_ven = 
  let sym_hf1 = Mp3_header_field_onebit_symbol_v.mp3_header_field_onebit_symbol_of_version_symbol sym_ven in
    mp3_header_field_symbol_of_mp3_header_field_onebit_symbol sym_hf1
;;

let mp3_header_field_symbol_of_mp3_header_field_twobits_symbol sym_hf2 = 
  Mp3_header_field_symbol_t.Mp3_header_field_twobits_symbol sym_hf2
;;

let mp3_header_field_symbol_of_mp3_header_field_fourbits_symbol sym_hf4 = 
  Mp3_header_field_symbol_t.Mp3_header_field_fourbits_symbol sym_hf4
;;

let mp3_header_field_symbol_of_mp3_header_field_elevenbits_symbol sym_hfe = 
  Mp3_header_field_symbol_t.Mp3_header_field_elevenbits_symbol sym_hfe
;;


(** {6 Abbreviating} *)


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


(** {6 Making} *)


let make nam s =
  try mp3_header_field_symbol_of_mp3_header_field_onebit_symbol
      (Mp3_header_field_onebit_symbol_v.make nam s)
  with Failure "Not_Mp3_header_field_onebit_symbol:mp3_header_field_onebit_symbol_v:make" ->
  try mp3_header_field_symbol_of_mp3_header_field_twobits_symbol
      (Mp3_header_field_twobits_symbol_v.make nam s)
  with Failure "Not_Mp3_header_field_twobits_symbol:mp3_header_field_twobits_symbol_v:make" ->
  try mp3_header_field_symbol_of_mp3_header_field_fourbits_symbol
      (Mp3_header_field_fourbits_symbol_v.make nam s)
  with Failure "Not_Mp3_header_field_fourbits_symbol:mp3_header_field_fourbits_symbol_v:make" ->
  try mp3_header_field_symbol_of_mp3_header_field_elevenbits_symbol
      (Mp3_header_field_elevenbits_symbol_v.make nam s)
  with Failure "Not_Mp3_header_field_elevenbits_symbol:mp3_header_field_elevenbits_symbol_v:make" ->
    Error_messages_v.print_fatal_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Mp3_header_field subtype" nam s)
      "it does not exists"
      "Check file mp3_header_field_symbol_v.ml" 
;;


(** {6 Extracting} *)


let mp3_header_field_onebit_symbol_off_mp3_header_field_symbol = function
  | Mp3_header_field_symbol_t.Mp3_header_field_onebit_symbol sym_hf1 -> sym_hf1
  | sym_mhf -> Error_messages_v.print_fatal_error
      nam_cod "mp3_header_field_onebit_symbol_off_mp3_header_field_symbol"
      "Mp3_header_field_onebit_symbol"
      (name sym_mhf) "check"
;;

let version_symbol_off_mp3_header_field_symbol sym_mhf = 
  let sym_hf1 = mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf in 
    Mp3_header_field_onebit_symbol_v.version_symbol_off_mp3_header_field_onebit_symbol sym_hf1
;;

let mp3_header_field_twobits_symbol_off_mp3_header_field_symbol = function
  | Mp3_header_field_symbol_t.Mp3_header_field_twobits_symbol sym_hf2 -> sym_hf2
  | sym_mhf -> Error_messages_v.print_fatal_error
      nam_cod "mp3_header_field_twobits_symbol_off_mp3_header_field_symbol"
      "Mp3_header_field_twobits_symbol"
      (name sym_mhf) "check"
;;

let mp3_header_field_fourbits_symbol_off_mp3_header_field_symbol = function
  | Mp3_header_field_symbol_t.Mp3_header_field_fourbits_symbol sym_hf4 -> sym_hf4
  | sym_mhf -> Error_messages_v.print_fatal_error
      nam_cod "mp3_header_field_fourbits_symbol_off_mp3_header_field_symbol"
      "Mp3_header_field_fourbits_symbol"
      (name sym_mhf) "check"
;;

let mp3_header_field_elevenbits_symbol_off_mp3_header_field_symbol = function
  | Mp3_header_field_symbol_t.Mp3_header_field_elevenbits_symbol sym_hfe -> sym_hfe
  | sym_mhf -> Error_messages_v.print_fatal_error
      nam_cod "mp3_header_field_elevenbits_symbol_off_mp3_header_field_symbol"
      "Mp3_header_field_elevenbits_symbol"
      (name sym_mhf) "check"
;;


(** {6 Querying} *)


let is_mp3_header_field_onebit_symbol_off_mp3_header_field_symbol = function
  | Mp3_header_field_symbol_t.Mp3_header_field_onebit_symbol _ -> true
  | _ -> false
;;

let is_version_symbol_off_mp3_header_field_symbol sym_mhf =
  if not (is_mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf)
  then false
  else
    begin
     let sym_hf1 = mp3_header_field_onebit_symbol_off_mp3_header_field_symbol sym_mhf in 
     Mp3_header_field_onebit_symbol_v.is_version_symbol_off_mp3_header_field_onebit_symbol sym_hf1
    end
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



(** created by ./generator mp3_header_field implementation symbol at 17:43 6 Jun 2012. *)



