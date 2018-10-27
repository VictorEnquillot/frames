(** {3 A Tag functionalities for Ml_symmetry_cartesian.} *)

let mod_nam = "Ml_symmetry_cartesian_tag_v";;

(** {6 Modules.} *)

module Mci_v = Ml_symmetry_cartesian_index_v
module Mcs_v = Ml_symmetry_cartesian_symbol_v
module McS_v = Ml_symmetry_cartesian_state_v

(** {6 Making.} *)

let make = Tag_v.make;;

(** {6 Converting.} *)

let print = 
  Tag_v.print Mcs_v.print McS_v.print Mci_v.print 
;;

let name = 
  Tag_v.name Mcs_v.name McS_v.name Mci_v.name 
;;
