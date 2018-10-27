(** {3 The Symbol for an Entity External Tool.}  *)

(** {6 Aliasing} *)

(** {6 Typing} *)

type entity_external_tool_symbol =  
  | Error_messages
  | Messages
  | Utils
;;
(** 
An Entity External Tool is reduced to a Module containing a series of 
Library functions implemented in a sub-directory of the ../frames/general/ 
directory as two Camlfiles. 
  (_v.ml and _v.mli) 
not corresponding to type.
*)
