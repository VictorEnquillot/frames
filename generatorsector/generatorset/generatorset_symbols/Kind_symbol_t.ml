(** {3 The Symbol for a Kind.}  *)

(** {6 Typing} *)

type kind_symbol = 
  | Kind_type             (* typ for symbol, formula snd value *)
  | Kind_type_private     (* tpr for symbol, formula snd value *)
  | Kind_content          (* con for formula and value *)
  | Kind_calculation      (* cal for value*)
  | Kind_description      (* des *)
;;
(** 
The kind of Entity database information 
Each category defines several Information Trees

Couples (category, kind) are well defined.
 
*)
