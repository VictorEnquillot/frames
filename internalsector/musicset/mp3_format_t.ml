(** {3 Type for a Mp3 Tag} *)

(* http://en.wikipedia.org/wiki/ID3 *)

type mp3_format =
  | ID3v1 
  | ID3v2
  | APEv1
  | APEv2
;;
