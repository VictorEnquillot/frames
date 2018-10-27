(** {3 A Symbol for a Atom_onetied.} *)

let nam_cod = "atom_onetied_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module A1cs_v = Atom_onetied_conjugated_symbol_v
module A1ds_v = Atom_onetied_double_symbol_v
module A1ss_v = Atom_onetied_single_symbol_v
module A1ts_v = Atom_onetied_triple_symbol_v


let name = function
  | A1s_v smb_a1c ->
      A1cs_v.name smb_a1c
  | A1s_v smb_a1d ->
      A1ds_v.name smb_a1d
  | A1s_v smb_a1s ->
      A1ss_v.name smb_a1s
  | A1s_v smb_a1t ->
      A1ts_v.name smb_a1t
;;


let print ppf = function
  | A1s_v smb_a1c ->
      A1cs_v.print ppf smb_a1c
  | A1s_v smb_a1d ->
      A1ds_v.print ppf smb_a1d
  | A1s_v smb_a1s ->
      A1ss_v.print ppf smb_a1s
  | A1s_v smb_a1t ->
      A1ts_v.print ppf smb_a1t
;;


(** {6 Extracting.} *)

let atom_onetied_conjugated_symbol_off_atom_onetied_symbol = function
  | A1s_v smb_a1c -> smb_a1c
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_onetied_conjugated_symbol_off_atom_onetied_symbol"
     "Atom_onetied_conjugated_symbol"
     (name s)
    "check"
;;

let atom_onetied_double_symbol_off_atom_onetied_symbol = function
  | A1s_v smb_a1d -> smb_a1d
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_onetied_double_symbol_off_atom_onetied_symbol"
     "Atom_onetied_double_symbol"
     (name s)
    "check"
;;

let atom_onetied_single_symbol_off_atom_onetied_symbol = function
  | A1s_v smb_a1s -> smb_a1s
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_onetied_single_symbol_off_atom_onetied_symbol"
     "Atom_onetied_single_symbol"
     (name s)
    "check"
;;

let atom_onetied_triple_symbol_off_atom_onetied_symbol = function
  | A1s_v smb_a1t -> smb_a1t
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_onetied_triple_symbol_off_atom_onetied_symbol"
     "Atom_onetied_triple_symbol"
     (name s)
    "check"
;;


(** {6 Querying.} *)

let is_atom_onetied_conjugated_symbol_off_atom_onetied_symbol = function
  | Atom_onetied_symbol_t.Atom_onetied_conjugated_symbol _ -> true
  | _ -> false
;;

let is_atom_onetied_double_symbol_off_atom_onetied_symbol = function
  | Atom_onetied_symbol_t.Atom_onetied_double_symbol _ -> true
  | _ -> false
;;

let is_atom_onetied_single_symbol_off_atom_onetied_symbol = function
  | Atom_onetied_symbol_t.Atom_onetied_single_symbol _ -> true
  | _ -> false
;;

let is_atom_onetied_triple_symbol_off_atom_onetied_symbol = function
  | Atom_onetied_symbol_t.Atom_onetied_triple_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading.} *)

let atom_onetied_symbol_of_atom_onetied_conjugated_symbol smb_a1c =
A1s_v.atom_onetied_conjugated_symbol smb_a1c
;;

let atom_onetied_conjugated_symbol_of_atom_onetied_conjugated_symbol smb_a1c =
A1cs_v.atom_onetied_conjugated_symbol smb_a1c
;;

let atom_onetied_symbol_of_atom_onetied_double_symbol smb_a1d =
A1s_v.atom_onetied_double_symbol smb_a1d
;;

let atom_onetied_double_symbol_of_atom_onetied_double_symbol smb_a1d =
A1ds_v.atom_onetied_double_symbol smb_a1d
;;

let atom_onetied_symbol_of_atom_onetied_single_symbol smb_a1s =
A1s_v.atom_onetied_single_symbol smb_a1s
;;

let atom_onetied_single_symbol_of_atom_onetied_single_symbol smb_a1s =
A1ss_v.atom_onetied_single_symbol smb_a1s
;;

let atom_onetied_single_symbol_of_atom_onetied_single_symbol smb_a1s =
A1ss_v.atom_onetied_single_symbol smb_a1s
;;

let atom_onetied_symbol_of_atom_onetied_triple_symbol smb_a1t =
A1s_v.atom_onetied_triple_symbol smb_a1t
;;

let atom_onetied_triple_symbol_of_atom_onetied_triple_symbol smb_a1t =
A1ts_v.atom_onetied_triple_symbol smb_a1t
;;

let atom_onetied_triple_symbol_of_atom_onetied_triple_symbol smb_a1t =
A1ts_v.atom_onetied_triple_symbol smb_a1t
;;



(** created by ./generator atom_onetied v symbol at 11:8 26 Apr 2011. *)



