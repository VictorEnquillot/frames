(** {3 A Symbol for a Molecule_aminoacid_tlc.} *)

let nam_mod = "Molecule_aminoacid_tlc_symbol_v";;

(** {6 Modules.} *)

module Mafts_t = Molecule_aminoacid_fragmented_tlc_symbol_t
module Mafts_v = Molecule_aminoacid_fragmented_tlc_symbol_v
module Marts_t = Molecule_aminoacid_regular_tlc_symbol_t
module Marts_v = Molecule_aminoacid_regular_tlc_symbol_v
module Masts_t = Molecule_aminoacid_segmented_tlc_symbol_t
module Masts_v = Molecule_aminoacid_segmented_tlc_symbol_v
module Mats_t = Molecule_aminoacid_tlc_symbol_t

(** {6 Displaying.} *)

let name = function
  | Mats_t.Molecule_aminoacid_segmented_tlc_symbol smb_ast -> 
      Masts_v.name smb_ast
  | Mats_t.Molecule_aminoacid_fragmented_tlc_symbol smb_aft -> 
      Mafts_v.name smb_aft
;;

let print ppf = function
  | Mats_t.Molecule_aminoacid_segmented_tlc_symbol smb_ast -> 
      Masts_v.print ppf smb_ast
  | Mats_t.Molecule_aminoacid_fragmented_tlc_symbol smb_aft -> 
      Mafts_v.print ppf smb_aft
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found molecule_aminoacid_tlc_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Molecule_aminoacid_segmented_tlc from Molecule_aminoacid_tlc.} *)

let molecule_aminoacid_segmented_tlc_symbol_off_molecule_aminoacid_tlc_symbol = function
  | Mats_t.Molecule_aminoacid_segmented_tlc_symbol smb_ast -> smb_ast
  | s ->  print_fatal_error
      "molecule_aminoacid_segmented_tlc_symbol_off_molecule_aminoacid_tlc_symbol"
      "Molecule_aminoacid_segmented_tlc_symbol" (name s)
;;

(** {9 Extracting Gly from Molecule_aminoacid_segmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from gly 0. *)

(** {6 Extracting Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

let molecule_aminoacid_fragmented_tlc_symbol_off_molecule_aminoacid_tlc_symbol = function
  | Mats_t.Molecule_aminoacid_fragmented_tlc_symbol smb_aft -> smb_aft
  | s ->  print_fatal_error
      "molecule_aminoacid_fragmented_tlc_symbol_off_molecule_aminoacid_tlc_symbol"
      "Molecule_aminoacid_fragmented_tlc_symbol" (name s)
;;

(** {9 Extracting Pro from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from pro 0. *)

(** {9 Extracting Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

let molecule_aminoacid_regular_tlc_symbol_off_molecule_aminoacid_tlc_symbol smb_amt =
  let smb_aft = molecule_aminoacid_fragmented_tlc_symbol_off_molecule_aminoacid_tlc_symbol smb_amt in
    Mafts_v.molecule_aminoacid_regular_tlc_symbol_off_molecule_aminoacid_fragmented_tlc_symbol smb_aft
;;

(** {12 Extracting Ala from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Ala 0. *)

(** {12 Extracting Arg from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Arg 0. *)

(** {12 Extracting Asn from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Asn 0. *)

(** {12 Extracting Asp from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Asp 0. *)

(** {12 Extracting Cys from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Cys 0. *)

(** {12 Extracting Gln from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Gln 0. *)

(** {12 Extracting Glu from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Glu 0. *)

(** {12 Extracting His from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from His 0. *)

(** {12 Extracting Ile from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Ile 0. *)

(** {12 Extracting Leu from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Leu 0. *)

(** {12 Extracting Lys from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Lys 0. *)

(** {12 Extracting Met from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Met 0. *)

(** {12 Extracting Phe from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Phe 0. *)

(** {12 Extracting Ser from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Ser 0. *)

(** {12 Extracting Thr from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Thr 0. *)

(** {12 Extracting Trp from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Trp 0. *)

(** {12 Extracting Tyr from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Tyr 0. *)

(** {12 Extracting Val from Molecule_aminoacid_regular_tlc from Molecule_aminoacid_fragmented_tlc from Molecule_aminoacid_tlc.} *)

(* No Extraction from Val 0. *)

(** {6 Querying.} *)

(** {6 Querying Molecule_aminoacid_segmented_tlc in Molecule_aminoacid_tlc.} *)

let is_molecule_aminoacid_segmented_tlc_symbol_off_molecule_aminoacid_tlc_symbol = function
  | Mats_t.Molecule_aminoacid_segmented_tlc_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Gly in Molecule_aminoacid_segmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from gly 0. *)


(** {6 Querying Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

let is_molecule_aminoacid_fragmented_tlc_symbol_off_molecule_aminoacid_tlc_symbol = function
  | Mats_t.Molecule_aminoacid_fragmented_tlc_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Pro in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from pro 0. *)


(** {9 Querying Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

let is_molecule_aminoacid_regular_tlc_symbol_off_molecule_aminoacid_tlc_symbol smb_amt =
  if not (is_molecule_aminoacid_fragmented_tlc_symbol_off_molecule_aminoacid_tlc_symbol smb_amt)
  then false
  else
    begin
      let smb_aft = molecule_aminoacid_fragmented_tlc_symbol_off_molecule_aminoacid_tlc_symbol smb_amt in
      Mafts_v.is_molecule_aminoacid_regular_tlc_symbol_off_molecule_aminoacid_fragmented_tlc_symbol smb_aft
    end
;;

(** {12 Querying Ala in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Ala 0. *)

(** {12 Querying Arg in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Arg 0. *)

(** {12 Querying Asn in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Asn 0. *)

(** {12 Querying Asp in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Asp 0. *)

(** {12 Querying Cys in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Cys 0. *)

(** {12 Querying Gln in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Gln 0. *)

(** {12 Querying Glu in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Glu 0. *)

(** {12 Querying His in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from His 0. *)

(** {12 Querying Ile in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Ile 0. *)

(** {12 Querying Leu in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Leu 0. *)

(** {12 Querying Lys in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Lys 0. *)

(** {12 Querying Met in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Met 0. *)

(** {12 Querying Phe in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Phe 0. *)

(** {12 Querying Ser in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Ser 0. *)

(** {12 Querying Thr in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Thr 0. *)

(** {12 Querying Trp in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Trp 0. *)

(** {12 Querying Tyr in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Tyr 0. *)

(** {12 Querying Val in Molecule_aminoacid_regular_tlc in Molecule_aminoacid_fragmented_tlc in Molecule_aminoacid_tlc.} *)

(* No Query from Val 0. *)

(** {6 Upgrading from Molecule_aminoacid_segmented_tlc to Molecule_aminoacid_tlc.} *)

let molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_segmented_tlc_symbol smb_ast =
  Mats_t.Molecule_aminoacid_segmented_tlc_symbol smb_ast
;;

(** {9 Upgrading from Gly through Molecule_aminoacid_segmented_tlc to Molecule_aminoacid_tlc.} *)

let gly = molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_segmented_tlc_symbol Masts_t.Gly;;

(** {6 Upgrading from Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

let molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_fragmented_tlc_symbol smb_aft =
  Mats_t.Molecule_aminoacid_fragmented_tlc_symbol smb_aft
;;

(** {9 Upgrading from Pro through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

let pro = molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_fragmented_tlc_symbol Mafts_t.Pro;;

(** {9 Upgrading from Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

let molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol smb_art =
  let smb_aft = Mafts_v.molecule_aminoacid_fragmented_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol smb_art in
  molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_fragmented_tlc_symbol smb_aft
;;

(** {12 Upgrading from Ala through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

let ala = molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Ala;;

(** {12 Upgrading from Arg through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

let arg = molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Arg;;

(** {12 Upgrading from Asn through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

let asn = molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Asn;;

(** {12 Upgrading from Asp through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

let asp = molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Asp;;

(** {12 Upgrading from Cys through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

let cys = molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Cys;;

(** {12 Upgrading from Gln through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

let gln = molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Gln;;

(** {12 Upgrading from Glu through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

let glu = molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Glu;;

(** {12 Upgrading from His through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

let his = molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.His;;

(** {12 Upgrading from Ile through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

let ile = molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Ile;;

(** {12 Upgrading from Leu through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

let leu = molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Leu;;

(** {12 Upgrading from Lys through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

let lys = molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Lys;;

(** {12 Upgrading from Met through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

let met = molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Met;;

(** {12 Upgrading from Phe through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

let phe = molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Phe;;

(** {12 Upgrading from Ser through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

let ser = molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Ser;;

(** {12 Upgrading from Thr through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

let thr = molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Thr;;

(** {12 Upgrading from Trp through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

let trp = molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Trp;;

(** {12 Upgrading from Tyr through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

let tyr = molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Tyr;;

(** {12 Upgrading from Val through Molecule_aminoacid_regular_tlc through Molecule_aminoacid_fragmented_tlc to Molecule_aminoacid_tlc.} *)

let v_l = molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol Marts_t.Val;;

(** {6 Upgrading.} *)

module Mas_t = Molecule_aminoacid_symbol_t

let molecule_aminoacid_symbol_of_molecule_aminoacid_tlc_symbol = function
  | Mats_t.Molecule_aminoacid_segmented_tlc_symbol smb -> 
      Mas_t.Molecule_aminoacid_segmented_symbol
	(Masts_v.molecule_aminoacid_segmented_symbol_of_molecule_aminoacid_segmented_tlc_symbol smb)

  | Mats_t.Molecule_aminoacid_fragmented_tlc_symbol smb_atn ->
      Mas_t.Molecule_aminoacid_fragmented_symbol
	(Mafts_v.molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_tlc_symbol smb_atn)
;;

let molecule_aminoacid_tlc_symbol_of_string str = 
  let stc = String.capitalize (String.lowercase str) in
  match stc with
  | "Gly" -> gly
  | "Pro" -> pro
  | _ ->  
      molecule_aminoacid_tlc_symbol_of_molecule_aminoacid_regular_tlc_symbol 
	(Marts_v.molecule_aminoacid_regular_tlc_symbol_of_string stc)
;;
	
let read ib =
  let str = Scanf.bscanf ib "%s" (fun s -> s) in
  Scanf.sscanf str "%3s" molecule_aminoacid_tlc_symbol_of_string
;;

(** created by ./do_entitysum_symbol_v_ml.sh molecule_aminoacid_tlc 13 January 2011. *)

