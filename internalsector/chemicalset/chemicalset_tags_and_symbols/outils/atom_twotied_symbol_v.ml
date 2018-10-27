(** {3 A Symbol for a Atom_twotied.} *)

let nam_cod = "atom_twotied_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module A2sss_v = Atom_twotied_single_single_symbol_v
module A2scs_v = Atom_twotied_single_conjugated_symbol_v
module A2sds_v = Atom_twotied_single_double_symbol_v
module A2sts_v = Atom_twotied_single_triple_symbol_v
module A2ccs_v = Atom_twotied_conjugated_conjugated_symbol_v
module A2cds_v = Atom_twotied_conjugated_double_symbol_v
module A2dds_v = Atom_twotied_double_double_symbol_v


let name = function
  | A2s_v smb_2ss ->
      A2sss_v.name smb_2ss
  | A2s_v smb_2sc ->
      A2scs_v.name smb_2sc
  | A2s_v smb_2sd ->
      A2sds_v.name smb_2sd
  | A2s_v smb_2st ->
      A2sts_v.name smb_2st
  | A2s_v smb_2cc ->
      A2ccs_v.name smb_2cc
  | A2s_v smb_2cd ->
      A2cds_v.name smb_2cd
  | A2s_v smb_2dd ->
      A2dds_v.name smb_2dd
;;


let print ppf = function
  | A2s_v smb_2ss ->
      A2sss_v.print ppf smb_2ss
  | A2s_v smb_2sc ->
      A2scs_v.print ppf smb_2sc
  | A2s_v smb_2sd ->
      A2sds_v.print ppf smb_2sd
  | A2s_v smb_2st ->
      A2sts_v.print ppf smb_2st
  | A2s_v smb_2cc ->
      A2ccs_v.print ppf smb_2cc
  | A2s_v smb_2cd ->
      A2cds_v.print ppf smb_2cd
  | A2s_v smb_2dd ->
      A2dds_v.print ppf smb_2dd
;;


(** {6 Extracting.} *)

let atom_twotied_single_single_symbol_off_atom_twotied_symbol = function
  | A2s_v smb_2ss -> smb_2ss
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_twotied_single_single_symbol_off_atom_twotied_symbol"
     "Atom_twotied_single_single_symbol"
     (name s)
    "check"
;;

let atom_twotied_single_conjugated_symbol_off_atom_twotied_symbol = function
  | A2s_v smb_2sc -> smb_2sc
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_twotied_single_conjugated_symbol_off_atom_twotied_symbol"
     "Atom_twotied_single_conjugated_symbol"
     (name s)
    "check"
;;

let atom_twotied_single_double_symbol_off_atom_twotied_symbol = function
  | A2s_v smb_2sd -> smb_2sd
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_twotied_single_double_symbol_off_atom_twotied_symbol"
     "Atom_twotied_single_double_symbol"
     (name s)
    "check"
;;

let atom_twotied_single_triple_symbol_off_atom_twotied_symbol = function
  | A2s_v smb_2st -> smb_2st
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_twotied_single_triple_symbol_off_atom_twotied_symbol"
     "Atom_twotied_single_triple_symbol"
     (name s)
    "check"
;;

let atom_twotied_conjugated_conjugated_symbol_off_atom_twotied_symbol = function
  | A2s_v smb_2cc -> smb_2cc
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_twotied_conjugated_conjugated_symbol_off_atom_twotied_symbol"
     "Atom_twotied_conjugated_conjugated_symbol"
     (name s)
    "check"
;;

let atom_twotied_conjugated_double_symbol_off_atom_twotied_symbol = function
  | A2s_v smb_2cd -> smb_2cd
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_twotied_conjugated_double_symbol_off_atom_twotied_symbol"
     "Atom_twotied_conjugated_double_symbol"
     (name s)
    "check"
;;

let atom_twotied_double_double_symbol_off_atom_twotied_symbol = function
  | A2s_v smb_2dd -> smb_2dd
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_twotied_double_double_symbol_off_atom_twotied_symbol"
     "Atom_twotied_double_double_symbol"
     (name s)
    "check"
;;


(** {6 Querying.} *)

let is_atom_twotied_single_single_symbol_off_atom_twotied_symbol = function
  | Atom_twotied_symbol_t.Atom_twotied_single_single_symbol _ -> true
  | _ -> false
;;

let is_atom_twotied_single_conjugated_symbol_off_atom_twotied_symbol = function
  | Atom_twotied_symbol_t.Atom_twotied_single_conjugated_symbol _ -> true
  | _ -> false
;;

let is_atom_twotied_single_double_symbol_off_atom_twotied_symbol = function
  | Atom_twotied_symbol_t.Atom_twotied_single_double_symbol _ -> true
  | _ -> false
;;

let is_atom_twotied_single_triple_symbol_off_atom_twotied_symbol = function
  | Atom_twotied_symbol_t.Atom_twotied_single_triple_symbol _ -> true
  | _ -> false
;;

let is_atom_twotied_conjugated_conjugated_symbol_off_atom_twotied_symbol = function
  | Atom_twotied_symbol_t.Atom_twotied_conjugated_conjugated_symbol _ -> true
  | _ -> false
;;

let is_atom_twotied_conjugated_double_symbol_off_atom_twotied_symbol = function
  | Atom_twotied_symbol_t.Atom_twotied_conjugated_double_symbol _ -> true
  | _ -> false
;;

let is_atom_twotied_double_double_symbol_off_atom_twotied_symbol = function
  | Atom_twotied_symbol_t.Atom_twotied_double_double_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading.} *)

let atom_twotied_symbol_of_atom_twotied_single_single_symbol smb_2ss =
A2s_v.atom_twotied_single_single_symbol smb_2ss
;;

let atom_twotied_single_single_symbol_of_atom_twotied_single_single_symbol smb_2ss =
A2sss_v.atom_twotied_single_single_symbol smb_2ss
;;

let atom_twotied_single_single_symbol_of_atom_twotied_single_single_symbol smb_2ss =
A2sss_v.atom_twotied_single_single_symbol smb_2ss
;;

let atom_twotied_single_single_symbol_of_atom_twotied_single_single_symbol smb_2ss =
A2sss_v.atom_twotied_single_single_symbol smb_2ss
;;

let atom_twotied_symbol_of_atom_twotied_single_conjugated_symbol smb_2sc =
A2s_v.atom_twotied_single_conjugated_symbol smb_2sc
;;

let atom_twotied_single_conjugated_symbol_of_atom_twotied_single_conjugated_symbol smb_2sc =
A2scs_v.atom_twotied_single_conjugated_symbol smb_2sc
;;

let atom_twotied_single_conjugated_symbol_of_atom_twotied_single_conjugated_symbol smb_2sc =
A2scs_v.atom_twotied_single_conjugated_symbol smb_2sc
;;

let atom_twotied_symbol_of_atom_twotied_single_double_symbol smb_2sd =
A2s_v.atom_twotied_single_double_symbol smb_2sd
;;

let atom_twotied_single_double_symbol_of_atom_twotied_single_double_symbol smb_2sd =
A2sds_v.atom_twotied_single_double_symbol smb_2sd
;;

let atom_twotied_symbol_of_atom_twotied_single_triple_symbol smb_2st =
A2s_v.atom_twotied_single_triple_symbol smb_2st
;;

let atom_twotied_single_triple_symbol_of_atom_twotied_single_triple_symbol smb_2st =
A2sts_v.atom_twotied_single_triple_symbol smb_2st
;;

let atom_twotied_single_triple_symbol_of_atom_twotied_single_triple_symbol smb_2st =
A2sts_v.atom_twotied_single_triple_symbol smb_2st
;;

let atom_twotied_symbol_of_atom_twotied_conjugated_conjugated_symbol smb_2cc =
A2s_v.atom_twotied_conjugated_conjugated_symbol smb_2cc
;;

let atom_twotied_conjugated_conjugated_symbol_of_atom_twotied_conjugated_conjugated_symbol smb_2cc =
A2ccs_v.atom_twotied_conjugated_conjugated_symbol smb_2cc
;;

let atom_twotied_conjugated_conjugated_symbol_of_atom_twotied_conjugated_conjugated_symbol smb_2cc =
A2ccs_v.atom_twotied_conjugated_conjugated_symbol smb_2cc
;;

let atom_twotied_symbol_of_atom_twotied_conjugated_double_symbol smb_2cd =
A2s_v.atom_twotied_conjugated_double_symbol smb_2cd
;;

let atom_twotied_conjugated_double_symbol_of_atom_twotied_conjugated_double_symbol smb_2cd =
A2cds_v.atom_twotied_conjugated_double_symbol smb_2cd
;;

let atom_twotied_symbol_of_atom_twotied_double_double_symbol smb_2dd =
A2s_v.atom_twotied_double_double_symbol smb_2dd
;;

let atom_twotied_double_double_symbol_of_atom_twotied_double_double_symbol smb_2dd =
A2dds_v.atom_twotied_double_double_symbol smb_2dd
;;

let atom_twotied_double_double_symbol_of_atom_twotied_double_double_symbol smb_2dd =
A2dds_v.atom_twotied_double_double_symbol smb_2dd
;;



(** created by ./generator atom_twotied v symbol at 11:8 26 Apr 2011. *)



