(** {3 The Designator functionalities for a Xfp_expanded.} *)

let mod_nam = "Xfp_expanded_symbol_v";;

(** {6 Modules.} *)

module Rfs_v = Radial_fonction_shape_v
module Xss_t = Xfp_expanded_symbol_t

(** {6 Making.} *)

let make rfs = 
  rfs
;;

let read ib =
  Utils_v.not_yet_implemented mod_nam "Xfp_expanded_symbol_v.read"
;;

(** {6 Extracting.} *)

let radial_fonction_shape_off_xfp_expanded_symbol smb_xfs =
  smb_xfs
;;

(** {6 Converting.} *)

let print = Rfs_v.print;;

let name = Rfs_v.name;;
