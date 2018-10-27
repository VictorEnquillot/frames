(** {3 A Capped Doublet List.} *)


(**
   ('c, [('a, 'b); ...; ('a, 'b)])
*)

type ('c, 'a, 'b) capped_doublet_list = ('c, ('a, 'b) Doublet_list_t.doublet_list) Doublet_t.doublet
;;
(**
   Used as capped indexed list when 'b is an index
*)
