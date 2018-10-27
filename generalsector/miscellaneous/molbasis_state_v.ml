(** A State functionalities for a Molbasis_state Hsbf doublet. *)

let nam_mod = "Molbasis_state_v";;

(** {6 Modules.} *)

module Cpl_v = Doublet_v
module Cst_v = Chemical_state_v
module Fst_v = Functional_state_v

(** {6 Making.} *)

(** {6 Extracting.} *)

let chemical_state_off_molbasis_state mbs =
  Cpl_v.left_off_doublet mbs
;;

let functional_state_off_molbasis_state mbs =
  Cpl_v.right_off_doublet mbs
;;

(** {6 Converting.} *)

let print ppf mbs =
    Cpl_v.print Cst_v.print Fst_v.print ppf mbs 
;;

let name mbs =
    Cpl_v.name Cst_v.name Fst_v.name mbs 
;;



