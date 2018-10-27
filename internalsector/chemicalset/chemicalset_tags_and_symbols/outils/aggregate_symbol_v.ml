(** {3 A Symbol for a Aggregate.} *)

let nam_cod = "aggregate_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module Ord_p = Ordinal_p


(** {6 Naming.} *)

let name smb_age =
  | Dbt_v.name (Format.sprintf "%s") Ord_p.name smb_age
;;

let name smb_age =
  | Dbt_v.name (Format.sprintf "%s") Ord_p.name smb_age
;;


(** {6 Printing.} *)

let print ppf smb_age =
  | Dbt_v.print (Format.fprintf ppf "%s") Ord_p.print ppf smb_age
;;

let print ppf smb_age =
  | Dbt_v.print (Format.fprintf ppf "%s") Ord_p.print ppf smb_age
;;


(** {6 Extracting.} *)

let string_symbol_off_aggregate_symbol smb_age =
  Dbt_v.left_off_doublet smb_age
;;

let ordinal_symbol_off_aggregate_symbol smb_age =
  Dbt_v.right_off_doublet smb_age
;;


(** {6 Querying.} *)


(** {6 Upgrading.} *)



(** created by ./generator aggregate v symbol at 11:8 26 Apr 2011. *)



