(** {3 A Symbol for a Bond.} *)

(** {6 Modules.} *)

 (* bond_covalent is a bare constructor no module can be defined *)
 (* bond_hydrogen is a bare constructor no module can be defined *)
 (* bond_ionic is a bare constructor no module can be defined *)

(** {6 Type.} *)

type bond_symbol =
  | Bond_covalent
  | Bond_hydrogen
  | Bond_ionic
;;

(** created by ./do_entitysum_symbol_t_ml.sh bond 12 January 2011. *)

