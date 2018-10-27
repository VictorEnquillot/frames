(** {3 A Booted Repeated List.} *)


(**
  [x; x; ...; x] * b
*)

type ('x, 'b) booted_repeated_list = ('x Repeated_list_t.repeated_list, 'b) Doublet_t.doublet
;;
(** It couples a repeated_list and an element

    TODO should be private.
*)
