(** {3 A Symbol for a Cluster.} *)

let nam_cod = "cluster_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module Ord_p = Ordinal_p


(** {6 Naming.} *)

let name smb_clr =
  | Dbt_v.name (Format.sprintf "%s") Ord_p.name smb_clr
;;

let name smb_clr =
  | Dbt_v.name (Format.sprintf "%s") Ord_p.name smb_clr
;;


(** {6 Printing.} *)

let print ppf smb_clr =
  | Dbt_v.print (Format.fprintf ppf "%s") Ord_p.print ppf smb_clr
;;

let print ppf smb_clr =
  | Dbt_v.print (Format.fprintf ppf "%s") Ord_p.print ppf smb_clr
;;


(** {6 Extracting.} *)

let string_symbol_off_cluster_symbol smb_clr =
  Dbt_v.left_off_doublet smb_clr
;;

let ordinal_symbol_off_cluster_symbol smb_clr =
  Dbt_v.right_off_doublet smb_clr
;;


(** {6 Querying.} *)


(** {6 Upgrading.} *)



(** created by ./generator cluster v symbol at 11:8 26 Apr 2011. *)



