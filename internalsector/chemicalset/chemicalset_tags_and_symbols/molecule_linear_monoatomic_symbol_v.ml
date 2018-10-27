(** {3 A Symbol for a Molecule_linear_monoatomic.} *)

let nam_mod = "Molecule_linear_monoatomic_symbol_v";;

(** {6 Modules.} *)

module Aans_t = Atom_zerotied_anion_symbol_t
module Aans_v = Atom_zerotied_anion_symbol_v
module Ac1s_t = Atom_zerotied_cation_plus_one_symbol_t
module Ac1s_v = Atom_zerotied_cation_plus_one_symbol_v
module Ac2s_t = Atom_zerotied_cation_plus_two_symbol_t
module Ac2s_v = Atom_zerotied_cation_plus_two_symbol_v
module Ac3s_t = Atom_zerotied_cation_plus_three_symbol_t
module Ac3s_v = Atom_zerotied_cation_plus_three_symbol_v
module Acns_t = Atom_zerotied_cation_symbol_t
module Acns_v = Atom_zerotied_cation_symbol_v
module Am1s_t = Atom_zerotied_anion_minus_one_symbol_t
module Am1s_v = Atom_zerotied_anion_minus_one_symbol_v
module Am2s_t = Atom_zerotied_anion_minus_two_symbol_t
module Am2s_v = Atom_zerotied_anion_minus_two_symbol_v
module Args_t = Atom_zerotied_raregas_symbol_t
module Args_v = Atom_zerotied_raregas_symbol_v
module Azes_t = Atom_zerotied_symbol_t
module Azes_v = Atom_zerotied_symbol_v
module Hbs_t = Halfbridge_symbol_t
module Hbs_v = Halfbridge_symbol_v
module Mlms_t = Molecule_linear_monoatomic_symbol_t

(** {6 Displaying.} *)

let name = function
  | Mlms_t.Atom_zerotied_symbol smb_aze -> 
      Azes_v.name smb_aze
;;

let print ppf = function
  | Mlms_t.Atom_zerotied_symbol smb_aze -> 
      Azes_v.print ppf smb_aze
;;

(** {6 Extracting.} *)

(** {6 Extracting Atom_zerotied from Molecule_linear_monoatomic.} *)

let atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol = function
  | Mlms_t.Atom_zerotied_symbol smb_aze -> smb_aze
;;

(** {9 Extracting Atom_zerotied_raregas from Atom_zerotied from Molecule_linear_monoatomic.} *)

let atom_zerotied_raregas_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  let smb_aze = atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
    Azes_v.atom_zerotied_raregas_symbol_off_atom_zerotied_symbol smb_aze
;;

(** {12 Extracting Ar from Atom_zerotied_raregas from Atom_zerotied from Molecule_linear_monoatomic.} *)

(* No Extraction from ar 0. *)

(** {12 Extracting He from Atom_zerotied_raregas from Atom_zerotied from Molecule_linear_monoatomic.} *)

(* No Extraction from he 0. *)

(** {12 Extracting Kr from Atom_zerotied_raregas from Atom_zerotied from Molecule_linear_monoatomic.} *)

(* No Extraction from kr 0. *)

(** {12 Extracting Ne from Atom_zerotied_raregas from Atom_zerotied from Molecule_linear_monoatomic.} *)

(* No Extraction from ne 0. *)

(** {12 Extracting Xe from Atom_zerotied_raregas from Atom_zerotied from Molecule_linear_monoatomic.} *)

(* No Extraction from xe 0. *)

(** {9 Extracting Atom_zerotied_anion from Atom_zerotied from Molecule_linear_monoatomic.} *)

let atom_zerotied_anion_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  let smb_aze = atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
    Azes_v.atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_aze
;;

(** {12 Extracting Atom_zerotied_anion_minus_one from Atom_zerotied_anion from Atom_zerotied from Molecule_linear_monoatomic.} *)

let atom_zerotied_anion_minus_one_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  let smb_aza = atom_zerotied_anion_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
    Aans_v.atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_anion_symbol smb_aza
;;

(** {12 Extracting Atom_zerotied_anion_minus_two from Atom_zerotied_anion from Atom_zerotied from Molecule_linear_monoatomic.} *)

let atom_zerotied_anion_minus_two_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  let smb_aza = atom_zerotied_anion_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
    Aans_v.atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_anion_symbol smb_aza
;;

(** {9 Extracting Atom_zerotied_cation from Atom_zerotied from Molecule_linear_monoatomic.} *)

let atom_zerotied_cation_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  let smb_aze = atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
    Azes_v.atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_aze
;;

(** {12 Extracting Atom_zerotied_cation_plus_one from Atom_zerotied_cation from Atom_zerotied from Molecule_linear_monoatomic.} *)

let atom_zerotied_cation_plus_one_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  let smb_acn = atom_zerotied_cation_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
    Acns_v.atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_cation_symbol smb_acn
;;

(** {12 Extracting Atom_zerotied_cation_plus_two from Atom_zerotied_cation from Atom_zerotied from Molecule_linear_monoatomic.} *)

let atom_zerotied_cation_plus_two_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  let smb_acn = atom_zerotied_cation_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
    Acns_v.atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_cation_symbol smb_acn
;;

(** {12 Extracting Atom_zerotied_cation_plus_three from Atom_zerotied_cation from Atom_zerotied from Molecule_linear_monoatomic.} *)

let atom_zerotied_cation_plus_three_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  let smb_acn = atom_zerotied_cation_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
    Acns_v.atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_cation_symbol smb_acn
;;

(** {9 Extracting Halfbridge from Atom_zerotied from Molecule_linear_monoatomic.} *)

let halfbridge_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  let smb_aze = atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
    Azes_v.halfbridge_symbol_off_atom_zerotied_symbol smb_aze
;;

(** {12 Extracting Hbc from Halfbridge from Atom_zerotied from Molecule_linear_monoatomic.} *)

(* No Extraction from Hbc 0. *)

(** {12 Extracting Hbd from Halfbridge from Atom_zerotied from Molecule_linear_monoatomic.} *)

(* No Extraction from Hbd 0. *)

(** {12 Extracting Hbs from Halfbridge from Atom_zerotied from Molecule_linear_monoatomic.} *)

(* No Extraction from Hbs 0. *)

(** {12 Extracting Hbt from Halfbridge from Atom_zerotied from Molecule_linear_monoatomic.} *)

(* No Extraction from Hbt 0. *)

(** {6 Querying.} *)

(** {6 Querying Atom_zerotied in Molecule_linear_monoatomic.} *)

let is_atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol smb_mlm = true
;;

(** {9 Querying Atom_zerotied_raregas in Atom_zerotied in Molecule_linear_monoatomic.} *)

let is_atom_zerotied_raregas_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  if not (is_atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol smb_mlm)
  then false
  else
    begin
      let smb_aze = atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
      Azes_v.is_atom_zerotied_raregas_symbol_off_atom_zerotied_symbol smb_aze
    end
;;

(** {12 Querying Ar in Atom_zerotied_raregas in Atom_zerotied in Molecule_linear_monoatomic.} *)

(* No Query from ar 0. *)

(** {12 Querying He in Atom_zerotied_raregas in Atom_zerotied in Molecule_linear_monoatomic.} *)

(* No Query from he 0. *)

(** {12 Querying Kr in Atom_zerotied_raregas in Atom_zerotied in Molecule_linear_monoatomic.} *)

(* No Query from kr 0. *)

(** {12 Querying Ne in Atom_zerotied_raregas in Atom_zerotied in Molecule_linear_monoatomic.} *)

(* No Query from ne 0. *)

(** {12 Querying Xe in Atom_zerotied_raregas in Atom_zerotied in Molecule_linear_monoatomic.} *)

(* No Query from xe 0. *)

(** {9 Querying Atom_zerotied_anion in Atom_zerotied in Molecule_linear_monoatomic.} *)

let is_atom_zerotied_anion_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  if not (is_atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol smb_mlm)
  then false
  else
    begin
      let smb_aze = atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
      Azes_v.is_atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_aze
    end
;;

(** {12 Querying Atom_zerotied_anion_minus_one in Atom_zerotied_anion in Atom_zerotied in Molecule_linear_monoatomic.} *)

let is_atom_zerotied_anion_minus_one_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  if not (is_atom_zerotied_anion_symbol_off_molecule_linear_monoatomic_symbol smb_mlm)
  then false
  else
    begin
      let smb_aza = atom_zerotied_anion_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
      Aans_v.is_atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_anion_symbol smb_aza
    end
;;

(** {12 Querying Atom_zerotied_anion_minus_two in Atom_zerotied_anion in Atom_zerotied in Molecule_linear_monoatomic.} *)

let is_atom_zerotied_anion_minus_two_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  if not (is_atom_zerotied_anion_symbol_off_molecule_linear_monoatomic_symbol smb_mlm)
  then false
  else
    begin
      let smb_aza = atom_zerotied_anion_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
      Aans_v.is_atom_zerotied_anion_minus_two_symbol_off_atom_zerotied_anion_symbol smb_aza
    end
;;

(** {9 Querying Atom_zerotied_cation in Atom_zerotied in Molecule_linear_monoatomic.} *)

let is_atom_zerotied_cation_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  if not (is_atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol smb_mlm)
  then false
  else
    begin
      let smb_aze = atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
      Azes_v.is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_aze
    end
;;

(** {12 Querying Atom_zerotied_cation_plus_one in Atom_zerotied_cation in Atom_zerotied in Molecule_linear_monoatomic.} *)

let is_atom_zerotied_cation_plus_one_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  if not (is_atom_zerotied_cation_symbol_off_molecule_linear_monoatomic_symbol smb_mlm)
  then false
  else
    begin
      let smb_acn = atom_zerotied_cation_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
      Acns_v.is_atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_cation_symbol smb_acn
    end
;;

(** {12 Querying Atom_zerotied_cation_plus_two in Atom_zerotied_cation in Atom_zerotied in Molecule_linear_monoatomic.} *)

let is_atom_zerotied_cation_plus_two_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  if not (is_atom_zerotied_cation_symbol_off_molecule_linear_monoatomic_symbol smb_mlm)
  then false
  else
    begin
      let smb_acn = atom_zerotied_cation_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
      Acns_v.is_atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_cation_symbol smb_acn
    end
;;

(** {12 Querying Atom_zerotied_cation_plus_three in Atom_zerotied_cation in Atom_zerotied in Molecule_linear_monoatomic.} *)

let is_atom_zerotied_cation_plus_three_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  if not (is_atom_zerotied_cation_symbol_off_molecule_linear_monoatomic_symbol smb_mlm)
  then false
  else
    begin
      let smb_acn = atom_zerotied_cation_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
      Acns_v.is_atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_cation_symbol smb_acn
    end
;;

(** {9 Querying Halfbridge in Atom_zerotied in Molecule_linear_monoatomic.} *)

let is_halfbridge_symbol_off_molecule_linear_monoatomic_symbol smb_mlm =
  if not (is_atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol smb_mlm)
  then false
  else
    begin
      let smb_aze = atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol smb_mlm in
      Azes_v.is_halfbridge_symbol_off_atom_zerotied_symbol smb_aze
    end
;;

(** {12 Querying Hbc in Halfbridge in Atom_zerotied in Molecule_linear_monoatomic.} *)

(* No Query from Hbc 0. *)

(** {12 Querying Hbd in Halfbridge in Atom_zerotied in Molecule_linear_monoatomic.} *)

(* No Query from Hbd 0. *)

(** {12 Querying Hbs in Halfbridge in Atom_zerotied in Molecule_linear_monoatomic.} *)

(* No Query from Hbs 0. *)

(** {12 Querying Hbt in Halfbridge in Atom_zerotied in Molecule_linear_monoatomic.} *)

(* No Query from Hbt 0. *)

(** {6 Upgrading from Atom_zerotied to Molecule_linear_monoatomic.} *)

let molecule_linear_monoatomic_symbol_of_atom_zerotied_symbol smb_aze =
  Mlms_t.Atom_zerotied_symbol smb_aze
;;

(** {9 Upgrading from Atom_zerotied_raregas through Atom_zerotied to Molecule_linear_monoatomic.} *)

let molecule_linear_monoatomic_symbol_of_atom_zerotied_raregas_symbol smb_arg =
  let smb_aze = Azes_v.atom_zerotied_symbol_of_atom_zerotied_raregas_symbol smb_arg in
  molecule_linear_monoatomic_symbol_of_atom_zerotied_symbol smb_aze
;;

(** {12 Upgrading from Ar through Atom_zerotied_raregas through Atom_zerotied to Molecule_linear_monoatomic.} *)

let ar = molecule_linear_monoatomic_symbol_of_atom_zerotied_raregas_symbol Args_t.Ar;;

(** {12 Upgrading from He through Atom_zerotied_raregas through Atom_zerotied to Molecule_linear_monoatomic.} *)

let he = molecule_linear_monoatomic_symbol_of_atom_zerotied_raregas_symbol Args_t.He;;

(** {12 Upgrading from Kr through Atom_zerotied_raregas through Atom_zerotied to Molecule_linear_monoatomic.} *)

let kr = molecule_linear_monoatomic_symbol_of_atom_zerotied_raregas_symbol Args_t.Kr;;

(** {12 Upgrading from Ne through Atom_zerotied_raregas through Atom_zerotied to Molecule_linear_monoatomic.} *)

let ne = molecule_linear_monoatomic_symbol_of_atom_zerotied_raregas_symbol Args_t.Ne;;

(** {12 Upgrading from Xe through Atom_zerotied_raregas through Atom_zerotied to Molecule_linear_monoatomic.} *)

let xe = molecule_linear_monoatomic_symbol_of_atom_zerotied_raregas_symbol Args_t.Xe;;

(** {9 Upgrading from Atom_zerotied_anion through Atom_zerotied to Molecule_linear_monoatomic.} *)

let molecule_linear_monoatomic_symbol_of_atom_zerotied_anion_symbol smb_aza =
  let smb_aze = Azes_v.atom_zerotied_symbol_of_atom_zerotied_anion_symbol smb_aza in
  molecule_linear_monoatomic_symbol_of_atom_zerotied_symbol smb_aze
;;

(** {12 Upgrading from Atom_zerotied_anion_minus_one through Atom_zerotied_anion through Atom_zerotied to Molecule_linear_monoatomic.} *)

let molecule_linear_monoatomic_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 =
  let smb_aza = Aans_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_one_symbol smb_am1 in
    molecule_linear_monoatomic_symbol_of_atom_zerotied_anion_symbol smb_aza
;;

(** {12 Upgrading from Atom_zerotied_anion_minus_two through Atom_zerotied_anion through Atom_zerotied to Molecule_linear_monoatomic.} *)

let molecule_linear_monoatomic_symbol_of_atom_zerotied_anion_minus_two_symbol smb_am2 =
  let smb_aza = Aans_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minus_two_symbol smb_am2 in
    molecule_linear_monoatomic_symbol_of_atom_zerotied_anion_symbol smb_aza
;;

(** {9 Upgrading from Atom_zerotied_cation through Atom_zerotied to Molecule_linear_monoatomic.} *)

let molecule_linear_monoatomic_symbol_of_atom_zerotied_cation_symbol smb_acn =
  let smb_aze = Azes_v.atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_acn in
  molecule_linear_monoatomic_symbol_of_atom_zerotied_symbol smb_aze
;;

(** {12 Upgrading from Atom_zerotied_cation_plus_one through Atom_zerotied_cation through Atom_zerotied to Molecule_linear_monoatomic.} *)

let molecule_linear_monoatomic_symbol_of_atom_zerotied_cation_plus_one_symbol smb_ac1 =
  let smb_acn = Acns_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol smb_ac1 in
    molecule_linear_monoatomic_symbol_of_atom_zerotied_cation_symbol smb_acn
;;

(** {12 Upgrading from Atom_zerotied_cation_plus_two through Atom_zerotied_cation through Atom_zerotied to Molecule_linear_monoatomic.} *)

let molecule_linear_monoatomic_symbol_of_atom_zerotied_cation_plus_two_symbol smb_ac2 =
  let smb_acn = Acns_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_two_symbol smb_ac2 in
    molecule_linear_monoatomic_symbol_of_atom_zerotied_cation_symbol smb_acn
;;

(** {12 Upgrading from Atom_zerotied_cation_plus_three through Atom_zerotied_cation through Atom_zerotied to Molecule_linear_monoatomic.} *)

let molecule_linear_monoatomic_symbol_of_atom_zerotied_cation_plus_three_symbol smb_ac3 =
  let smb_acn = Acns_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_three_symbol smb_ac3 in
    molecule_linear_monoatomic_symbol_of_atom_zerotied_cation_symbol smb_acn
;;

(** {9 Upgrading from Halfbridge through Atom_zerotied to Molecule_linear_monoatomic.} *)

let molecule_linear_monoatomic_symbol_of_halfbridge_symbol smb_hbd =
  let smb_aze = Azes_v.atom_zerotied_symbol_of_halfbridge_symbol smb_hbd in
  molecule_linear_monoatomic_symbol_of_atom_zerotied_symbol smb_aze
;;

(** {12 Upgrading from Hbc through Halfbridge through Atom_zerotied to Molecule_linear_monoatomic.} *)

let hbc = molecule_linear_monoatomic_symbol_of_halfbridge_symbol Hbs_t.Hbc;;

(** {12 Upgrading from Hbd through Halfbridge through Atom_zerotied to Molecule_linear_monoatomic.} *)

let hbd = molecule_linear_monoatomic_symbol_of_halfbridge_symbol Hbs_t.Hbd;;

(** {12 Upgrading from Hbs through Halfbridge through Atom_zerotied to Molecule_linear_monoatomic.} *)

let hbs = molecule_linear_monoatomic_symbol_of_halfbridge_symbol Hbs_t.Hbs;;

(** {12 Upgrading from Hbt through Halfbridge through Atom_zerotied to Molecule_linear_monoatomic.} *)

let hbt = molecule_linear_monoatomic_symbol_of_halfbridge_symbol Hbs_t.Hbt;;

(** created by ./do_entitysum_symbol_v_ml.sh molecule_linear_monoatomic 12 January 2011. *)

