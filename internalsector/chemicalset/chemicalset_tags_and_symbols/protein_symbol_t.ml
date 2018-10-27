(** {3 A Symbol for a Protein.} *)

(** {6 Modules.} *)

 (* Acg is a bare constructor no module can be defined *)
 (* Adh is a bare constructor no module can be defined *)
 (* Agagag is a bare constructor no module can be defined *)
 (* Agc is a bare constructor no module can be defined *)
 (* Agg is a bare constructor no module can be defined *)
 (* Agp is a bare constructor no module can be defined *)
 (* Gac is a bare constructor no module can be defined *)
 (* Gap is a bare constructor no module can be defined *)
 (* Ggg is a bare constructor no module can be defined *)
 (* Ggacgg is a bare constructor no module can be defined *)
 (* Ggaggg is a bare constructor no module can be defined *)
 (* Gagaga is a bare constructor no module can be defined *)
 (* Mhb is a bare constructor no module can be defined *)
 (* Pac is a bare constructor no module can be defined *)
 (* Pag is a bare constructor no module can be defined *)
 (* Pgk is a bare constructor no module can be defined *)
 (* Pti is a bare constructor no module can be defined *)
 (* Sac is a bare constructor no module can be defined *)
 (* Tab is a bare constructor no module can be defined *)
 (* Try is a bare constructor no module can be defined *)
 (* With a String constructor no module can be defined *)

(** {6 Type.} *)

type protein_symbol =
  | Acg
  | Adh
  | Agagag
  | Agc
  | Agg
  | Agp
  | Gac
  | Gap
  | Ggg
  | Ggacgg
  | Ggaggg
  | Gagaga
  | Mhb
  | Pac
  | Pag
  | Pgk
  | Pti
  | Sac
  | Tab
  | Try
  | String of string
;;

(** created by ./do_entitysum_symbol_t_ml.sh protein 12 January 2011. *)

