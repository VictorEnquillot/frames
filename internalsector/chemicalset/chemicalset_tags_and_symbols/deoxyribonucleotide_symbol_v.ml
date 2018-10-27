(** {3 A Symbol for a Deoxyribonucleotide.} *)

let nam_mod = "Deoxyribonucleotide_symbol_v";;

(** {6 Modules.} *)

module Dncs_t = Deoxyribonucleotide_symbol_t
module Dpus_t = Deoxyribonucleotide_purinic_symbol_t
module Dpus_v = Deoxyribonucleotide_purinic_symbol_v
module Dpys_t = Deoxyribonucleotide_pyrimidinic_symbol_t
module Dpys_v = Deoxyribonucleotide_pyrimidinic_symbol_v

(** {6 Displaying.} *)

let name = function
  | Dncs_t.Deoxyribonucleotide_purinic_symbol smb_dpu -> 
      Dpus_v.name smb_dpu
  | Dncs_t.Deoxyribonucleotide_pyrimidinic_symbol smb_dpy -> 
      Dpys_v.name smb_dpy
;;

let print ppf = function
  | Dncs_t.Deoxyribonucleotide_purinic_symbol smb_dpu -> 
      Dpus_v.print ppf smb_dpu
  | Dncs_t.Deoxyribonucleotide_pyrimidinic_symbol smb_dpy -> 
      Dpys_v.print ppf smb_dpy
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found deoxyribonucleotide_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Deoxyribonucleotide_purinic from Deoxyribonucleotide.} *)

let deoxyribonucleotide_purinic_symbol_off_deoxyribonucleotide_symbol = function
  | Dncs_t.Deoxyribonucleotide_purinic_symbol smb_dpu -> smb_dpu
  | s ->  print_fatal_error
      "deoxyribonucleotide_purinic_symbol_off_deoxyribonucleotide_symbol"
      "Deoxyribonucleotide_purinic_symbol" (name s)
;;

(** {9 Extracting Deoxyadenosine from Deoxyribonucleotide_purinic from Deoxyribonucleotide.} *)

(* No Extraction from Deoxyadenosine 0. *)

(** {9 Extracting Deoxyguanosine from Deoxyribonucleotide_purinic from Deoxyribonucleotide.} *)

(* No Extraction from Deoxyguanosine 0. *)

(** {6 Extracting Deoxyribonucleotide_pyrimidinic from Deoxyribonucleotide.} *)

let deoxyribonucleotide_pyrimidinic_symbol_off_deoxyribonucleotide_symbol = function
  | Dncs_t.Deoxyribonucleotide_pyrimidinic_symbol smb_dpy -> smb_dpy
  | s ->  print_fatal_error
      "deoxyribonucleotide_pyrimidinic_symbol_off_deoxyribonucleotide_symbol"
      "Deoxyribonucleotide_pyrimidinic_symbol" (name s)
;;

(** {9 Extracting Deoxyuridine from Deoxyribonucleotide_pyrimidinic from Deoxyribonucleotide.} *)

(* No Extraction from Deoxyuridine 0. *)

(** {9 Extracting Deoxycytidine from Deoxyribonucleotide_pyrimidinic from Deoxyribonucleotide.} *)

(* No Extraction from Deoxycytidine 0. *)

(** {9 Extracting Thymidine from Deoxyribonucleotide_pyrimidinic from Deoxyribonucleotide.} *)

(* No Extraction from Thymidine 0. *)

(** {6 Querying.} *)

(** {6 Querying Deoxyribonucleotide_purinic in Deoxyribonucleotide.} *)

let is_deoxyribonucleotide_purinic_symbol_off_deoxyribonucleotide_symbol = function
  | Dncs_t.Deoxyribonucleotide_purinic_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Deoxyadenosine in Deoxyribonucleotide_purinic in Deoxyribonucleotide.} *)

(* No Query from Deoxyadenosine 0. *)


(** {9 Querying Deoxyguanosine in Deoxyribonucleotide_purinic in Deoxyribonucleotide.} *)

(* No Query from Deoxyguanosine 0. *)


(** {6 Querying Deoxyribonucleotide_pyrimidinic in Deoxyribonucleotide.} *)

let is_deoxyribonucleotide_pyrimidinic_symbol_off_deoxyribonucleotide_symbol = function
  | Dncs_t.Deoxyribonucleotide_pyrimidinic_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Deoxyuridine in Deoxyribonucleotide_pyrimidinic in Deoxyribonucleotide.} *)

(* No Query from Deoxyuridine 0. *)


(** {9 Querying Deoxycytidine in Deoxyribonucleotide_pyrimidinic in Deoxyribonucleotide.} *)

(* No Query from Deoxycytidine 0. *)


(** {9 Querying Thymidine in Deoxyribonucleotide_pyrimidinic in Deoxyribonucleotide.} *)

(* No Query from Thymidine 0. *)


(** {6 Upgrading from Deoxyribonucleotide_purinic to Deoxyribonucleotide.} *)

let deoxyribonucleotide_symbol_of_deoxyribonucleotide_purinic_symbol smb_dpu =
  Dncs_t.Deoxyribonucleotide_purinic_symbol smb_dpu
;;

(** {9 Upgrading from Deoxyadenosine through Deoxyribonucleotide_purinic to Deoxyribonucleotide.} *)

let deoxyadenosine = deoxyribonucleotide_symbol_of_deoxyribonucleotide_purinic_symbol Dpus_t.Deoxyadenosine;;

(** {9 Upgrading from Deoxyguanosine through Deoxyribonucleotide_purinic to Deoxyribonucleotide.} *)

let deoxyguanosine = deoxyribonucleotide_symbol_of_deoxyribonucleotide_purinic_symbol Dpus_t.Deoxyguanosine;;

(** {6 Upgrading from Deoxyribonucleotide_pyrimidinic to Deoxyribonucleotide.} *)

let deoxyribonucleotide_symbol_of_deoxyribonucleotide_pyrimidinic_symbol smb_dpy =
  Dncs_t.Deoxyribonucleotide_pyrimidinic_symbol smb_dpy
;;

(** {9 Upgrading from Deoxyuridine through Deoxyribonucleotide_pyrimidinic to Deoxyribonucleotide.} *)

let deoxyuridine = deoxyribonucleotide_symbol_of_deoxyribonucleotide_pyrimidinic_symbol Dpys_t.Deoxyuridine;;

(** {9 Upgrading from Deoxycytidine through Deoxyribonucleotide_pyrimidinic to Deoxyribonucleotide.} *)

let deoxycytidine = deoxyribonucleotide_symbol_of_deoxyribonucleotide_pyrimidinic_symbol Dpys_t.Deoxycytidine;;

(** {9 Upgrading from Thymidine through Deoxyribonucleotide_pyrimidinic to Deoxyribonucleotide.} *)

let thymidine = deoxyribonucleotide_symbol_of_deoxyribonucleotide_pyrimidinic_symbol Dpys_t.Thymidine;;

(** created by ./do_entitysum_symbol_v_ml.sh deoxyribonucleotide 12 January 2011. *)

