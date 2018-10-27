(** {3 The Formula for an Entity External Datastructure.}  *)

(** {6 Aliasing} *)

(** {6 Typing} *)

type entity_external_datastructure_formula =
  | Capped_list of string
  | Capped_tree of string
  | Couple_caml of string (* "*" *)
  | Doublet of string
  | Doublet_list of string
  | Doublet_tree of string
  | Duo of string
  | List_caml of string
  | List_frames of string
 (* | String_caml Not a datastructure *)
 (* | String_frames Not a datastructure *)
  | Singlet of string 
  | Tree of string
  | Tree_footed_capped of string
  | Tree_leafed of string
  | Tree_leafed_capped of string
  | Trio of string
  | Triplet of string
  | Triplet_list of string
;;
