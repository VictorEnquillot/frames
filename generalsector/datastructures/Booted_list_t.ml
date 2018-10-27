(** {3 A Booted List.} *)


(**

  l--l-...-l-b

*)

type ('l, 'b) booted_list = ('l list, 'b) Doublet_t.doublet
;;
