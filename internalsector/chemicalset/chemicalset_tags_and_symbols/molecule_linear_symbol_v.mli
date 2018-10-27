(** {3 A Symbol for a Molecule_linear.} *)

(** {6 Displaying.} *)

val name :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    string
;;

val print : Format.formatter ->
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Molecule_linear_monoatomic from Molecule_linear.} *)

val molecule_linear_monoatomic_symbol_off_molecule_linear_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol
;;

(** {9 Extracting Atom_zerotied from Molecule_linear_monoatomic from Molecule_linear.} *)

val atom_zerotied_symbol_off_molecule_linear_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    Atom_zerotied_symbol_t.atom_zerotied_symbol
;;

(** {12 Extracting Atom_zerotied_raregas from Atom_zerotied from Molecule_linear_monoatomic from Molecule_linear.} *)

val atom_zerotied_raregas_symbol_off_molecule_linear_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    Atom_zerotied_raregas_symbol_t.atom_zerotied_raregas_symbol
;;

(** {12 Extracting Atom_zerotied_anion from Atom_zerotied from Molecule_linear_monoatomic from Molecule_linear.} *)

val atom_zerotied_anion_symbol_off_molecule_linear_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol
;;

(** {12 Extracting Atom_zerotied_cation from Atom_zerotied from Molecule_linear_monoatomic from Molecule_linear.} *)

val atom_zerotied_cation_symbol_off_molecule_linear_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol
;;

(** {12 Extracting Halfbridge from Atom_zerotied from Molecule_linear_monoatomic from Molecule_linear.} *)

val halfbridge_symbol_off_molecule_linear_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    Halfbridge_symbol_t.halfbridge_symbol
;;

(** {6 Extracting Molecule_linear_diatomic from Molecule_linear.} *)

val molecule_linear_diatomic_symbol_off_molecule_linear_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    Molecule_linear_diatomic_symbol_t.molecule_linear_diatomic_symbol
;;

(** {9 Extracting Carbonmonoxide from Molecule_linear_diatomic from Molecule_linear.} *)

(* No Extraction from doublet Carbonmonoxide. *)

(** {9 Extracting Dihydrogen from Molecule_linear_diatomic from Molecule_linear.} *)

(* No Extraction from doublet Dihydrogen. *)

(** {9 Extracting Dinitrogen from Molecule_linear_diatomic from Molecule_linear.} *)

(* No Extraction from doublet Dinitrogen. *)

(** {9 Extracting Dioxygen from Molecule_linear_diatomic from Molecule_linear.} *)

(* No Extraction from doublet Dioxygen. *)

(** {9 Extracting Hydrogenchloride from Molecule_linear_diatomic from Molecule_linear.} *)

(* No Extraction from doublet Hydrogenchloride. *)

(** {9 Extracting Hydrogenfluoride from Molecule_linear_diatomic from Molecule_linear.} *)

(* No Extraction from doublet Hydrogenfluoride. *)

(** {6 Extracting Molecule_linear_triatomic from Molecule_linear.} *)

val molecule_linear_triatomic_symbol_off_molecule_linear_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    Molecule_linear_triatomic_symbol_t.molecule_linear_triatomic_symbol
;;

(** {9 Extracting Hydrogensulfide from Molecule_linear_triatomic from Molecule_linear.} *)

(* No Extraction from doublet Hydrogensulfide. *)

(** {9 Extracting Water from Molecule_linear_triatomic from Molecule_linear.} *)

(* No Extraction from doublet Water. *)

(** {6 Extracting Molecule_linear_tetratomic from Molecule_linear.} *)

val molecule_linear_tetratomic_symbol_off_molecule_linear_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    Molecule_linear_tetratomic_symbol_t.molecule_linear_tetratomic_symbol
;;

(** {9 Extracting Ammonia from Molecule_linear_tetratomic from Molecule_linear.} *)

(* No Extraction from doublet Ammonia. *)

(** {6 Extracting Molecule_linear_pentatomic from Molecule_linear.} *)

val molecule_linear_pentatomic_symbol_off_molecule_linear_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    Molecule_linear_pentatomic_symbol_t.molecule_linear_pentatomic_symbol
;;

(** {9 Extracting Methane from Molecule_linear_pentatomic from Molecule_linear.} *)

(* No Extraction from doublet Methane. *)

(** {6 Extracting Molecule_linear_polyatomic from Molecule_linear.} *)

val molecule_linear_polyatomic_symbol_off_molecule_linear_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
    Molecule_linear_polyatomic_symbol_t.molecule_linear_polyatomic_symbol
;;

(** {9 Extracting Glycine from Molecule_linear_polyatomic from Molecule_linear.} *)

(* No Extraction from doublet glycine. *)

(** {6 Querying.} *)

(** {6 Querying Molecule_linear_monoatomic in Molecule_linear.} *)

val is_molecule_linear_monoatomic_symbol_off_molecule_linear_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
  bool
;;

(** {9 Querying Atom_zerotied in Molecule_linear_monoatomic in Molecule_linear.} *)

val is_atom_zerotied_symbol_off_molecule_linear_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
  bool
;;

(** {12 Querying Atom_zerotied_raregas in Atom_zerotied in Molecule_linear_monoatomic in Molecule_linear.} *)

val is_atom_zerotied_raregas_symbol_off_molecule_linear_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
  bool
;;

(** {12 Querying Atom_zerotied_anion in Atom_zerotied in Molecule_linear_monoatomic in Molecule_linear.} *)

val is_atom_zerotied_anion_symbol_off_molecule_linear_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
  bool
;;

(** {12 Querying Atom_zerotied_cation in Atom_zerotied in Molecule_linear_monoatomic in Molecule_linear.} *)

val is_atom_zerotied_cation_symbol_off_molecule_linear_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
  bool
;;

(** {12 Querying Halfbridge in Atom_zerotied in Molecule_linear_monoatomic in Molecule_linear.} *)

val is_halfbridge_symbol_off_molecule_linear_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
  bool
;;

(** {6 Querying Molecule_linear_diatomic in Molecule_linear.} *)

val is_molecule_linear_diatomic_symbol_off_molecule_linear_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
  bool
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

val is_molecule_linear_triatomic_symbol_off_molecule_linear_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
  bool
;;

(** {9 Querying Hydrogensulfide in Molecule_linear_triatomic in Molecule_linear.} *)

(* No Query from Hydrogensulfide 0. *)

(** {9 Querying Water in Molecule_linear_triatomic in Molecule_linear.} *)

(* No Query from Water 0. *)

(** {6 Querying Molecule_linear_tetratomic in Molecule_linear.} *)

val is_molecule_linear_tetratomic_symbol_off_molecule_linear_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
  bool
;;

(** {9 Querying Ammonia in Molecule_linear_tetratomic in Molecule_linear.} *)

(* No Query from Ammonia 0. *)

(** {6 Querying Molecule_linear_pentatomic in Molecule_linear.} *)

val is_molecule_linear_pentatomic_symbol_off_molecule_linear_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
  bool
;;

(** {9 Querying Methane in Molecule_linear_pentatomic in Molecule_linear.} *)

(* No Query from Methane 0. *)

(** {6 Querying Molecule_linear_polyatomic in Molecule_linear.} *)

val is_molecule_linear_polyatomic_symbol_off_molecule_linear_symbol :
  Molecule_linear_symbol_t.molecule_linear_symbol ->
  bool
;;

(** {9 Querying Glycine in Molecule_linear_polyatomic in Molecule_linear.} *)

(* No Query from glycine 0. *)

(** {6 Upgrading from Molecule_linear_monoatomic to Molecule_linear.} *)

val molecule_linear_symbol_of_molecule_linear_monoatomic_symbol :
  Molecule_linear_monoatomic_symbol_t.molecule_linear_monoatomic_symbol ->
    Molecule_linear_symbol_t.molecule_linear_symbol
;;

(** {9 Upgrading from Atom_zerotied through Molecule_linear_monoatomic to Molecule_linear.} *)

val molecule_linear_symbol_of_atom_zerotied_symbol :
  Atom_zerotied_symbol_t.atom_zerotied_symbol ->
    Molecule_linear_symbol_t.molecule_linear_symbol
;;

(** {12 Upgrading from Atom_zerotied_raregas through Atom_zerotied through Molecule_linear_monoatomic to Molecule_linear.} *)

val molecule_linear_symbol_of_atom_zerotied_raregas_symbol :
  Atom_zerotied_raregas_symbol_t.atom_zerotied_raregas_symbol ->
    Molecule_linear_symbol_t.molecule_linear_symbol
;;

(** {12 Upgrading from Atom_zerotied_anion through Atom_zerotied through Molecule_linear_monoatomic to Molecule_linear.} *)

val molecule_linear_symbol_of_atom_zerotied_anion_symbol :
  Atom_zerotied_anion_symbol_t.atom_zerotied_anion_symbol ->
    Molecule_linear_symbol_t.molecule_linear_symbol
;;

(** {12 Upgrading from Atom_zerotied_cation through Atom_zerotied through Molecule_linear_monoatomic to Molecule_linear.} *)

val molecule_linear_symbol_of_atom_zerotied_cation_symbol :
  Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol ->
    Molecule_linear_symbol_t.molecule_linear_symbol
;;

(** {12 Upgrading from Halfbridge through Atom_zerotied through Molecule_linear_monoatomic to Molecule_linear.} *)

val molecule_linear_symbol_of_halfbridge_symbol :
  Halfbridge_symbol_t.halfbridge_symbol ->
    Molecule_linear_symbol_t.molecule_linear_symbol
;;

(** {6 Upgrading from Molecule_linear_diatomic to Molecule_linear.} *)

val molecule_linear_symbol_of_molecule_linear_diatomic_symbol :
  Molecule_linear_diatomic_symbol_t.molecule_linear_diatomic_symbol ->
    Molecule_linear_symbol_t.molecule_linear_symbol
;;

(** {9 Upgrading from Carbonmonoxide through Molecule_linear_diatomic to Molecule_linear.} *)

val carbonmonoxide : Molecule_linear_symbol_t.molecule_linear_symbol;;

(** {9 Upgrading from Dihydrogen through Molecule_linear_diatomic to Molecule_linear.} *)

val dihydrogen : Molecule_linear_symbol_t.molecule_linear_symbol;;

(** {9 Upgrading from Dinitrogen through Molecule_linear_diatomic to Molecule_linear.} *)

val dinitrogen : Molecule_linear_symbol_t.molecule_linear_symbol;;

(** {9 Upgrading from Dioxygen through Molecule_linear_diatomic to Molecule_linear.} *)

val dioxygen : Molecule_linear_symbol_t.molecule_linear_symbol;;

(** {9 Upgrading from Hydrogenchloride through Molecule_linear_diatomic to Molecule_linear.} *)

val hydrogenchloride : Molecule_linear_symbol_t.molecule_linear_symbol;;

(** {9 Upgrading from Hydrogenfluoride through Molecule_linear_diatomic to Molecule_linear.} *)

val hydrogenfluoride : Molecule_linear_symbol_t.molecule_linear_symbol;;

(** {6 Upgrading from Molecule_linear_triatomic to Molecule_linear.} *)

val molecule_linear_symbol_of_molecule_linear_triatomic_symbol :
  Molecule_linear_triatomic_symbol_t.molecule_linear_triatomic_symbol ->
    Molecule_linear_symbol_t.molecule_linear_symbol
;;

(** {9 Upgrading from Hydrogensulfide through Molecule_linear_triatomic to Molecule_linear.} *)

val hydrogensulfide : Molecule_linear_symbol_t.molecule_linear_symbol;;

(** {9 Upgrading from Water through Molecule_linear_triatomic to Molecule_linear.} *)

val water : Molecule_linear_symbol_t.molecule_linear_symbol;;

(** {6 Upgrading from Molecule_linear_tetratomic to Molecule_linear.} *)

val molecule_linear_symbol_of_molecule_linear_tetratomic_symbol :
  Molecule_linear_tetratomic_symbol_t.molecule_linear_tetratomic_symbol ->
    Molecule_linear_symbol_t.molecule_linear_symbol
;;

(** {9 Upgrading from Ammonia through Molecule_linear_tetratomic to Molecule_linear.} *)

val ammonia : Molecule_linear_symbol_t.molecule_linear_symbol;;

(** {6 Upgrading from Molecule_linear_pentatomic to Molecule_linear.} *)

val molecule_linear_symbol_of_molecule_linear_pentatomic_symbol :
  Molecule_linear_pentatomic_symbol_t.molecule_linear_pentatomic_symbol ->
    Molecule_linear_symbol_t.molecule_linear_symbol
;;

(** {9 Upgrading from Methane through Molecule_linear_pentatomic to Molecule_linear.} *)

val methane : Molecule_linear_symbol_t.molecule_linear_symbol;;

(** {6 Upgrading from Molecule_linear_polyatomic to Molecule_linear.} *)

val molecule_linear_symbol_of_molecule_linear_polyatomic_symbol :
  Molecule_linear_polyatomic_symbol_t.molecule_linear_polyatomic_symbol ->
    Molecule_linear_symbol_t.molecule_linear_symbol
;;

(** {9 Upgrading from Glycine through Molecule_linear_polyatomic to Molecule_linear.} *)

val glycine : Molecule_linear_symbol_t.molecule_linear_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh molecule_linear 12 January 2011. *)

