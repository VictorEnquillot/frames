(** {3 The definition of trail.} *)

(** {6 Aliasing} *)


(** {6 Typing} *)

type trail = (string, string) Doublet_list_t.doublet_list
(** 
A trail  is a kind of path for Database entities
No need of Index here because the Names are unique.

Example :
 [("entity", "atom"); ("domainset", "chemicalset")]

*) 
