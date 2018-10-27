(** {3 A Symbol for a Atom_threetied.} *)

let nam_mod = "Atom_threetied_symbol_v";;

(** {6 Modules.} *)

module Acccs_t = Atom_threetied_conjugated_conjugated_conjugated_symbol_t
module Acccs_v = Atom_threetied_conjugated_conjugated_conjugated_symbol_v
module Addds_t = Atom_threetied_double_double_double_symbol_t
module Addds_v = Atom_threetied_double_double_double_symbol_v
module Asccs_t = Atom_threetied_single_conjugated_conjugated_symbol_t
module Asccs_v = Atom_threetied_single_conjugated_conjugated_symbol_v
module Assds_t = Atom_threetied_single_single_double_symbol_t
module Assds_v = Atom_threetied_single_single_double_symbol_v
module Assss_t = Atom_threetied_single_single_single_symbol_t
module Assss_v = Atom_threetied_single_single_single_symbol_v
module Aths_t = Atom_threetied_symbol_t

(** {6 Displaying.} *)

let name = function
  | Aths_t.Atom_threetied_single_single_single_symbol smb_asss -> 
      Assss_v.name smb_asss
  | Aths_t.Atom_threetied_single_single_double_symbol smb_assd -> 
      Assds_v.name smb_assd
  | Aths_t.Atom_threetied_single_conjugated_conjugated_symbol smb_ascc -> 
      Asccs_v.name smb_ascc
  | Aths_t.Atom_threetied_conjugated_conjugated_conjugated_symbol smb_accc -> 
      Acccs_v.name smb_accc
  | Aths_t.Atom_threetied_double_double_double_symbol smb_addd -> 
      Addds_v.name smb_addd
;;

let print ppf = function
  | Aths_t.Atom_threetied_single_single_single_symbol smb_asss -> 
      Assss_v.print ppf smb_asss
  | Aths_t.Atom_threetied_single_single_double_symbol smb_assd -> 
      Assds_v.print ppf smb_assd
  | Aths_t.Atom_threetied_single_conjugated_conjugated_symbol smb_ascc -> 
      Asccs_v.print ppf smb_ascc
  | Aths_t.Atom_threetied_conjugated_conjugated_conjugated_symbol smb_accc -> 
      Acccs_v.print ppf smb_accc
  | Aths_t.Atom_threetied_double_double_double_symbol smb_addd -> 
      Addds_v.print ppf smb_addd
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found atom_threetied_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Atom_threetied_single_single_single from Atom_threetied.} *)

let atom_threetied_single_single_single_symbol_off_atom_threetied_symbol = function
  | Aths_t.Atom_threetied_single_single_single_symbol smb_asss -> smb_asss
  | s ->  print_fatal_error
      "atom_threetied_single_single_single_symbol_off_atom_threetied_symbol"
      "Atom_threetied_single_single_single_symbol" (name s)
;;

(** {9 Extracting N_sss from Atom_threetied_single_single_single from Atom_threetied.} *)

(* No Extraction from n_sss 0. *)

(** {9 Extracting Cl_sss from Atom_threetied_single_single_single from Atom_threetied.} *)

(* No Extraction from cl_sss 0. *)

(** {6 Extracting Atom_threetied_single_single_double from Atom_threetied.} *)

let atom_threetied_single_single_double_symbol_off_atom_threetied_symbol = function
  | Aths_t.Atom_threetied_single_single_double_symbol smb_assd -> smb_assd
  | s ->  print_fatal_error
      "atom_threetied_single_single_double_symbol_off_atom_threetied_symbol"
      "Atom_threetied_single_single_double_symbol" (name s)
;;

(** {9 Extracting C_ssd from Atom_threetied_single_single_double from Atom_threetied.} *)

(* No Extraction from c_ssd 0. *)

(** {9 Extracting N_sdd from Atom_threetied_single_single_double from Atom_threetied.} *)

(* No Extraction from n_sdd 0. *)

(** {9 Extracting S_sdd from Atom_threetied_single_single_double from Atom_threetied.} *)

(* No Extraction from s_sdd 0. *)

(** {6 Extracting Atom_threetied_single_conjugated_conjugated from Atom_threetied.} *)

let atom_threetied_single_conjugated_conjugated_symbol_off_atom_threetied_symbol = function
  | Aths_t.Atom_threetied_single_conjugated_conjugated_symbol smb_ascc -> smb_ascc
  | s ->  print_fatal_error
      "atom_threetied_single_conjugated_conjugated_symbol_off_atom_threetied_symbol"
      "Atom_threetied_single_conjugated_conjugated_symbol" (name s)
;;

(** {9 Extracting C_scc from Atom_threetied_single_conjugated_conjugated from Atom_threetied.} *)

(* No Extraction from c_scc 0. *)

(** {9 Extracting N_scc from Atom_threetied_single_conjugated_conjugated from Atom_threetied.} *)

(* No Extraction from n_scc 0. *)

(** {6 Extracting Atom_threetied_conjugated_conjugated_conjugated from Atom_threetied.} *)

let atom_threetied_conjugated_conjugated_conjugated_symbol_off_atom_threetied_symbol = function
  | Aths_t.Atom_threetied_conjugated_conjugated_conjugated_symbol smb_accc -> smb_accc
  | s ->  print_fatal_error
      "atom_threetied_conjugated_conjugated_conjugated_symbol_off_atom_threetied_symbol"
      "Atom_threetied_conjugated_conjugated_conjugated_symbol" (name s)
;;

(** {9 Extracting C_ccc from Atom_threetied_conjugated_conjugated_conjugated from Atom_threetied.} *)

(* No Extraction from c_ccc 0. *)

(** {9 Extracting N_ccc from Atom_threetied_conjugated_conjugated_conjugated from Atom_threetied.} *)

(* No Extraction from n_ccc 0. *)

(** {6 Extracting Atom_threetied_double_double_double from Atom_threetied.} *)

let atom_threetied_double_double_double_symbol_off_atom_threetied_symbol = function
  | Aths_t.Atom_threetied_double_double_double_symbol smb_addd -> smb_addd
  | s ->  print_fatal_error
      "atom_threetied_double_double_double_symbol_off_atom_threetied_symbol"
      "Atom_threetied_double_double_double_symbol" (name s)
;;

(** {9 Extracting S_ddd from Atom_threetied_double_double_double from Atom_threetied.} *)

(* No Extraction from s_ddd 0. *)

(** {6 Querying.} *)

(** {6 Querying Atom_threetied_single_single_single in Atom_threetied.} *)

let is_atom_threetied_single_single_single_symbol_off_atom_threetied_symbol = function
  | Aths_t.Atom_threetied_single_single_single_symbol _ -> true
  | _ -> false
;;

(** {9 Querying N_sss in Atom_threetied_single_single_single in Atom_threetied.} *)

(* No Query from n_sss 0. *)


(** {9 Querying Cl_sss in Atom_threetied_single_single_single in Atom_threetied.} *)

(* No Query from cl_sss 0. *)


(** {6 Querying Atom_threetied_single_single_double in Atom_threetied.} *)

let is_atom_threetied_single_single_double_symbol_off_atom_threetied_symbol = function
  | Aths_t.Atom_threetied_single_single_double_symbol _ -> true
  | _ -> false
;;

(** {9 Querying C_ssd in Atom_threetied_single_single_double in Atom_threetied.} *)

(* No Query from c_ssd 0. *)


(** {9 Querying N_sdd in Atom_threetied_single_single_double in Atom_threetied.} *)

(* No Query from n_sdd 0. *)


(** {9 Querying S_sdd in Atom_threetied_single_single_double in Atom_threetied.} *)

(* No Query from s_sdd 0. *)


(** {6 Querying Atom_threetied_single_conjugated_conjugated in Atom_threetied.} *)

let is_atom_threetied_single_conjugated_conjugated_symbol_off_atom_threetied_symbol = function
  | Aths_t.Atom_threetied_single_conjugated_conjugated_symbol _ -> true
  | _ -> false
;;

(** {9 Querying C_scc in Atom_threetied_single_conjugated_conjugated in Atom_threetied.} *)

(* No Query from c_scc 0. *)


(** {9 Querying N_scc in Atom_threetied_single_conjugated_conjugated in Atom_threetied.} *)

(* No Query from n_scc 0. *)


(** {6 Querying Atom_threetied_conjugated_conjugated_conjugated in Atom_threetied.} *)

let is_atom_threetied_conjugated_conjugated_conjugated_symbol_off_atom_threetied_symbol = function
  | Aths_t.Atom_threetied_conjugated_conjugated_conjugated_symbol _ -> true
  | _ -> false
;;

(** {9 Querying C_ccc in Atom_threetied_conjugated_conjugated_conjugated in Atom_threetied.} *)

(* No Query from c_ccc 0. *)


(** {9 Querying N_ccc in Atom_threetied_conjugated_conjugated_conjugated in Atom_threetied.} *)

(* No Query from n_ccc 0. *)


(** {6 Querying Atom_threetied_double_double_double in Atom_threetied.} *)

let is_atom_threetied_double_double_double_symbol_off_atom_threetied_symbol = function
  | Aths_t.Atom_threetied_double_double_double_symbol _ -> true
  | _ -> false
;;

(** {9 Querying S_ddd in Atom_threetied_double_double_double in Atom_threetied.} *)

(* No Query from s_ddd 0. *)


(** {6 Upgrading from Atom_threetied_single_single_single to Atom_threetied.} *)

let atom_threetied_symbol_of_atom_threetied_single_single_single_symbol smb_asss =
  Aths_t.Atom_threetied_single_single_single_symbol smb_asss
;;

(** {9 Upgrading from N_sss through Atom_threetied_single_single_single to Atom_threetied.} *)

let n_sss = atom_threetied_symbol_of_atom_threetied_single_single_single_symbol Assss_t.N_sss;;

(** {9 Upgrading from Cl_sss through Atom_threetied_single_single_single to Atom_threetied.} *)

let cl_sss = atom_threetied_symbol_of_atom_threetied_single_single_single_symbol Assss_t.Cl_sss;;

(** {6 Upgrading from Atom_threetied_single_single_double to Atom_threetied.} *)

let atom_threetied_symbol_of_atom_threetied_single_single_double_symbol smb_assd =
  Aths_t.Atom_threetied_single_single_double_symbol smb_assd
;;

(** {9 Upgrading from C_ssd through Atom_threetied_single_single_double to Atom_threetied.} *)

let c_ssd = atom_threetied_symbol_of_atom_threetied_single_single_double_symbol Assds_t.C_ssd;;

(** {9 Upgrading from N_sdd through Atom_threetied_single_single_double to Atom_threetied.} *)

let n_sdd = atom_threetied_symbol_of_atom_threetied_single_single_double_symbol Assds_t.N_sdd;;

(** {9 Upgrading from S_sdd through Atom_threetied_single_single_double to Atom_threetied.} *)

let s_sdd = atom_threetied_symbol_of_atom_threetied_single_single_double_symbol Assds_t.S_sdd;;

(** {6 Upgrading from Atom_threetied_single_conjugated_conjugated to Atom_threetied.} *)

let atom_threetied_symbol_of_atom_threetied_single_conjugated_conjugated_symbol smb_ascc =
  Aths_t.Atom_threetied_single_conjugated_conjugated_symbol smb_ascc
;;

(** {9 Upgrading from C_scc through Atom_threetied_single_conjugated_conjugated to Atom_threetied.} *)

let c_scc = atom_threetied_symbol_of_atom_threetied_single_conjugated_conjugated_symbol Asccs_t.C_scc;;

(** {9 Upgrading from N_scc through Atom_threetied_single_conjugated_conjugated to Atom_threetied.} *)

let n_scc = atom_threetied_symbol_of_atom_threetied_single_conjugated_conjugated_symbol Asccs_t.N_scc;;

(** {6 Upgrading from Atom_threetied_conjugated_conjugated_conjugated to Atom_threetied.} *)

let atom_threetied_symbol_of_atom_threetied_conjugated_conjugated_conjugated_symbol smb_accc =
  Aths_t.Atom_threetied_conjugated_conjugated_conjugated_symbol smb_accc
;;

(** {9 Upgrading from C_ccc through Atom_threetied_conjugated_conjugated_conjugated to Atom_threetied.} *)

let c_ccc = atom_threetied_symbol_of_atom_threetied_conjugated_conjugated_conjugated_symbol Acccs_t.C_ccc;;

(** {9 Upgrading from N_ccc through Atom_threetied_conjugated_conjugated_conjugated to Atom_threetied.} *)

let n_ccc = atom_threetied_symbol_of_atom_threetied_conjugated_conjugated_conjugated_symbol Acccs_t.N_ccc;;

(** {6 Upgrading from Atom_threetied_double_double_double to Atom_threetied.} *)

let atom_threetied_symbol_of_atom_threetied_double_double_double_symbol smb_addd =
  Aths_t.Atom_threetied_double_double_double_symbol smb_addd
;;

(** {9 Upgrading from S_ddd through Atom_threetied_double_double_double to Atom_threetied.} *)

let s_ddd = atom_threetied_symbol_of_atom_threetied_double_double_double_symbol Addds_t.S_ddd;;

(** created by ./do_entitysum_symbol_v_ml.sh atom_threetied 12 January 2011. *)

