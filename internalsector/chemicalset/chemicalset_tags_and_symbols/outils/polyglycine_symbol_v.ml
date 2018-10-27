(** {3 A Symbol for a Polyglycine.} *)

let nam_cod = "polyglycine_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module Ord_p = Ordinal_p


(** {6 Naming.} *)

let name smb_pgn =
  | Dbt_v.name (Format.sprintf "%s") Ord_p.name smb_pgn
;;

let name smb_pgn =
  | Dbt_v.name (Format.sprintf "%s") Ord_p.name smb_pgn
;;


(** {6 Printing.} *)

let print ppf smb_pgn =
  | Dbt_v.print (Format.fprintf ppf "%s") Ord_p.print ppf smb_pgn
;;

let print ppf smb_pgn =
  | Dbt_v.print (Format.fprintf ppf "%s") Ord_p.print ppf smb_pgn
;;


(** {6 Extracting.} *)

let string_symbol_off_polyglycine_symbol smb_pgn =
  Dbt_v.left_off_doublet smb_pgn
;;

let ordinal_symbol_off_polyglycine_symbol smb_pgn =
  Dbt_v.right_off_doublet smb_pgn
;;


(** {6 Querying.} *)


(** {6 Upgrading.} *)



(** created by ./generator polyglycine v symbol at 11:8 26 Apr 2011. *)



