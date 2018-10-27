(** {3 A Symbol for a Ribonucleotide.} *)

let nam_mod = "Ribonucleotide_symbol_v";;

(** {6 Modules.} *)

module Rncs_t = Ribonucleotide_symbol_t
module Rpus_t = Ribonucleotide_purinic_symbol_t
module Rpus_v = Ribonucleotide_purinic_symbol_v
module Rpys_t = Ribonucleotide_pyrimidinic_symbol_t
module Rpys_v = Ribonucleotide_pyrimidinic_symbol_v

(** {6 Displaying.} *)

let name = function
  | Rncs_t.Ribonucleotide_purinic_symbol smb_rpu -> 
      Rpus_v.name smb_rpu
  | Rncs_t.Ribonucleotide_pyrimidinic_symbol smb_rpy -> 
      Rpys_v.name smb_rpy
;;

let print ppf = function
  | Rncs_t.Ribonucleotide_purinic_symbol smb_rpu -> 
      Rpus_v.print ppf smb_rpu
  | Rncs_t.Ribonucleotide_pyrimidinic_symbol smb_rpy -> 
      Rpys_v.print ppf smb_rpy
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found ribonucleotide_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Ribonucleotide_purinic from Ribonucleotide.} *)

let ribonucleotide_purinic_symbol_off_ribonucleotide_symbol = function
  | Rncs_t.Ribonucleotide_purinic_symbol smb_rpu -> smb_rpu
  | s ->  print_fatal_error
      "ribonucleotide_purinic_symbol_off_ribonucleotide_symbol"
      "Ribonucleotide_purinic_symbol" (name s)
;;

(** {9 Extracting Adenosine from Ribonucleotide_purinic from Ribonucleotide.} *)

(* No Extraction from Adenosine 0. *)

(** {9 Extracting Guanosine from Ribonucleotide_purinic from Ribonucleotide.} *)

(* No Extraction from Guanosine 0. *)

(** {6 Extracting Ribonucleotide_pyrimidinic from Ribonucleotide.} *)

let ribonucleotide_pyrimidinic_symbol_off_ribonucleotide_symbol = function
  | Rncs_t.Ribonucleotide_pyrimidinic_symbol smb_rpy -> smb_rpy
  | s ->  print_fatal_error
      "ribonucleotide_pyrimidinic_symbol_off_ribonucleotide_symbol"
      "Ribonucleotide_pyrimidinic_symbol" (name s)
;;

(** {9 Extracting Uridine from Ribonucleotide_pyrimidinic from Ribonucleotide.} *)

(* No Extraction from Uridine 0. *)

(** {9 Extracting Cytidine from Ribonucleotide_pyrimidinic from Ribonucleotide.} *)

(* No Extraction from Cytidine 0. *)

(** {6 Querying.} *)

(** {6 Querying Ribonucleotide_purinic in Ribonucleotide.} *)

let is_ribonucleotide_purinic_symbol_off_ribonucleotide_symbol = function
  | Rncs_t.Ribonucleotide_purinic_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Adenosine in Ribonucleotide_purinic in Ribonucleotide.} *)

(* No Query from Adenosine 0. *)


(** {9 Querying Guanosine in Ribonucleotide_purinic in Ribonucleotide.} *)

(* No Query from Guanosine 0. *)


(** {6 Querying Ribonucleotide_pyrimidinic in Ribonucleotide.} *)

let is_ribonucleotide_pyrimidinic_symbol_off_ribonucleotide_symbol = function
  | Rncs_t.Ribonucleotide_pyrimidinic_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Uridine in Ribonucleotide_pyrimidinic in Ribonucleotide.} *)

(* No Query from Uridine 0. *)


(** {9 Querying Cytidine in Ribonucleotide_pyrimidinic in Ribonucleotide.} *)

(* No Query from Cytidine 0. *)


(** {6 Upgrading from Ribonucleotide_purinic to Ribonucleotide.} *)

let ribonucleotide_symbol_of_ribonucleotide_purinic_symbol smb_rpu =
  Rncs_t.Ribonucleotide_purinic_symbol smb_rpu
;;

(** {9 Upgrading from Adenosine through Ribonucleotide_purinic to Ribonucleotide.} *)

let adenosine = ribonucleotide_symbol_of_ribonucleotide_purinic_symbol Rpus_t.Adenosine;;

(** {9 Upgrading from Guanosine through Ribonucleotide_purinic to Ribonucleotide.} *)

let guanosine = ribonucleotide_symbol_of_ribonucleotide_purinic_symbol Rpus_t.Guanosine;;

(** {6 Upgrading from Ribonucleotide_pyrimidinic to Ribonucleotide.} *)

let ribonucleotide_symbol_of_ribonucleotide_pyrimidinic_symbol smb_rpy =
  Rncs_t.Ribonucleotide_pyrimidinic_symbol smb_rpy
;;

(** {9 Upgrading from Uridine through Ribonucleotide_pyrimidinic to Ribonucleotide.} *)

let uridine = ribonucleotide_symbol_of_ribonucleotide_pyrimidinic_symbol Rpys_t.Uridine;;

(** {9 Upgrading from Cytidine through Ribonucleotide_pyrimidinic to Ribonucleotide.} *)

let cytidine = ribonucleotide_symbol_of_ribonucleotide_pyrimidinic_symbol Rpys_t.Cytidine;;

(** created by ./do_entitysum_symbol_v_ml.sh ribonucleotide 12 January 2011. *)

