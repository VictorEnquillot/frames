
(** {3 Functionalities for Type id3v2_frame_specification_symbol} *)

let nam_mod = "id3v2_frame_specification_symbol_v.ml";;

let make str =
  let stl = String.lowercase str in
  match stl with
  | "layer" -> Id3v2_frame_specification_symbol_t.Layer
  | "mode" -> Id3v2_frame_specification_symbol_t.Mode
  | "frequency" -> Id3v2_frame_specification_symbol_t.Frequency
  | "emphasis" -> Id3v2_frame_specification_symbol_t.Emphasis
  | _ -> failwith "make"
;;

