(** {3 A Symbol for a Box.} *)


(** {6 Modules.} *)

module Prs_t = Protein_symbol_t


(** {6 Typing.} *)

type box_symbol =
    string
  | Protein_symbol of Prs_t.protein_symbol
;;


(** created by ./generator box t symbol at 19:13 25 Apr 2011. *)



