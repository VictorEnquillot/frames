(** {3 Functionalities for Type mp3_tag_one_bit_label} *)

let nam_mod = "mp3_tag_one_bit_label_v.ml";;

let make = function
  | "version" -> Mp3_tag_one_bit_label_t.Version
  | "error_protection" -> Mp3_tag_one_bit_label_t.Error_protection
  | "pad_bit" -> Mp3_tag_one_bit_label_t.Pad_bit
  | "intensity_stereo" -> Mp3_tag_one_bit_label_t.Intensity_stereo
  | "ms_stereo" -> Mp3_tag_one_bit_label_t.MS_stereo
  | "private_bit" -> Mp3_tag_one_bit_label_t.Private_bit
  | "copy" -> Mp3_tag_one_bit_label_t.Copy
  | "original" -> Mp3_tag_one_bit_label_t.Original
  | _ -> failwith "make"
;;

