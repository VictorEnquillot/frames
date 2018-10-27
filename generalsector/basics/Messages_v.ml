(** {3 The Error messages.}  *)

let article_before_string str =
  let chr = String.get str 0 in
  match chr with
  | 'a' | 'e' | 'o' | 'u' | 'y' -> "an"
  | _ -> "a"
;;

