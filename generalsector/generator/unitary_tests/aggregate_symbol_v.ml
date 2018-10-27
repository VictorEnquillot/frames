(** {3 A Symbol for a Aggregate.} *)

let nam_cod = "aggregate_symbol_v.ml";;


(** {6 Modules.} *)

module Dbt_v = Doublet_v
module Ord_p = Ordinal_p

module Dbt_t = Doublet_t
module Ags_t = Aggregate_symbol_t



(** {6 Naming.} *)

let name smb_age =
  Dbt_v.name (Format.sprintf "%s") Ord_p.name smb_age
;;


(** {6 Printing.} *)

let print ppf smb_age =
  Dbt_v.print (Format.fprintf ppf "%s") Ord_p.print ppf smb_age
;;


(** {6 Extracting.} *)

let string_off_aggregate_symbol smb_age =
  Dbt_v.left_off_doublet smb_age
;;

let ordinal_off_aggregate_symbol smb_age =
  Dbt_v.right_off_doublet smb_age
;;


(** {6 Querying.} *)


(** {6 Upgrading.} *)



(** created by ./generator aggregate v symbol at 8:33 12 May 2011. *)



