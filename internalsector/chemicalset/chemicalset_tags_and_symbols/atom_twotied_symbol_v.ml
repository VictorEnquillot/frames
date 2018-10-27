(** {3 A Symbol for a Atom_twotied.} *)

let nam_mod = "Atom_twotied_symbol_v";;

(** {6 Modules.} *)

module Accs_t = Atom_twotied_conjugated_conjugated_symbol_t
module Accs_v = Atom_twotied_conjugated_conjugated_symbol_v
module Acds_t = Atom_twotied_conjugated_double_symbol_t
module Acds_v = Atom_twotied_conjugated_double_symbol_v
module Adds_t = Atom_twotied_double_double_symbol_t
module Adds_v = Atom_twotied_double_double_symbol_v
module Ascs_t = Atom_twotied_single_conjugated_symbol_t
module Ascs_v = Atom_twotied_single_conjugated_symbol_v
module Asds_t = Atom_twotied_single_double_symbol_t
module Asds_v = Atom_twotied_single_double_symbol_v
module Asss_t = Atom_twotied_single_single_symbol_t
module Asss_v = Atom_twotied_single_single_symbol_v
module Asts_t = Atom_twotied_single_triple_symbol_t
module Asts_v = Atom_twotied_single_triple_symbol_v
module Atws_t = Atom_twotied_symbol_t

(** {6 Displaying.} *)

let name = function
  | Atws_t.Atom_twotied_single_single_symbol smb_ass -> 
      Asss_v.name smb_ass
  | Atws_t.Atom_twotied_single_conjugated_symbol smb_asc -> 
      Ascs_v.name smb_asc
  | Atws_t.Atom_twotied_single_double_symbol smb_asd -> 
      Asds_v.name smb_asd
  | Atws_t.Atom_twotied_single_triple_symbol smb_ast -> 
      Asts_v.name smb_ast
  | Atws_t.Atom_twotied_conjugated_conjugated_symbol smb_acc -> 
      Accs_v.name smb_acc
  | Atws_t.Atom_twotied_conjugated_double_symbol smb_acd -> 
      Acds_v.name smb_acd
  | Atws_t.Atom_twotied_double_double_symbol smb_add -> 
      Adds_v.name smb_add
;;

let print ppf = function
  | Atws_t.Atom_twotied_single_single_symbol smb_ass -> 
      Asss_v.print ppf smb_ass
  | Atws_t.Atom_twotied_single_conjugated_symbol smb_asc -> 
      Ascs_v.print ppf smb_asc
  | Atws_t.Atom_twotied_single_double_symbol smb_asd -> 
      Asds_v.print ppf smb_asd
  | Atws_t.Atom_twotied_single_triple_symbol smb_ast -> 
      Asts_v.print ppf smb_ast
  | Atws_t.Atom_twotied_conjugated_conjugated_symbol smb_acc -> 
      Accs_v.print ppf smb_acc
  | Atws_t.Atom_twotied_conjugated_double_symbol smb_acd -> 
      Acds_v.print ppf smb_acd
  | Atws_t.Atom_twotied_double_double_symbol smb_add -> 
      Adds_v.print ppf smb_add
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found atom_twotied_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Atom_twotied_single_single from Atom_twotied.} *)

let atom_twotied_single_single_symbol_off_atom_twotied_symbol = function
  | Atws_t.Atom_twotied_single_single_symbol smb_ass -> smb_ass
  | s ->  print_fatal_error
      "atom_twotied_single_single_symbol_off_atom_twotied_symbol"
      "Atom_twotied_single_single_symbol" (name s)
;;

(** {9 Extracting Cl_ss from Atom_twotied_single_single from Atom_twotied.} *)

(* No Extraction from cl_ss 0. *)

(** {9 Extracting F_ss from Atom_twotied_single_single from Atom_twotied.} *)

(* No Extraction from f_ss 0. *)

(** {9 Extracting H_ss from Atom_twotied_single_single from Atom_twotied.} *)

(* No Extraction from h_ss 0. *)

(** {6 Extracting Atom_twotied_single_conjugated from Atom_twotied.} *)

let atom_twotied_single_conjugated_symbol_off_atom_twotied_symbol = function
  | Atws_t.Atom_twotied_single_conjugated_symbol smb_asc -> smb_asc
  | s ->  print_fatal_error
      "atom_twotied_single_conjugated_symbol_off_atom_twotied_symbol"
      "Atom_twotied_single_conjugated_symbol" (name s)
;;

(** {9 Extracting N_sc from Atom_twotied_single_conjugated from Atom_twotied.} *)

(* No Extraction from n_sc 0. *)

(** {9 Extracting O_sc from Atom_twotied_single_conjugated from Atom_twotied.} *)

(* No Extraction from o_sc 0. *)

(** {6 Extracting Atom_twotied_single_double from Atom_twotied.} *)

let atom_twotied_single_double_symbol_off_atom_twotied_symbol = function
  | Atws_t.Atom_twotied_single_double_symbol smb_asd -> smb_asd
  | s ->  print_fatal_error
      "atom_twotied_single_double_symbol_off_atom_twotied_symbol"
      "Atom_twotied_single_double_symbol" (name s)
;;

(** {9 Extracting N_sd from Atom_twotied_single_double from Atom_twotied.} *)

(* No Extraction from n_sd 0. *)

(** {6 Extracting Atom_twotied_single_triple from Atom_twotied.} *)

let atom_twotied_single_triple_symbol_off_atom_twotied_symbol = function
  | Atws_t.Atom_twotied_single_triple_symbol smb_ast -> smb_ast
  | s ->  print_fatal_error
      "atom_twotied_single_triple_symbol_off_atom_twotied_symbol"
      "Atom_twotied_single_triple_symbol" (name s)
;;

(** {9 Extracting C_st from Atom_twotied_single_triple from Atom_twotied.} *)

(* No Extraction from c_st 0. *)

(** {9 Extracting N_st from Atom_twotied_single_triple from Atom_twotied.} *)

(* No Extraction from n_st 0. *)

(** {6 Extracting Atom_twotied_conjugated_conjugated from Atom_twotied.} *)

let atom_twotied_conjugated_conjugated_symbol_off_atom_twotied_symbol = function
  | Atws_t.Atom_twotied_conjugated_conjugated_symbol smb_acc -> smb_acc
  | s ->  print_fatal_error
      "atom_twotied_conjugated_conjugated_symbol_off_atom_twotied_symbol"
      "Atom_twotied_conjugated_conjugated_symbol" (name s)
;;

(** {9 Extracting N_cc from Atom_twotied_conjugated_conjugated from Atom_twotied.} *)

(* No Extraction from n_cc 0. *)

(** {9 Extracting O_cc from Atom_twotied_conjugated_conjugated from Atom_twotied.} *)

(* No Extraction from o_cc 0. *)

(** {6 Extracting Atom_twotied_conjugated_double from Atom_twotied.} *)

let atom_twotied_conjugated_double_symbol_off_atom_twotied_symbol = function
  | Atws_t.Atom_twotied_conjugated_double_symbol smb_acd -> smb_acd
  | s ->  print_fatal_error
      "atom_twotied_conjugated_double_symbol_off_atom_twotied_symbol"
      "Atom_twotied_conjugated_double_symbol" (name s)
;;

(** {9 Extracting C_cd from Atom_twotied_conjugated_double from Atom_twotied.} *)

(* No Extraction from c_cd 0. *)

(** {6 Extracting Atom_twotied_double_double from Atom_twotied.} *)

let atom_twotied_double_double_symbol_off_atom_twotied_symbol = function
  | Atws_t.Atom_twotied_double_double_symbol smb_add -> smb_add
  | s ->  print_fatal_error
      "atom_twotied_double_double_symbol_off_atom_twotied_symbol"
      "Atom_twotied_double_double_symbol" (name s)
;;

(** {9 Extracting C_dd from Atom_twotied_double_double from Atom_twotied.} *)

(* No Extraction from c_dd 0. *)

(** {9 Extracting S_dd from Atom_twotied_double_double from Atom_twotied.} *)

(* No Extraction from s_dd 0. *)

(** {6 Querying.} *)

(** {6 Querying Atom_twotied_single_single in Atom_twotied.} *)

let is_atom_twotied_single_single_symbol_off_atom_twotied_symbol = function
  | Atws_t.Atom_twotied_single_single_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Cl_ss in Atom_twotied_single_single in Atom_twotied.} *)

(* No Query from cl_ss 0. *)


(** {9 Querying F_ss in Atom_twotied_single_single in Atom_twotied.} *)

(* No Query from f_ss 0. *)


(** {9 Querying H_ss in Atom_twotied_single_single in Atom_twotied.} *)

(* No Query from h_ss 0. *)


(** {6 Querying Atom_twotied_single_conjugated in Atom_twotied.} *)

let is_atom_twotied_single_conjugated_symbol_off_atom_twotied_symbol = function
  | Atws_t.Atom_twotied_single_conjugated_symbol _ -> true
  | _ -> false
;;

(** {9 Querying N_sc in Atom_twotied_single_conjugated in Atom_twotied.} *)

(* No Query from n_sc 0. *)


(** {9 Querying O_sc in Atom_twotied_single_conjugated in Atom_twotied.} *)

(* No Query from o_sc 0. *)


(** {6 Querying Atom_twotied_single_double in Atom_twotied.} *)

let is_atom_twotied_single_double_symbol_off_atom_twotied_symbol = function
  | Atws_t.Atom_twotied_single_double_symbol _ -> true
  | _ -> false
;;

(** {9 Querying N_sd in Atom_twotied_single_double in Atom_twotied.} *)

(* No Query from n_sd 0. *)


(** {6 Querying Atom_twotied_single_triple in Atom_twotied.} *)

let is_atom_twotied_single_triple_symbol_off_atom_twotied_symbol = function
  | Atws_t.Atom_twotied_single_triple_symbol _ -> true
  | _ -> false
;;

(** {9 Querying C_st in Atom_twotied_single_triple in Atom_twotied.} *)

(* No Query from c_st 0. *)


(** {9 Querying N_st in Atom_twotied_single_triple in Atom_twotied.} *)

(* No Query from n_st 0. *)


(** {6 Querying Atom_twotied_conjugated_conjugated in Atom_twotied.} *)

let is_atom_twotied_conjugated_conjugated_symbol_off_atom_twotied_symbol = function
  | Atws_t.Atom_twotied_conjugated_conjugated_symbol _ -> true
  | _ -> false
;;

(** {9 Querying N_cc in Atom_twotied_conjugated_conjugated in Atom_twotied.} *)

(* No Query from n_cc 0. *)


(** {9 Querying O_cc in Atom_twotied_conjugated_conjugated in Atom_twotied.} *)

(* No Query from o_cc 0. *)


(** {6 Querying Atom_twotied_conjugated_double in Atom_twotied.} *)

let is_atom_twotied_conjugated_double_symbol_off_atom_twotied_symbol = function
  | Atws_t.Atom_twotied_conjugated_double_symbol _ -> true
  | _ -> false
;;

(** {9 Querying C_cd in Atom_twotied_conjugated_double in Atom_twotied.} *)

(* No Query from c_cd 0. *)


(** {6 Querying Atom_twotied_double_double in Atom_twotied.} *)

let is_atom_twotied_double_double_symbol_off_atom_twotied_symbol = function
  | Atws_t.Atom_twotied_double_double_symbol _ -> true
  | _ -> false
;;

(** {9 Querying C_dd in Atom_twotied_double_double in Atom_twotied.} *)

(* No Query from c_dd 0. *)


(** {9 Querying S_dd in Atom_twotied_double_double in Atom_twotied.} *)

(* No Query from s_dd 0. *)


(** {6 Upgrading from Atom_twotied_single_single to Atom_twotied.} *)

let atom_twotied_symbol_of_atom_twotied_single_single_symbol smb_ass =
  Atws_t.Atom_twotied_single_single_symbol smb_ass
;;

(** {9 Upgrading from Cl_ss through Atom_twotied_single_single to Atom_twotied.} *)

let cl_ss = atom_twotied_symbol_of_atom_twotied_single_single_symbol Asss_t.Cl_ss;;

(** {9 Upgrading from F_ss through Atom_twotied_single_single to Atom_twotied.} *)

let f_ss = atom_twotied_symbol_of_atom_twotied_single_single_symbol Asss_t.F_ss;;

(** {9 Upgrading from H_ss through Atom_twotied_single_single to Atom_twotied.} *)

let h_ss = atom_twotied_symbol_of_atom_twotied_single_single_symbol Asss_t.H_ss;;

(** {6 Upgrading from Atom_twotied_single_conjugated to Atom_twotied.} *)

let atom_twotied_symbol_of_atom_twotied_single_conjugated_symbol smb_asc =
  Atws_t.Atom_twotied_single_conjugated_symbol smb_asc
;;

(** {9 Upgrading from N_sc through Atom_twotied_single_conjugated to Atom_twotied.} *)

let n_sc = atom_twotied_symbol_of_atom_twotied_single_conjugated_symbol Ascs_t.N_sc;;

(** {9 Upgrading from O_sc through Atom_twotied_single_conjugated to Atom_twotied.} *)

let o_sc = atom_twotied_symbol_of_atom_twotied_single_conjugated_symbol Ascs_t.O_sc;;

(** {6 Upgrading from Atom_twotied_single_double to Atom_twotied.} *)

let atom_twotied_symbol_of_atom_twotied_single_double_symbol smb_asd =
  Atws_t.Atom_twotied_single_double_symbol smb_asd
;;

(** {9 Upgrading from N_sd through Atom_twotied_single_double to Atom_twotied.} *)

let n_sd = atom_twotied_symbol_of_atom_twotied_single_double_symbol Asds_t.N_sd;;

(** {6 Upgrading from Atom_twotied_single_triple to Atom_twotied.} *)

let atom_twotied_symbol_of_atom_twotied_single_triple_symbol smb_ast =
  Atws_t.Atom_twotied_single_triple_symbol smb_ast
;;

(** {9 Upgrading from C_st through Atom_twotied_single_triple to Atom_twotied.} *)

let c_st = atom_twotied_symbol_of_atom_twotied_single_triple_symbol Asts_t.C_st;;

(** {9 Upgrading from N_st through Atom_twotied_single_triple to Atom_twotied.} *)

let n_st = atom_twotied_symbol_of_atom_twotied_single_triple_symbol Asts_t.N_st;;

(** {6 Upgrading from Atom_twotied_conjugated_conjugated to Atom_twotied.} *)

let atom_twotied_symbol_of_atom_twotied_conjugated_conjugated_symbol smb_acc =
  Atws_t.Atom_twotied_conjugated_conjugated_symbol smb_acc
;;

(** {9 Upgrading from N_cc through Atom_twotied_conjugated_conjugated to Atom_twotied.} *)

let n_cc = atom_twotied_symbol_of_atom_twotied_conjugated_conjugated_symbol Accs_t.N_cc;;

(** {9 Upgrading from O_cc through Atom_twotied_conjugated_conjugated to Atom_twotied.} *)

let o_cc = atom_twotied_symbol_of_atom_twotied_conjugated_conjugated_symbol Accs_t.O_cc;;

(** {6 Upgrading from Atom_twotied_conjugated_double to Atom_twotied.} *)

let atom_twotied_symbol_of_atom_twotied_conjugated_double_symbol smb_acd =
  Atws_t.Atom_twotied_conjugated_double_symbol smb_acd
;;

(** {9 Upgrading from C_cd through Atom_twotied_conjugated_double to Atom_twotied.} *)

let c_cd = atom_twotied_symbol_of_atom_twotied_conjugated_double_symbol Acds_t.C_cd;;

(** {6 Upgrading from Atom_twotied_double_double to Atom_twotied.} *)

let atom_twotied_symbol_of_atom_twotied_double_double_symbol smb_add =
  Atws_t.Atom_twotied_double_double_symbol smb_add
;;

(** {9 Upgrading from C_dd through Atom_twotied_double_double to Atom_twotied.} *)

let c_dd = atom_twotied_symbol_of_atom_twotied_double_double_symbol Adds_t.C_dd;;

(** {9 Upgrading from S_dd through Atom_twotied_double_double to Atom_twotied.} *)

let s_dd = atom_twotied_symbol_of_atom_twotied_double_double_symbol Adds_t.S_dd;;

(** created by ./do_entitysum_symbol_v_ml.sh atom_twotied 12 January 2011. *)

