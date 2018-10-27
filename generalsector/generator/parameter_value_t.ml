(** {3 The Value for a Parameter.}  *)

module Fln_t = Filename_p

(** {6 Typing.} *)

type parameter_value = 
  | Filename_palue of Fln_t.filename
;;
