(** {3 A List_capped_booted.} *)

(**
   h * [l; l; ...; l] * b
*)

type ('h, 'l, 'b) list_capped_booted = ('h, 'l list, 'b) Triplet_t.triplet;;
