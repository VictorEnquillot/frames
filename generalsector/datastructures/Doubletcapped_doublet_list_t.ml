(** {3 A Doubletcapped Doublet List.} *)


(**
   ('c, 'i) * [('e, 'i); ...; ('e, 'i)]
*)

type ('c, 'e, 'i) doubletcapped_doublet_list = (('c, 'i) Doublet_t.doublet, ('e, 'i) Doublet_list_t.doublet_list) Doublet_t.doublet
;;
(**
   Used as doubletcapped indexed list when 'i is an index
*)
