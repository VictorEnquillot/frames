(** {3 A Symbol for a Polyproline.} *)

let nam_cod = "polyproline_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module Ord_p = Ordinal_p


(** {6 Naming.} *)

let name smb_ppn =
  | Dbt_v.name (Format.sprintf "%s") Ord_p.name smb_ppn
;;

let name smb_ppn =
  | Dbt_v.name (Format.sprintf "%s") Ord_p.name smb_ppn
;;


(** {6 Printing.} *)

let print ppf smb_ppn =
  | Dbt_v.print (Format.fprintf ppf "%s") Ord_p.print ppf smb_ppn
;;

let print ppf smb_ppn =
  | Dbt_v.print (Format.fprintf ppf "%s") Ord_p.print ppf smb_ppn
;;


(** {6 Extracting.} *)

let string_symbol_off_polyproline_symbol smb_ppn =
  Dbt_v.left_off_doublet smb_ppn
;;

let ordinal_symbol_off_polyproline_symbol smb_ppn =
  Dbt_v.right_off_doublet smb_ppn
;;


(** {6 Querying.} *)


(** {6 Upgrading.} *)



(** created by ./generator polyproline v symbol at 11:8 26 Apr 2011. *)



