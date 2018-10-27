(** {3 Functionalities for a Type for Mp3 tag} *)

(* http://en.wikipedia.org/wiki/MP3 *)

let make str =
  let stl = String.lowercase str in
  match stl with
  | "id3v1" -> Mp3_format_t.ID3v1
  | "id3v2" -> Mp3_format_t.ID3v2
  | "apev1" -> Mp3_format_t.APEv1
  | "apev2" -> Mp3_format_t.APEv2
  | _ -> failwith "Not_mp3_format:mp3_format_v.ml:make"
;;

