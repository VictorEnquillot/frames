(** {3 A Register.} *)

type ('k, 'v) register = ('k, 'v) Hashtbl.t
;;
(** A Register is a Hash table *)
