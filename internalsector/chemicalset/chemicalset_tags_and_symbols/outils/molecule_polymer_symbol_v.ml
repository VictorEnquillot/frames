(** {3 A Symbol for a Molecule_polymer.} *)

let nam_cod = "molecule_polymer_symbol_v.ml";;


(** {6 Modules.} *)

module Erm_v = Error_messages_v
module Msg_v = Messages_v

module Pds_v = Polypeptide_symbol_v
module Nus_v = Nucleicacid_symbol_v


let name = function
  | Mps_v smb_pde ->
      Pds_v.name smb_pde
  | Mps_v smb_nud ->
      Nus_v.name smb_nud
;;


let print ppf = function
  | Mps_v smb_pde ->
      Pds_v.print ppf smb_pde
  | Mps_v smb_nud ->
      Nus_v.print ppf smb_nud
;;


(** {6 Extracting.} *)

let polypeptide_symbol_off_molecule_polymer_symbol = function
  | Mps_v smb_pde -> smb_pde
  | s -> Erm_v.print_fatal_error nam_cod
     "polypeptide_symbol_off_molecule_polymer_symbol"
     "Polypeptide_symbol"
     (name s)
    "check"
;;

let polypeptide_regular_symbol_off_molecule_polymer_symbol smb_mop =
  let smb_pde = polypeptide_symbol_off_molecule_polymer_symbol smb_mop in
    Pds_v_off_polypeptide_symbol smb_pde
;;

let polyproline_symbol_off_molecule_polymer_symbol smb_mop =
  let smb_pde = polypeptide_symbol_off_molecule_polymer_symbol smb_mop in
    Pds_v_off_polypeptide_symbol smb_pde
;;

let polyglycine_symbol_off_molecule_polymer_symbol smb_mop =
  let smb_pde = polypeptide_symbol_off_molecule_polymer_symbol smb_mop in
    Pds_v_off_polypeptide_symbol smb_pde
;;

let nucleicacid_symbol_off_molecule_polymer_symbol = function
  | Mps_v smb_nud -> smb_nud
  | s -> Erm_v.print_fatal_error nam_cod
     "nucleicacid_symbol_off_molecule_polymer_symbol"
     "Nucleicacid_symbol"
     (name s)
    "check"
;;


(** {6 Querying.} *)

let is_polypeptide_symbol_off_molecule_polymer_symbol = function
  | Molecule_polymer_symbol_t.Polypeptide_symbol _ -> true
  | _ -> false
;;

let is_polypeptide_regular_symbol_off_molecule_polymer_symbol smb_mop =
  if not (is_polypeptide_symbol_off_molecule_polymer_symbol smb_mop)
  then false
  else
    begin
  let smb_pde = polypeptide_symbol_off_molecule_polymer_symbol smb_mop in
      Pds_v.is_polypeptide_regular_symbol_off_polypeptide_symbol smb_pde
    end
;;

let is_polyproline_symbol_off_molecule_polymer_symbol smb_mop =
  if not (is_polypeptide_symbol_off_molecule_polymer_symbol smb_mop)
  then false
  else
    begin
  let smb_pde = polypeptide_symbol_off_molecule_polymer_symbol smb_mop in
      Pds_v.is_polyproline_symbol_off_polypeptide_symbol smb_pde
    end
;;

let is_polyglycine_symbol_off_molecule_polymer_symbol smb_mop =
  if not (is_polypeptide_symbol_off_molecule_polymer_symbol smb_mop)
  then false
  else
    begin
  let smb_pde = polypeptide_symbol_off_molecule_polymer_symbol smb_mop in
      Pds_v.is_polyglycine_symbol_off_polypeptide_symbol smb_pde
    end
;;

let is_nucleicacid_symbol_off_molecule_polymer_symbol = function
  | Molecule_polymer_symbol_t.Nucleicacid_symbol _ -> true
  | _ -> false
;;


(** {6 Upgrading.} *)

let molecule_polymer_symbol_of_polypeptide_symbol smb_pde =
Mps_v.polypeptide_symbol smb_pde
;;

let polypeptide_symbol_of_polypeptide_regular_symbol smb_prg =
  let smb_pde = Pds_v.polypeptide_symbol_of_polypeptide_regular_symbol smb_prg in
molecule_polymer_symbol_of_polypeptide_symbol smb_pde
;;

let polypeptide_regular_symbol_of_polypeptide_symbol smb_pde =
Prs_v.polypeptide_symbol smb_pde
;;

let polypeptide_regular_symbol_of_polypeptide_symbol smb_pde =
Prs_v.polypeptide_symbol smb_pde
;;

let polypeptide_regular_symbol_of_polypeptide_symbol smb_pde =
Prs_v.polypeptide_symbol smb_pde
;;

let polypeptide_regular_symbol_of_polypeptide_symbol smb_pde =
Prs_v.polypeptide_symbol smb_pde
;;

let polypeptide_regular_symbol_of_polypeptide_symbol smb_pde =
Prs_v.polypeptide_symbol smb_pde
;;

let polypeptide_regular_symbol_of_polypeptide_symbol smb_pde =
Prs_v.polypeptide_symbol smb_pde
;;

let polypeptide_regular_symbol_of_polypeptide_symbol smb_pde =
Prs_v.polypeptide_symbol smb_pde
;;

let polypeptide_regular_symbol_of_polypeptide_symbol smb_pde =
Prs_v.polypeptide_symbol smb_pde
;;

let polypeptide_regular_symbol_of_polypeptide_symbol smb_pde =
Prs_v.polypeptide_symbol smb_pde
;;

let polypeptide_regular_symbol_of_polypeptide_symbol smb_pde =
Prs_v.polypeptide_symbol smb_pde
;;

let polypeptide_regular_symbol_of_polypeptide_symbol smb_pde =
Prs_v.polypeptide_symbol smb_pde
;;

let polypeptide_regular_symbol_of_polypeptide_symbol smb_pde =
Prs_v.polypeptide_symbol smb_pde
;;

let polypeptide_regular_symbol_of_polypeptide_symbol smb_pde =
Prs_v.polypeptide_symbol smb_pde
;;

let polypeptide_regular_symbol_of_polypeptide_symbol smb_pde =
Prs_v.polypeptide_symbol smb_pde
;;

let polypeptide_regular_symbol_of_polypeptide_symbol smb_pde =
Prs_v.polypeptide_symbol smb_pde
;;

let polypeptide_regular_symbol_of_polypeptide_symbol smb_pde =
Prs_v.polypeptide_symbol smb_pde
;;

let polypeptide_regular_symbol_of_polypeptide_symbol smb_pde =
Prs_v.polypeptide_symbol smb_pde
;;

let polypeptide_regular_symbol_of_polypeptide_symbol smb_pde =
Prs_v.polypeptide_symbol smb_pde
;;

let polypeptide_regular_symbol_of_polypeptide_symbol smb_pde =
Prs_v.polypeptide_symbol smb_pde
;;

let polypeptide_regular_symbol_of_polypeptide_symbol smb_pde =
Prs_v.polypeptide_symbol smb_pde
;;


let polypeptide_symbol_of_polyproline_symbol smb_ppn =
  let smb_pde = Pds_v.polypeptide_symbol_of_polyproline_symbol smb_ppn in
molecule_polymer_symbol_of_polypeptide_symbol smb_pde
;;

let polypeptide_symbol_of_polyglycine_symbol smb_pgn =
  let smb_pde = Pds_v.polypeptide_symbol_of_polyglycine_symbol smb_pgn in
molecule_polymer_symbol_of_polypeptide_symbol smb_pde
;;

let molecule_polymer_symbol_of_nucleicacid_symbol smb_nud =
Mps_v.nucleicacid_symbol smb_nud
;;

let nucleicacid_symbol_of_nucleicacid_symbol smb_nud =
Nus_v.nucleicacid_symbol smb_nud
;;

let nucleicacid_symbol_of_nucleicacid_symbol smb_nud =
Nus_v.nucleicacid_symbol smb_nud
;;



(** created by ./generator molecule_polymer v symbol at 11:8 26 Apr 2011. *)



