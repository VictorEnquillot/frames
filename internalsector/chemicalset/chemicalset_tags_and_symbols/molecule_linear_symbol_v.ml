(** {3 A Symbol for a Molecule_linear.} *)

let nam_mod = "Molecule_linear_symbol_v";;

(** {6 Modules.} *)

module Aans_t = Atom_zerotied_anion_symbol_t
module Aans_v = Atom_zerotied_anion_symbol_v
module Acns_t = Atom_zerotied_cation_symbol_t
module Acns_v = Atom_zerotied_cation_symbol_v
module Args_t = Atom_zerotied_raregas_symbol_t
module Args_v = Atom_zerotied_raregas_symbol_v
module Azes_t = Atom_zerotied_symbol_t
module Azes_v = Atom_zerotied_symbol_v
module Hbs_t = Halfbridge_symbol_t
module Hbs_v = Halfbridge_symbol_v
module Ml2s_t = Molecule_linear_diatomic_symbol_t
module Ml2s_v = Molecule_linear_diatomic_symbol_v
module Ml3s_t = Molecule_linear_triatomic_symbol_t
module Ml3s_v = Molecule_linear_triatomic_symbol_v
module Ml4s_t = Molecule_linear_tetratomic_symbol_t
module Ml4s_v = Molecule_linear_tetratomic_symbol_v
module Ml5s_t = Molecule_linear_pentatomic_symbol_t
module Ml5s_v = Molecule_linear_pentatomic_symbol_v
module Mlms_t = Molecule_linear_monoatomic_symbol_t
module Mlms_v = Molecule_linear_monoatomic_symbol_v
module Mlps_t = Molecule_linear_polyatomic_symbol_t
module Mlps_v = Molecule_linear_polyatomic_symbol_v
module Mls_t = Molecule_linear_symbol_t

(** {6 Displaying.} *)

let name = function
  | Mls_t.Molecule_linear_monoatomic_symbol smb_mlm -> 
      Mlms_v.name smb_mlm
  | Mls_t.Molecule_linear_diatomic_symbol smb_ml2 -> 
      Ml2s_v.name smb_ml2
  | Mls_t.Molecule_linear_triatomic_symbol smb_ml3 -> 
      Ml3s_v.name smb_ml3
  | Mls_t.Molecule_linear_tetratomic_symbol smb_ml4 -> 
      Ml4s_v.name smb_ml4
  | Mls_t.Molecule_linear_pentatomic_symbol smb_ml5 -> 
      Ml5s_v.name smb_ml5
  | Mls_t.Molecule_linear_polyatomic_symbol smb_mlp -> 
      Mlps_v.name smb_mlp
;;

let print ppf = function
  | Mls_t.Molecule_linear_monoatomic_symbol smb_mlm -> 
      Mlms_v.print ppf smb_mlm
  | Mls_t.Molecule_linear_diatomic_symbol smb_ml2 -> 
      Ml2s_v.print ppf smb_ml2
  | Mls_t.Molecule_linear_triatomic_symbol smb_ml3 -> 
      Ml3s_v.print ppf smb_ml3
  | Mls_t.Molecule_linear_tetratomic_symbol smb_ml4 -> 
      Ml4s_v.print ppf smb_ml4
  | Mls_t.Molecule_linear_pentatomic_symbol smb_ml5 -> 
      Ml5s_v.print ppf smb_ml5
  | Mls_t.Molecule_linear_polyatomic_symbol smb_mlp -> 
      Mlps_v.print ppf smb_mlp
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found molecule_linear_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Molecule_linear_monoatomic from Molecule_linear.} *)

let molecule_linear_monoatomic_symbol_off_molecule_linear_symbol = function
  | Mls_t.Molecule_linear_monoatomic_symbol smb_mlm -> smb_mlm
  | s ->  print_fatal_error
      "molecule_linear_monoatomic_symbol_off_molecule_linear_symbol"
      "Molecule_linear_monoatomic_symbol" (name s)
;;

(** {9 Extracting Atom_zerotied from Molecule_linear_monoatomic from Molecule_linear.} *)

let atom_zerotied_symbol_off_molecule_linear_symbol smb_ml =
  let smb_mlm = molecule_linear_monoatomic_symbol_off_molecule_linear_symbol smb_ml in
    Mlms_v.atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol smb_mlm
;;

(** {12 Extracting Atom_zerotied_raregas from Atom_zerotied from Molecule_linear_monoatomic from Molecule_linear.} *)

let atom_zerotied_raregas_symbol_off_molecule_linear_symbol smb_ml =
  let smb_aze = atom_zerotied_symbol_off_molecule_linear_symbol smb_ml in
    Azes_v.atom_zerotied_raregas_symbol_off_atom_zerotied_symbol smb_aze
;;

(** {12 Extracting Atom_zerotied_anion from Atom_zerotied from Molecule_linear_monoatomic from Molecule_linear.} *)

let atom_zerotied_anion_symbol_off_molecule_linear_symbol smb_ml =
  let smb_aze = atom_zerotied_symbol_off_molecule_linear_symbol smb_ml in
    Azes_v.atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_aze
;;

(** {12 Extracting Atom_zerotied_cation from Atom_zerotied from Molecule_linear_monoatomic from Molecule_linear.} *)

let atom_zerotied_cation_symbol_off_molecule_linear_symbol smb_ml =
  let smb_aze = atom_zerotied_symbol_off_molecule_linear_symbol smb_ml in
    Azes_v.atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_aze
;;

(** {12 Extracting Halfbridge from Atom_zerotied from Molecule_linear_monoatomic from Molecule_linear.} *)

let halfbridge_symbol_off_molecule_linear_symbol smb_ml =
  let smb_aze = atom_zerotied_symbol_off_molecule_linear_symbol smb_ml in
    Azes_v.halfbridge_symbol_off_atom_zerotied_symbol smb_aze
;;

(** {6 Extracting Molecule_linear_diatomic from Molecule_linear.} *)

let molecule_linear_diatomic_symbol_off_molecule_linear_symbol = function
  | Mls_t.Molecule_linear_diatomic_symbol smb_ml2 -> smb_ml2
  | s ->  print_fatal_error
      "molecule_linear_diatomic_symbol_off_molecule_linear_symbol"
      "Molecule_linear_diatomic_symbol" (name s)
;;

(** {9 Extracting Carbonmonoxide from Molecule_linear_diatomic from Molecule_linear.} *)

(* No Extraction from Carbonmonoxide 0. *)

(** {9 Extracting Dihydrogen from Molecule_linear_diatomic from Molecule_linear.} *)

(* No Extraction from Dihydrogen 0. *)

(** {9 Extracting Dinitrogen from Molecule_linear_diatomic from Molecule_linear.} *)

(* No Extraction from Dinitrogen 0. *)

(** {9 Extracting Dioxygen from Molecule_linear_diatomic from Molecule_linear.} *)

(* No Extraction from Dioxygen 0. *)

(** {9 Extracting Hydrogenchloride from Molecule_linear_diatomic from Molecule_linear.} *)

(* No Extraction from Hydrogenchloride 0. *)

(** {9 Extracting Hydrogenfluoride from Molecule_linear_diatomic from Molecule_linear.} *)

(* No Extraction from Hydrogenfluoride 0. *)

(** {6 Extracting Molecule_linear_triatomic from Molecule_linear.} *)

let molecule_linear_triatomic_symbol_off_molecule_linear_symbol = function
  | Mls_t.Molecule_linear_triatomic_symbol smb_ml3 -> smb_ml3
  | s ->  print_fatal_error
      "molecule_linear_triatomic_symbol_off_molecule_linear_symbol"
      "Molecule_linear_triatomic_symbol" (name s)
;;

(** {9 Extracting Hydrogensulfide from Molecule_linear_triatomic from Molecule_linear.} *)

(* No Extraction from Hydrogensulfide 0. *)

(** {9 Extracting Water from Molecule_linear_triatomic from Molecule_linear.} *)

(* No Extraction from Water 0. *)

(** {6 Extracting Molecule_linear_tetratomic from Molecule_linear.} *)

let molecule_linear_tetratomic_symbol_off_molecule_linear_symbol = function
  | Mls_t.Molecule_linear_tetratomic_symbol smb_ml4 -> smb_ml4
  | s ->  print_fatal_error
      "molecule_linear_tetratomic_symbol_off_molecule_linear_symbol"
      "Molecule_linear_tetratomic_symbol" (name s)
;;

(** {9 Extracting Ammonia from Molecule_linear_tetratomic from Molecule_linear.} *)

(* No Extraction from Ammonia 0. *)

(** {6 Extracting Molecule_linear_pentatomic from Molecule_linear.} *)

let molecule_linear_pentatomic_symbol_off_molecule_linear_symbol = function
  | Mls_t.Molecule_linear_pentatomic_symbol smb_ml5 -> smb_ml5
  | s ->  print_fatal_error
      "molecule_linear_pentatomic_symbol_off_molecule_linear_symbol"
      "Molecule_linear_pentatomic_symbol" (name s)
;;

(** {9 Extracting Methane from Molecule_linear_pentatomic from Molecule_linear.} *)

(* No Extraction from Methane 0. *)

(** {6 Extracting Molecule_linear_polyatomic from Molecule_linear.} *)

let molecule_linear_polyatomic_symbol_off_molecule_linear_symbol = function
  | Mls_t.Molecule_linear_polyatomic_symbol smb_mlp -> smb_mlp
  | s ->  print_fatal_error
      "molecule_linear_polyatomic_symbol_off_molecule_linear_symbol"
      "Molecule_linear_polyatomic_symbol" (name s)
;;

(** {9 Extracting Glycine from Molecule_linear_polyatomic from Molecule_linear.} *)

(* No Extraction from glycine 0. *)

(** {6 Querying.} *)

(** {6 Querying Molecule_linear_monoatomic in Molecule_linear.} *)

let is_molecule_linear_monoatomic_symbol_off_molecule_linear_symbol = function
  | Mls_t.Molecule_linear_monoatomic_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Atom_zerotied in Molecule_linear_monoatomic in Molecule_linear.} *)

let is_atom_zerotied_symbol_off_molecule_linear_symbol smb_ml =
  if not (is_molecule_linear_monoatomic_symbol_off_molecule_linear_symbol smb_ml)
  then false
  else
    begin
      let smb_mlm = molecule_linear_monoatomic_symbol_off_molecule_linear_symbol smb_ml in
      Mlms_v.is_atom_zerotied_symbol_off_molecule_linear_monoatomic_symbol smb_mlm
    end
;;

(** {12 Querying Atom_zerotied_raregas in Atom_zerotied in Molecule_linear_monoatomic in Molecule_linear.} *)

let is_atom_zerotied_raregas_symbol_off_molecule_linear_symbol smb_ml =
  if not (is_atom_zerotied_symbol_off_molecule_linear_symbol smb_ml)
  then false
  else
    begin
      let smb_aze = atom_zerotied_symbol_off_molecule_linear_symbol smb_ml in
      Azes_v.is_atom_zerotied_raregas_symbol_off_atom_zerotied_symbol smb_aze
    end
;;

(** {12 Querying Atom_zerotied_anion in Atom_zerotied in Molecule_linear_monoatomic in Molecule_linear.} *)

let is_atom_zerotied_anion_symbol_off_molecule_linear_symbol smb_ml =
  if not (is_atom_zerotied_symbol_off_molecule_linear_symbol smb_ml)
  then false
  else
    begin
      let smb_aze = atom_zerotied_symbol_off_molecule_linear_symbol smb_ml in
      Azes_v.is_atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_aze
    end
;;

(** {12 Querying Atom_zerotied_cation in Atom_zerotied in Molecule_linear_monoatomic in Molecule_linear.} *)

let is_atom_zerotied_cation_symbol_off_molecule_linear_symbol smb_ml =
  if not (is_atom_zerotied_symbol_off_molecule_linear_symbol smb_ml)
  then false
  else
    begin
      let smb_aze = atom_zerotied_symbol_off_molecule_linear_symbol smb_ml in
      Azes_v.is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol smb_aze
    end
;;

(** {12 Querying Halfbridge in Atom_zerotied in Molecule_linear_monoatomic in Molecule_linear.} *)

let is_halfbridge_symbol_off_molecule_linear_symbol smb_ml =
  if not (is_atom_zerotied_symbol_off_molecule_linear_symbol smb_ml)
  then false
  else
    begin
      let smb_aze = atom_zerotied_symbol_off_molecule_linear_symbol smb_ml in
      Azes_v.is_halfbridge_symbol_off_atom_zerotied_symbol smb_aze
    end
;;

(** {6 Querying Molecule_linear_diatomic in Molecule_linear.} *)

let is_molecule_linear_diatomic_symbol_off_molecule_linear_symbol = function
  | Mls_t.Molecule_linear_diatomic_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Carbonmonoxide in Molecule_linear_diatomic in Molecule_linear.} *)

(* No Query from Carbonmonoxide 0. *)


(** {9 Querying Dihydrogen in Molecule_linear_diatomic in Molecule_linear.} *)

(* No Query from Dihydrogen 0. *)


(** {9 Querying Dinitrogen in Molecule_linear_diatomic in Molecule_linear.} *)

(* No Query from Dinitrogen 0. *)


(** {9 Querying Dioxygen in Molecule_linear_diatomic in Molecule_linear.} *)

(* No Query from Dioxygen 0. *)


(** {9 Querying Hydrogenchloride in Molecule_linear_diatomic in Molecule_linear.} *)

(* No Query from Hydrogenchloride 0. *)


(** {9 Querying Hydrogenfluoride in Molecule_linear_diatomic in Molecule_linear.} *)

(* No Query from Hydrogenfluoride 0. *)


(** {6 Querying Molecule_linear_triatomic in Molecule_linear.} *)

let is_molecule_linear_triatomic_symbol_off_molecule_linear_symbol = function
  | Mls_t.Molecule_linear_triatomic_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Hydrogensulfide in Molecule_linear_triatomic in Molecule_linear.} *)

(* No Query from Hydrogensulfide 0. *)


(** {9 Querying Water in Molecule_linear_triatomic in Molecule_linear.} *)

(* No Query from Water 0. *)


(** {6 Querying Molecule_linear_tetratomic in Molecule_linear.} *)

let is_molecule_linear_tetratomic_symbol_off_molecule_linear_symbol = function
  | Mls_t.Molecule_linear_tetratomic_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Ammonia in Molecule_linear_tetratomic in Molecule_linear.} *)

(* No Query from Ammonia 0. *)


(** {6 Querying Molecule_linear_pentatomic in Molecule_linear.} *)

let is_molecule_linear_pentatomic_symbol_off_molecule_linear_symbol = function
  | Mls_t.Molecule_linear_pentatomic_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Methane in Molecule_linear_pentatomic in Molecule_linear.} *)

(* No Query from Methane 0. *)


(** {6 Querying Molecule_linear_polyatomic in Molecule_linear.} *)

let is_molecule_linear_polyatomic_symbol_off_molecule_linear_symbol = function
  | Mls_t.Molecule_linear_polyatomic_symbol _ -> true
  | _ -> false
;;

(** {9 Querying Glycine in Molecule_linear_polyatomic in Molecule_linear.} *)

(* No Query from glycine 0. *)


(** {6 Upgrading from Molecule_linear_monoatomic to Molecule_linear.} *)

let molecule_linear_symbol_of_molecule_linear_monoatomic_symbol smb_mlm =
  Mls_t.Molecule_linear_monoatomic_symbol smb_mlm
;;

(** {9 Upgrading from Atom_zerotied through Molecule_linear_monoatomic to Molecule_linear.} *)

let molecule_linear_symbol_of_atom_zerotied_symbol smb_aze =
  let smb_mlm = Mlms_v.molecule_linear_monoatomic_symbol_of_atom_zerotied_symbol smb_aze in
  molecule_linear_symbol_of_molecule_linear_monoatomic_symbol smb_mlm
;;

(** {12 Upgrading from Atom_zerotied_raregas through Atom_zerotied through Molecule_linear_monoatomic to Molecule_linear.} *)

let molecule_linear_symbol_of_atom_zerotied_raregas_symbol smb_arg =
  let smb_aze = Azes_v.atom_zerotied_symbol_of_atom_zerotied_raregas_symbol smb_arg in
    molecule_linear_symbol_of_atom_zerotied_symbol smb_aze
;;

(** {12 Upgrading from Atom_zerotied_anion through Atom_zerotied through Molecule_linear_monoatomic to Molecule_linear.} *)

let molecule_linear_symbol_of_atom_zerotied_anion_symbol smb_aza =
  let smb_aze = Azes_v.atom_zerotied_symbol_of_atom_zerotied_anion_symbol smb_aza in
    molecule_linear_symbol_of_atom_zerotied_symbol smb_aze
;;

(** {12 Upgrading from Atom_zerotied_cation through Atom_zerotied through Molecule_linear_monoatomic to Molecule_linear.} *)

let molecule_linear_symbol_of_atom_zerotied_cation_symbol smb_acn =
  let smb_aze = Azes_v.atom_zerotied_symbol_of_atom_zerotied_cation_symbol smb_acn in
    molecule_linear_symbol_of_atom_zerotied_symbol smb_aze
;;

(** {12 Upgrading from Halfbridge through Atom_zerotied through Molecule_linear_monoatomic to Molecule_linear.} *)

let molecule_linear_symbol_of_halfbridge_symbol smb_hbd =
  let smb_aze = Azes_v.atom_zerotied_symbol_of_halfbridge_symbol smb_hbd in
    molecule_linear_symbol_of_atom_zerotied_symbol smb_aze
;;

(** {6 Upgrading from Molecule_linear_diatomic to Molecule_linear.} *)

let molecule_linear_symbol_of_molecule_linear_diatomic_symbol smb_ml2 =
  Mls_t.Molecule_linear_diatomic_symbol smb_ml2
;;

(** {9 Upgrading from Carbonmonoxide through Molecule_linear_diatomic to Molecule_linear.} *)

let carbonmonoxide = molecule_linear_symbol_of_molecule_linear_diatomic_symbol Ml2s_t.Carbonmonoxide;;

(** {9 Upgrading from Dihydrogen through Molecule_linear_diatomic to Molecule_linear.} *)

let dihydrogen = molecule_linear_symbol_of_molecule_linear_diatomic_symbol Ml2s_t.Dihydrogen;;

(** {9 Upgrading from Dinitrogen through Molecule_linear_diatomic to Molecule_linear.} *)

let dinitrogen = molecule_linear_symbol_of_molecule_linear_diatomic_symbol Ml2s_t.Dinitrogen;;

(** {9 Upgrading from Dioxygen through Molecule_linear_diatomic to Molecule_linear.} *)

let dioxygen = molecule_linear_symbol_of_molecule_linear_diatomic_symbol Ml2s_t.Dioxygen;;

(** {9 Upgrading from Hydrogenchloride through Molecule_linear_diatomic to Molecule_linear.} *)

let hydrogenchloride = molecule_linear_symbol_of_molecule_linear_diatomic_symbol Ml2s_t.Hydrogenchloride;;

(** {9 Upgrading from Hydrogenfluoride through Molecule_linear_diatomic to Molecule_linear.} *)

let hydrogenfluoride = molecule_linear_symbol_of_molecule_linear_diatomic_symbol Ml2s_t.Hydrogenfluoride;;

(** {6 Upgrading from Molecule_linear_triatomic to Molecule_linear.} *)

let molecule_linear_symbol_of_molecule_linear_triatomic_symbol smb_ml3 =
  Mls_t.Molecule_linear_triatomic_symbol smb_ml3
;;

(** {9 Upgrading from Hydrogensulfide through Molecule_linear_triatomic to Molecule_linear.} *)

let hydrogensulfide = molecule_linear_symbol_of_molecule_linear_triatomic_symbol Ml3s_t.Hydrogensulfide;;

(** {9 Upgrading from Water through Molecule_linear_triatomic to Molecule_linear.} *)

let water = molecule_linear_symbol_of_molecule_linear_triatomic_symbol Ml3s_t.Water;;

(** {6 Upgrading from Molecule_linear_tetratomic to Molecule_linear.} *)

let molecule_linear_symbol_of_molecule_linear_tetratomic_symbol smb_ml4 =
  Mls_t.Molecule_linear_tetratomic_symbol smb_ml4
;;

(** {9 Upgrading from Ammonia through Molecule_linear_tetratomic to Molecule_linear.} *)

let ammonia = molecule_linear_symbol_of_molecule_linear_tetratomic_symbol Ml4s_t.Ammonia;;

(** {6 Upgrading from Molecule_linear_pentatomic to Molecule_linear.} *)

let molecule_linear_symbol_of_molecule_linear_pentatomic_symbol smb_ml5 =
  Mls_t.Molecule_linear_pentatomic_symbol smb_ml5
;;

(** {9 Upgrading from Methane through Molecule_linear_pentatomic to Molecule_linear.} *)

let methane = molecule_linear_symbol_of_molecule_linear_pentatomic_symbol Ml5s_t.Methane;;

(** {6 Upgrading from Molecule_linear_polyatomic to Molecule_linear.} *)

let molecule_linear_symbol_of_molecule_linear_polyatomic_symbol smb_mlp =
  Mls_t.Molecule_linear_polyatomic_symbol smb_mlp
;;

(** {9 Upgrading from Glycine through Molecule_linear_polyatomic to Molecule_linear.} *)

let glycine = molecule_linear_symbol_of_molecule_linear_polyatomic_symbol Mlps_t.Glycine;;

(** created by ./do_entitysum_symbol_v_ml.sh molecule_linear 12 January 2011. *)

