(** {3 A Symbol for a Atom_threetied.} *)

let nam_cod = "atom_threetied_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module A3ssss_v = Atom_threetied_single_single_single_symbol_v
module A3ssds_v = Atom_threetied_single_single_double_symbol_v
module A3sccs_v = Atom_threetied_single_conjugated_conjugated_symbol_v
module A3cccs_v = Atom_threetied_conjugated_conjugated_conjugated_symbol_v
module A3ddds_v = Atom_threetied_double_double_double_symbol_v


let name = function
  | A3s_v smb_sss ->
      A3ssss_v.name smb_sss
  | A3s_v smb_ssd ->
      A3ssds_v.name smb_ssd
  | A3s_v smb_scc ->
      A3sccs_v.name smb_scc
  | A3s_v smb_ccc ->
      A3cccs_v.name smb_ccc
  | A3s_v smb_ddd ->
      A3ddds_v.name smb_ddd
;;


let print ppf = function
  | A3s_v smb_sss ->
      A3ssss_v.print ppf smb_sss
  | A3s_v smb_ssd ->
      A3ssds_v.print ppf smb_ssd
  | A3s_v smb_scc ->
      A3sccs_v.print ppf smb_scc
  | A3s_v smb_ccc ->
      A3cccs_v.print ppf smb_ccc
  | A3s_v smb_ddd ->
      A3ddds_v.print ppf smb_ddd
;;


(** {6 Extracting.} *)

let atom_threetied_single_single_single_symbol_off_atom_threetied_symbol = function
  | A3s_v smb_sss -> smb_sss
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_threetied_single_single_single_symbol_off_atom_threetied_symbol"
     "Atom_threetied_single_single_single_symbol"
     (name s)
    "check"
;;

let atom_threetied_single_single_double_symbol_off_atom_threetied_symbol = function
  | A3s_v smb_ssd -> smb_ssd
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_threetied_single_single_double_symbol_off_atom_threetied_symbol"
     "Atom_threetied_single_single_double_symbol"
     (name s)
    "check"
;;

let atom_threetied_single_conjugated_conjugated_symbol_off_atom_threetied_symbol = function
  | A3s_v smb_scc -> smb_scc
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_threetied_single_conjugated_conjugated_symbol_off_atom_threetied_symbol"
     "Atom_threetied_single_conjugated_conjugated_symbol"
     (name s)
    "check"
;;

let atom_threetied_conjugated_conjugated_conjugated_symbol_off_atom_threetied_symbol = function
  | A3s_v smb_ccc -> smb_ccc
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_threetied_conjugated_conjugated_conjugated_symbol_off_atom_threetied_symbol"
     "Atom_threetied_conjugated_conjugated_conjugated_symbol"
     (name s)
    "check"
;;

let atom_threetied_double_double_double_symbol_off_atom_threetied_symbol = function
  | A3s_v smb_ddd -> smb_ddd
  | s -> Erm_v.print_fatal_error nam_cod
     "atom_threetied_double_double_double_symbol_off_atom_threetied_symbol"
     "Atom_threetied_double_double_double_symbol"
     (name s)
    "check"
;;


(** {6 Querying.} *)

let is_atom_threetied_single_single_single_symbol_off_atom_threetied_symbol = function
  | Atom_threetied_symbol_t.Atom_threetied_single_single_single_symbol _ -> true
  | _ -> false
;;

let is_atom_threetied_single_single_double_symbol_off_atom_threetied_symbol = function
  | Atom_threetied_symbol_t.Atom_threetied_single_single_double_symbol _ -> true
  | _ -> false
;;

let is_atom_threetied_single_conjugated_conjugated_symbol_off_atom_threetied_symbol = function
  | Atom_threetied_symbol_t.Atom_threetied_single_conjugated_conjugated_symbol _ -> true
  | _ -> false
;;

let is_atom_threetied_conjugated_conjugated_conjugated_symbol_off_atom_threetied_symbol = function
  | Atom_threetied_symbol_t.Atom_threetied_conjugated_conjugated_conjugated_symbol _ -> true
  | _ -> false
;;

let is_atom_threetied_double_double_double_symbol_off_atom_threetied_symbol = function
  | Atom_threetied_symbol_t.Atom_threetied_double_double_double_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading.} *)

let atom_threetied_symbol_of_atom_threetied_single_single_single_symbol smb_sss =
A3s_v.atom_threetied_single_single_single_symbol smb_sss
;;

let atom_threetied_single_single_single_symbol_of_atom_threetied_single_single_single_symbol smb_sss =
A3ssss_v.atom_threetied_single_single_single_symbol smb_sss
;;

let atom_threetied_single_single_single_symbol_of_atom_threetied_single_single_single_symbol smb_sss =
A3ssss_v.atom_threetied_single_single_single_symbol smb_sss
;;

let atom_threetied_symbol_of_atom_threetied_single_single_double_symbol smb_ssd =
A3s_v.atom_threetied_single_single_double_symbol smb_ssd
;;

let atom_threetied_single_single_double_symbol_of_atom_threetied_single_single_double_symbol smb_ssd =
A3ssds_v.atom_threetied_single_single_double_symbol smb_ssd
;;

let atom_threetied_single_single_double_symbol_of_atom_threetied_single_single_double_symbol smb_ssd =
A3ssds_v.atom_threetied_single_single_double_symbol smb_ssd
;;

let atom_threetied_single_single_double_symbol_of_atom_threetied_single_single_double_symbol smb_ssd =
A3ssds_v.atom_threetied_single_single_double_symbol smb_ssd
;;

let atom_threetied_symbol_of_atom_threetied_single_conjugated_conjugated_symbol smb_scc =
A3s_v.atom_threetied_single_conjugated_conjugated_symbol smb_scc
;;

let atom_threetied_single_conjugated_conjugated_symbol_of_atom_threetied_single_conjugated_conjugated_symbol smb_scc =
A3sccs_v.atom_threetied_single_conjugated_conjugated_symbol smb_scc
;;

let atom_threetied_single_conjugated_conjugated_symbol_of_atom_threetied_single_conjugated_conjugated_symbol smb_scc =
A3sccs_v.atom_threetied_single_conjugated_conjugated_symbol smb_scc
;;

let atom_threetied_symbol_of_atom_threetied_conjugated_conjugated_conjugated_symbol smb_ccc =
A3s_v.atom_threetied_conjugated_conjugated_conjugated_symbol smb_ccc
;;

let atom_threetied_conjugated_conjugated_conjugated_symbol_of_atom_threetied_conjugated_conjugated_conjugated_symbol smb_ccc =
A3cccs_v.atom_threetied_conjugated_conjugated_conjugated_symbol smb_ccc
;;

let atom_threetied_conjugated_conjugated_conjugated_symbol_of_atom_threetied_conjugated_conjugated_conjugated_symbol smb_ccc =
A3cccs_v.atom_threetied_conjugated_conjugated_conjugated_symbol smb_ccc
;;

let atom_threetied_symbol_of_atom_threetied_double_double_double_symbol smb_ddd =
A3s_v.atom_threetied_double_double_double_symbol smb_ddd
;;

let atom_threetied_double_double_double_symbol_of_atom_threetied_double_double_double_symbol smb_ddd =
A3ddds_v.atom_threetied_double_double_double_symbol smb_ddd
;;



(** created by ./generator atom_threetied v symbol at 11:8 26 Apr 2011. *)



