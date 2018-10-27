
(** {3 The functionalities for a Symbol for a Mp3_header_field_onebit.} *)

let nam_cod = "mp3_header_field_onebit_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Mp3_header_field_onebit_symbol_t.Version_symbol sym_ven ->
      Version_symbol_v.name sym_ven
  | Mp3_header_field_onebit_symbol_t.Error_protection -> "Error_protection"
  | Mp3_header_field_onebit_symbol_t.Pad_bit -> "Pad_bit"
  | Mp3_header_field_onebit_symbol_t.Intensity_stereo -> "Intensity_stereo"
  | Mp3_header_field_onebit_symbol_t.Ms_stereo -> "Ms_stereo"
  | Mp3_header_field_onebit_symbol_t.Private_bit -> "Private_bit"
  | Mp3_header_field_onebit_symbol_t.Copyright -> "Copyright"
  | Mp3_header_field_onebit_symbol_t.Original -> "Original"
;;


(** {6 Upgrading} *)


let mp3_header_field_onebit_symbol_of_version_symbol sym_ven = 
  Mp3_header_field_onebit_symbol_t.Version_symbol sym_ven
;;


(** {6 Abbreviating} *)


let version_1 = mp3_header_field_onebit_symbol_of_version_symbol Version_symbol_v.version_1;;

let version_2 = mp3_header_field_onebit_symbol_of_version_symbol Version_symbol_v.version_2;;

let version_2_5 = mp3_header_field_onebit_symbol_of_version_symbol Version_symbol_v.version_2_5;;

let error_protection = Mp3_header_field_onebit_symbol_t.Error_protection;;

let pad_bit = Mp3_header_field_onebit_symbol_t.Pad_bit;;

let intensity_stereo = Mp3_header_field_onebit_symbol_t.Intensity_stereo;;

let ms_stereo = Mp3_header_field_onebit_symbol_t.Ms_stereo;;

let private_bit = Mp3_header_field_onebit_symbol_t.Private_bit;;

let copyright = Mp3_header_field_onebit_symbol_t.Copyright;;

let original = Mp3_header_field_onebit_symbol_t.Original;;


(** {6 Making} *)


let make nam s =
  match String.capitalize nam with
  | "Error_protection" -> error_protection
  | "Pad_bit" -> pad_bit
  | "Intensity_stereo" -> intensity_stereo
  | "Ms_stereo" -> ms_stereo
  | "Private_bit" -> private_bit
  | "Copyright" -> copyright
  | "Original" -> original
  | _ ->
  try mp3_header_field_onebit_symbol_of_version_symbol
      (Version_symbol_v.make nam s)
  with Failure "Not_Version_symbol:version_symbol_v:make" ->
    failwith "Not_Mp3_header_field_onebit_symbol:mp3_header_field_onebit_symbol_v:make"
;;


(** {6 Extracting} *)


let version_symbol_off_mp3_header_field_onebit_symbol = function
  | Mp3_header_field_onebit_symbol_t.Version_symbol sym_ven -> sym_ven
  | sym_hf1 -> Error_messages_v.print_fatal_error
      nam_cod "version_symbol_off_mp3_header_field_onebit_symbol"
      "Version_symbol"
      (name sym_hf1) "check"
;;


(** {6 Querying} *)


let is_version_symbol_off_mp3_header_field_onebit_symbol = function
  | Mp3_header_field_onebit_symbol_t.Version_symbol _ -> true
  | _ -> false
;;



(** created by ./generator mp3_header_field_onebit implementation symbol at 17:43 6 Jun 2012. *)



