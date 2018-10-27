(** {3 A Symbol for a Nucleotide.} *)

let nam_mod = "Nucleotide_symbol_v";;

(** {6 Modules.} *)

module Dncs_t = Deoxyribonucleotide_symbol_t
module Dncs_v = Deoxyribonucleotide_symbol_v
module Dpus_t = Deoxyribonucleotide_purinic_symbol_t
module Dpus_v = Deoxyribonucleotide_purinic_symbol_v
module Dpys_t = Deoxyribonucleotide_pyrimidinic_symbol_t
module Dpys_v = Deoxyribonucleotide_pyrimidinic_symbol_v
module Nts_t = Nucleotide_symbol_t
module Rncs_t = Ribonucleotide_symbol_t
module Rncs_v = Ribonucleotide_symbol_v
module Rpus_t = Ribonucleotide_purinic_symbol_t
module Rpus_v = Ribonucleotide_purinic_symbol_v
module Rpys_t = Ribonucleotide_pyrimidinic_symbol_t
module Rpys_v = Ribonucleotide_pyrimidinic_symbol_v

(** {6 Displaying.} *)

let name = function
  | Nts_t.Ribonucleotide_symbol smb_rnc -> 
      Rncs_v.name smb_rnc
  | Nts_t.Deoxyribonucleotide_symbol smb_dnc -> 
      Dncs_v.name smb_dnc
;;

let print ppf = function
  | Nts_t.Ribonucleotide_symbol smb_rnc -> 
      Rncs_v.print ppf smb_rnc
  | Nts_t.Deoxyribonucleotide_symbol smb_dnc -> 
      Dncs_v.print ppf smb_dnc
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found nucleotide_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Ribonucleotide from Nucleotide.} *)

let ribonucleotide_symbol_off_nucleotide_symbol = function
  | Nts_t.Ribonucleotide_symbol smb_rnc -> smb_rnc
  | s ->  print_fatal_error
      "ribonucleotide_symbol_off_nucleotide_symbol"
      "Ribonucleotide_symbol" (name s)
;;

(** {9 Extracting Ribonucleotide_purinic from Ribonucleotide from Nucleotide.} *)

let ribonucleotide_purinic_symbol_off_nucleotide_symbol smb_nct =
  let smb_rnc = ribonucleotide_symbol_off_nucleotide_symbol smb_nct in
    Rncs_v.ribonucleotide_purinic_symbol_off_ribonucleotide_symbol smb_rnc
;;

(** {12 Extracting Adenosine from Ribonucleotide_purinic from Ribonucleotide from Nucleotide.} *)

(* No Extraction from Adenosine 0. *)

(** {12 Extracting Guanosine from Ribonucleotide_purinic from Ribonucleotide from Nucleotide.} *)

(* No Extraction from Guanosine 0. *)

(** {9 Extracting Ribonucleotide_pyrimidinic from Ribonucleotide from Nucleotide.} *)

let ribonucleotide_pyrimidinic_symbol_off_nucleotide_symbol smb_nct =
  let smb_rnc = ribonucleotide_symbol_off_nucleotide_symbol smb_nct in
    Rncs_v.ribonucleotide_pyrimidinic_symbol_off_ribonucleotide_symbol smb_rnc
;;

(** {12 Extracting Uridine from Ribonucleotide_pyrimidinic from Ribonucleotide from Nucleotide.} *)

(* No Extraction from Uridine 0. *)

(** {12 Extracting Cytidine from Ribonucleotide_pyrimidinic from Ribonucleotide from Nucleotide.} *)

(* No Extraction from Cytidine 0. *)

(** {6 Extracting Deoxyribonucleotide from Nucleotide.} *)

let deoxyribonucleotide_symbol_off_nucleotide_symbol = function
  | Nts_t.Deoxyribonucleotide_symbol smb_dnc -> smb_dnc
  | s ->  print_fatal_error
      "deoxyribonucleotide_symbol_off_nucleotide_symbol"
      "Deoxyribonucleotide_symbol" (name s)
;;

(** {9 Extracting Deoxyribonucleotide_purinic from Deoxyribonucleotide from Nucleotide.} *)

let deoxyribonucleotide_purinic_symbol_off_nucleotide_symbol smb_nct =
  let smb_dnc = deoxyribonucleotide_symbol_off_nucleotide_symbol smb_nct in
    Dncs_v.deoxyribonucleotide_purinic_symbol_off_deoxyribonucleotide_symbol smb_dnc
;;

(** {12 Extracting Deoxyadenosine from Deoxyribonucleotide_purinic from Deoxyribonucleotide from Nucleotide.} *)

(* No Extraction from Deoxyadenosine 0. *)

(** {12 Extracting Deoxyguanosine from Deoxyribonucleotide_purinic from Deoxyribonucleotide from Nucleotide.} *)

(* No Extraction from Deoxyguanosine 0. *)

(** {9 Extracting Deoxyribonucleotide_pyrimidinic from Deoxyribonucleotide from Nucleotide.} *)

let deoxyribonucleotide_pyrimidinic_symbol_off_nucleotide_symbol smb_nct =
  let smb_dnc = deoxyribonucleotide_symbol_off_nucleotide_symbol smb_nct in
    Dncs_v.deoxyribonucleotide_pyrimidinic_symbol_off_deoxyribonucleotide_symbol smb_dnc
;;

(** {12 Extracting Deoxyuridine from Deoxyribonucleotide_pyrimidinic from Deoxyribonucleotide from Nucleotide.} *)

(* No Extraction from Deoxyuridine 0. *)

(** {12 Extracting Deoxycytidine from Deoxyribonucleotide_pyrimidinic from Deoxyribonucleotide from Nucleotide.} *)

(* No Extraction from Deoxycytidine 0. *)

(** {12 Extracting Thymidine from Deoxyribonucleotide_pyrimidinic from Deoxyribonucleotide from Nucleotide.} *)

(* No Extraction from Thymidine 0. *)

(** {6 Querying.} *)

(** {6 Querying Ribonucleotide in Nucleotide.} *)

let is_ribonucleotide_symbol_off_nucleotide_symbol = function
  | Nts_t.Ribonucleotide_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Ribonucleotide_purinic in Ribonucleotide in Nucleotide.} *)

let is_ribonucleotide_purinic_symbol_off_nucleotide_symbol smb_nct =
  if not (is_ribonucleotide_symbol_off_nucleotide_symbol smb_nct)
  then false
  else
    begin
      let smb_rnc = ribonucleotide_symbol_off_nucleotide_symbol smb_nct in
      Rncs_v.is_ribonucleotide_purinic_symbol_off_ribonucleotide_symbol smb_rnc
    end
;;

(** {12 Querying Adenosine in Ribonucleotide_purinic in Ribonucleotide in Nucleotide.} *)

(* No Query from Adenosine 0. *)

(** {12 Querying Guanosine in Ribonucleotide_purinic in Ribonucleotide in Nucleotide.} *)

(* No Query from Guanosine 0. *)

(** {9 Querying Ribonucleotide_pyrimidinic in Ribonucleotide in Nucleotide.} *)

let is_ribonucleotide_pyrimidinic_symbol_off_nucleotide_symbol smb_nct =
  if not (is_ribonucleotide_symbol_off_nucleotide_symbol smb_nct)
  then false
  else
    begin
      let smb_rnc = ribonucleotide_symbol_off_nucleotide_symbol smb_nct in
      Rncs_v.is_ribonucleotide_pyrimidinic_symbol_off_ribonucleotide_symbol smb_rnc
    end
;;

(** {12 Querying Uridine in Ribonucleotide_pyrimidinic in Ribonucleotide in Nucleotide.} *)

(* No Query from Uridine 0. *)

(** {12 Querying Cytidine in Ribonucleotide_pyrimidinic in Ribonucleotide in Nucleotide.} *)

(* No Query from Cytidine 0. *)

(** {6 Querying Deoxyribonucleotide in Nucleotide.} *)

let is_deoxyribonucleotide_symbol_off_nucleotide_symbol = function
  | Nts_t.Deoxyribonucleotide_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Deoxyribonucleotide_purinic in Deoxyribonucleotide in Nucleotide.} *)

let is_deoxyribonucleotide_purinic_symbol_off_nucleotide_symbol smb_nct =
  if not (is_deoxyribonucleotide_symbol_off_nucleotide_symbol smb_nct)
  then false
  else
    begin
      let smb_dnc = deoxyribonucleotide_symbol_off_nucleotide_symbol smb_nct in
      Dncs_v.is_deoxyribonucleotide_purinic_symbol_off_deoxyribonucleotide_symbol smb_dnc
    end
;;

(** {12 Querying Deoxyadenosine in Deoxyribonucleotide_purinic in Deoxyribonucleotide in Nucleotide.} *)

(* No Query from Deoxyadenosine 0. *)

(** {12 Querying Deoxyguanosine in Deoxyribonucleotide_purinic in Deoxyribonucleotide in Nucleotide.} *)

(* No Query from Deoxyguanosine 0. *)

(** {9 Querying Deoxyribonucleotide_pyrimidinic in Deoxyribonucleotide in Nucleotide.} *)

let is_deoxyribonucleotide_pyrimidinic_symbol_off_nucleotide_symbol smb_nct =
  if not (is_deoxyribonucleotide_symbol_off_nucleotide_symbol smb_nct)
  then false
  else
    begin
      let smb_dnc = deoxyribonucleotide_symbol_off_nucleotide_symbol smb_nct in
      Dncs_v.is_deoxyribonucleotide_pyrimidinic_symbol_off_deoxyribonucleotide_symbol smb_dnc
    end
;;

(** {12 Querying Deoxyuridine in Deoxyribonucleotide_pyrimidinic in Deoxyribonucleotide in Nucleotide.} *)

(* No Query from Deoxyuridine 0. *)

(** {12 Querying Deoxycytidine in Deoxyribonucleotide_pyrimidinic in Deoxyribonucleotide in Nucleotide.} *)

(* No Query from Deoxycytidine 0. *)

(** {12 Querying Thymidine in Deoxyribonucleotide_pyrimidinic in Deoxyribonucleotide in Nucleotide.} *)

(* No Query from Thymidine 0. *)

(** {6 Upgrading from Ribonucleotide to Nucleotide.} *)

let nucleotide_symbol_of_ribonucleotide_symbol smb_rnc =
  Nts_t.Ribonucleotide_symbol smb_rnc
;;

(** {9 Upgrading from Ribonucleotide_purinic through Ribonucleotide to Nucleotide.} *)

let nucleotide_symbol_of_ribonucleotide_purinic_symbol smb_rpu =
  let smb_rnc = Rncs_v.ribonucleotide_symbol_of_ribonucleotide_purinic_symbol smb_rpu in
  nucleotide_symbol_of_ribonucleotide_symbol smb_rnc
;;

(** {12 Upgrading from Adenosine through Ribonucleotide_purinic through Ribonucleotide to Nucleotide.} *)

let adenosine = nucleotide_symbol_of_ribonucleotide_purinic_symbol Rpus_t.Adenosine;;

(** {12 Upgrading from Guanosine through Ribonucleotide_purinic through Ribonucleotide to Nucleotide.} *)

let guanosine = nucleotide_symbol_of_ribonucleotide_purinic_symbol Rpus_t.Guanosine;;

(** {9 Upgrading from Ribonucleotide_pyrimidinic through Ribonucleotide to Nucleotide.} *)

let nucleotide_symbol_of_ribonucleotide_pyrimidinic_symbol smb_rpy =
  let smb_rnc = Rncs_v.ribonucleotide_symbol_of_ribonucleotide_pyrimidinic_symbol smb_rpy in
  nucleotide_symbol_of_ribonucleotide_symbol smb_rnc
;;

(** {12 Upgrading from Uridine through Ribonucleotide_pyrimidinic through Ribonucleotide to Nucleotide.} *)

let uridine = nucleotide_symbol_of_ribonucleotide_pyrimidinic_symbol Rpys_t.Uridine;;

(** {12 Upgrading from Cytidine through Ribonucleotide_pyrimidinic through Ribonucleotide to Nucleotide.} *)

let cytidine = nucleotide_symbol_of_ribonucleotide_pyrimidinic_symbol Rpys_t.Cytidine;;

(** {6 Upgrading from Deoxyribonucleotide to Nucleotide.} *)

let nucleotide_symbol_of_deoxyribonucleotide_symbol smb_dnc =
  Nts_t.Deoxyribonucleotide_symbol smb_dnc
;;

(** {9 Upgrading from Deoxyribonucleotide_purinic through Deoxyribonucleotide to Nucleotide.} *)

let nucleotide_symbol_of_deoxyribonucleotide_purinic_symbol smb_dpu =
  let smb_dnc = Dncs_v.deoxyribonucleotide_symbol_of_deoxyribonucleotide_purinic_symbol smb_dpu in
  nucleotide_symbol_of_deoxyribonucleotide_symbol smb_dnc
;;

(** {12 Upgrading from Deoxyadenosine through Deoxyribonucleotide_purinic through Deoxyribonucleotide to Nucleotide.} *)

let deoxyadenosine = nucleotide_symbol_of_deoxyribonucleotide_purinic_symbol Dpus_t.Deoxyadenosine;;

(** {12 Upgrading from Deoxyguanosine through Deoxyribonucleotide_purinic through Deoxyribonucleotide to Nucleotide.} *)

let deoxyguanosine = nucleotide_symbol_of_deoxyribonucleotide_purinic_symbol Dpus_t.Deoxyguanosine;;

(** {9 Upgrading from Deoxyribonucleotide_pyrimidinic through Deoxyribonucleotide to Nucleotide.} *)

let nucleotide_symbol_of_deoxyribonucleotide_pyrimidinic_symbol smb_dpy =
  let smb_dnc = Dncs_v.deoxyribonucleotide_symbol_of_deoxyribonucleotide_pyrimidinic_symbol smb_dpy in
  nucleotide_symbol_of_deoxyribonucleotide_symbol smb_dnc
;;

(** {12 Upgrading from Deoxyuridine through Deoxyribonucleotide_pyrimidinic through Deoxyribonucleotide to Nucleotide.} *)

let deoxyuridine = nucleotide_symbol_of_deoxyribonucleotide_pyrimidinic_symbol Dpys_t.Deoxyuridine;;

(** {12 Upgrading from Deoxycytidine through Deoxyribonucleotide_pyrimidinic through Deoxyribonucleotide to Nucleotide.} *)

let deoxycytidine = nucleotide_symbol_of_deoxyribonucleotide_pyrimidinic_symbol Dpys_t.Deoxycytidine;;

(** {12 Upgrading from Thymidine through Deoxyribonucleotide_pyrimidinic through Deoxyribonucleotide to Nucleotide.} *)

let thymidine = nucleotide_symbol_of_deoxyribonucleotide_pyrimidinic_symbol Dpys_t.Thymidine;;

(** created by ./do_entitysum_symbol_v_ml.sh nucleotide 12 January 2011. *)

