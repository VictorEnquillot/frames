(** {3 The Symbol for a Polypeptide_regular.} *)



(** {6 Aliasing} *)



(** {6 Typing} *)


type polypeptide_regular_symbol =
  | Frompdbid of string
;;
(** The String has two parts 
    The PdbId and the chain Id
    Ex.: nXXX_C
*)

(** created by ./generator polypeptide_regular implementation symbol at 10:37 31 Jan 2012. *)



