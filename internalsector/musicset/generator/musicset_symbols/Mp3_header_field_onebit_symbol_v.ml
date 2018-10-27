(** {3 Mp3_header_field_onebit_symbol_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Mp3_header_field_onebit_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name = function
  | Mp3_header_field_onebit_symbol_t.Version_symbol sym_ver ->
      Version_symbol_v.name sym_ver
  | Mp3_header_field_onebit_symbol_t.Error_protection -> "Error_protection"
  | Mp3_header_field_onebit_symbol_t.Pad_bit -> "Pad_bit"
  | Mp3_header_field_onebit_symbol_t.Intensity_stereo -> "Intensity_stereo"
  | Mp3_header_field_onebit_symbol_t.Ms_stereo -> "Ms_stereo"
  | Mp3_header_field_onebit_symbol_t.Private_bit -> "Private_bit"
  | Mp3_header_field_onebit_symbol_t.Copyright -> "Copyright"
  | Mp3_header_field_onebit_symbol_t.Original -> "Original"
;;


(** {6 Extracting_topson} *)

let version_symbol_off_mp3_header_field_onebit_symbol = function
  | Mp3_header_field_onebit_symbol_t.Version_symbol sym_ver -> sym_ver
  | sym_hf1 -> Error_messages_v.print_fatal_error
      nam_cod "version_symbol_off_mp3_header_field_onebit_symbol"
      "Version_symbol"
      (name sym_hf1) "check"
;;


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)

let is_version_symbol_off_mp3_header_field_onebit_symbol = function
  | Mp3_header_field_onebit_symbol_t.Version_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)

let mp3_header_field_onebit_symbol_of_version_symbol sym_ver = 
  Mp3_header_field_onebit_symbol_t.Version_symbol sym_ver
;;


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_topson} *)

let error_protection = Mp3_header_field_onebit_symbol_t.Error_protection;;

let pad_bit = Mp3_header_field_onebit_symbol_t.Pad_bit;;

let intensity_stereo = Mp3_header_field_onebit_symbol_t.Intensity_stereo;;

let ms_stereo = Mp3_header_field_onebit_symbol_t.Ms_stereo;;

let private_bit = Mp3_header_field_onebit_symbol_t.Private_bit;;

let copyright = Mp3_header_field_onebit_symbol_t.Copyright;;

let original = Mp3_header_field_onebit_symbol_t.Original;;


(** {6 Abbreviating_grandson} *)

let version_1 = mp3_header_field_onebit_symbol_of_version_symbol Version_symbol_v.version_1;;

let version_2 = mp3_header_field_onebit_symbol_of_version_symbol Version_symbol_v.version_2;;

let version_2_5 = mp3_header_field_onebit_symbol_of_version_symbol Version_symbol_v.version_2_5;;


(** {6 Making} *)

let make nam s =
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
  try mp3_header_field_onebit_symbol_of_version_symbol
      (Version_symbol_v.make nam s)
  with Failure "Not_Version_symbol:Version_symbol_v:make" ->
    failwith "Not_Mp3_header_field_onebit_symbol:Mp3_header_field_onebit_symbol_v:make"
;;


(** created by ./generator mp3_header_field_onebit implementation symbol at 9:23 14 Jul 2012. *)



