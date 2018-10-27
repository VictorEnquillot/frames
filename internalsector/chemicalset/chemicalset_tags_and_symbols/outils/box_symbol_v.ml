(** {3 A Symbol for a Box.} *)

let nam_cod = "box_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module Prs_v = Protein_symbol_v


let name = function
  | Bxs_v str ->
      .name str
  | Bxs_v smb_prn ->
      Prs_v.name smb_prn
;;


let print ppf = function
  | Bxs_v str ->
      .print ppf str
  | Bxs_v smb_prn ->
      Prs_v.print ppf smb_prn
;;


(** {6 Extracting.} *)

let protein_symbol_off_box_symbol = function
  | Bxs_v smb_prn -> smb_prn
  | s -> Erm_v.print_fatal_error nam_cod
     "protein_symbol_off_box_symbol"
     "Protein_symbol"
     (name s)
    "check"
;;


(** {6 Querying.} *)

let is_protein_symbol_off_box_symbol = function
  | Box_symbol_t.Protein_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading.} *)


let box_symbol_of_protein_symbol smb_prn =
Bxs_v.protein_symbol smb_prn
;;

let protein_symbol_of_protein_symbol smb_prn =
Prs_v.protein_symbol smb_prn
;;

let protein_symbol_of_protein_symbol smb_prn =
Prs_v.protein_symbol smb_prn
;;

let protein_symbol_of_protein_symbol smb_prn =
Prs_v.protein_symbol smb_prn
;;

let protein_symbol_of_protein_symbol smb_prn =
Prs_v.protein_symbol smb_prn
;;

let protein_symbol_of_protein_symbol smb_prn =
Prs_v.protein_symbol smb_prn
;;

let protein_symbol_of_protein_symbol smb_prn =
Prs_v.protein_symbol smb_prn
;;

let protein_symbol_of_protein_symbol smb_prn =
Prs_v.protein_symbol smb_prn
;;

let protein_symbol_of_protein_symbol smb_prn =
Prs_v.protein_symbol smb_prn
;;

let protein_symbol_of_protein_symbol smb_prn =
Prs_v.protein_symbol smb_prn
;;

let protein_symbol_of_protein_symbol smb_prn =
Prs_v.protein_symbol smb_prn
;;

let protein_symbol_of_protein_symbol smb_prn =
Prs_v.protein_symbol smb_prn
;;

let protein_symbol_of_protein_symbol smb_prn =
Prs_v.protein_symbol smb_prn
;;

let protein_symbol_of_protein_symbol smb_prn =
Prs_v.protein_symbol smb_prn
;;

let protein_symbol_of_protein_symbol smb_prn =
Prs_v.protein_symbol smb_prn
;;

let protein_symbol_of_protein_symbol smb_prn =
Prs_v.protein_symbol smb_prn
;;

let protein_symbol_of_protein_symbol smb_prn =
Prs_v.protein_symbol smb_prn
;;

let protein_symbol_of_protein_symbol smb_prn =
Prs_v.protein_symbol smb_prn
;;

let protein_symbol_of_protein_symbol smb_prn =
Prs_v.protein_symbol smb_prn
;;

let protein_symbol_of_protein_symbol smb_prn =
Prs_v.protein_symbol smb_prn
;;

let protein_symbol_of_protein_symbol smb_prn =
Prs_v.protein_symbol smb_prn
;;

let protein_symbol_of_protein_symbol smb_prn =
Prs_v.protein_symbol smb_prn
;;



(** created by ./generator box v symbol at 11:8 26 Apr 2011. *)



