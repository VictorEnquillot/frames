(** {3 The Protonation_state State for polar chemical groups and Sidechains.} *)

(* *** TODO Improve ionic strength, ph etc ... to define the
  protonation state of some polar radicals *)

type protonation_state =
  | Absent  (* Absent *)
  | Neutral
  | Plus 
  | Minus
  | Zwitterion
  | Protonated
  | Deprotonated
  | OD   (* Asp de-Protonated on OD2 *)
  | ODH  (* Asp Protonated on OD2 *)
  | OE   (* Glu de-Protonated on OE2 *)
  | OEH  (* Glu Protonated on OE2 *)
  | NDE  (* His de-Protonated on ND1 and NE2 *)
  | NDEH (* His Protonated on ND1 and NE2 *)
  | NDH  (* His Protonated on ND1 and de-Protonated on NE2 *)
  | NE   (* Arg de-Protonated on NE *)
  | NEH  (* Arg, His Protonated on NE2 and His de-Protonated on ND1 *)
  | NZ   (* Lys de-Protonated on NZ *)
  | NZH  (* Lys Protonated on NZ *)
;;

