(** {6 Typing} *)

type entity_external_tool_formula =  
  | Error_messages of string list
  | Messages of string list
  | Utils of string list
;;
