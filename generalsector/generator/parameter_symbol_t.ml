(** {3 The Symbol for a Parameter.}  *)

(** {6 Typing.} *)

type parameter_symbol = 
  | File_symbol of file_symbol

and file_symbol =
  | Module_scope
  | Entity_external_n_codefile_list
;;

