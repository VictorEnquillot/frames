(** {3 An extended_by type.} *)


type ('x, 'b) extended_by = 
  | Basic of 'b
  | Extended_by of ('x list, 'b) Doublet_t.doublet
;;
(** This left extend type 'b (basic type) by any times type 'x (extension type) *)
