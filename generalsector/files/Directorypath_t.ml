(** {3 A Directory Path.} *)


type directorypath = 
  | Absolute of directoryname_list
  | Relative of directoryname_list

and directoryname_list = Directoryname_t.directoryname list

and directoryhead =
(*  | Dotdotslash of directoryhead  (* ../../xxxx *) *)
  | Dotslash
  | Slash
;;
(** Relative is "./xxxx/xxxx/" or "../xxxx/xxxx/" or "../../xxxx/xxxx/"
    Absolute is "/xxxx/xxxx/". *)
