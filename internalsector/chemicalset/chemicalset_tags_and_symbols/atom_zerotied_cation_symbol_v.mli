(** {3 A Symbol for a Atom_zerotied_cation.} *)

(** {6 Displaying.} *)

val name :
  Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol ->
    string
;;

val print : Format.formatter ->
  Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Atom_zerotied_cation_plus_one from Atom_zerotied_cation.} *)

val atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_cation_symbol :
  Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol ->
    Atom_zerotied_cation_plus_one_symbol_t.atom_zerotied_cation_plus_one_symbol
;;

(** {9 Extracting H_1p from Atom_zerotied_cation_plus_one from Atom_zerotied_cation.} *)

(* No Extraction from doublet h_1p. *)

(** {9 Extracting K_1p from Atom_zerotied_cation_plus_one from Atom_zerotied_cation.} *)

(* No Extraction from doublet k_1p. *)

(** {9 Extracting Li_1p from Atom_zerotied_cation_plus_one from Atom_zerotied_cation.} *)

(* No Extraction from doublet li_1p. *)

(** {9 Extracting Na_1p from Atom_zerotied_cation_plus_one from Atom_zerotied_cation.} *)

(* No Extraction from doublet na_1p. *)

(** {9 Extracting Ni_1p from Atom_zerotied_cation_plus_one from Atom_zerotied_cation.} *)

(* No Extraction from doublet ni_1p. *)

(** {9 Extracting Cu_1p from Atom_zerotied_cation_plus_one from Atom_zerotied_cation.} *)

(* No Extraction from doublet cu_1p. *)

(** {6 Extracting Atom_zerotied_cation_plus_two from Atom_zerotied_cation.} *)

val atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_cation_symbol :
  Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol ->
    Atom_zerotied_cation_plus_two_symbol_t.atom_zerotied_cation_plus_two_symbol
;;

(** {9 Extracting Mg_2p from Atom_zerotied_cation_plus_two from Atom_zerotied_cation.} *)

(* No Extraction from doublet mg_2p. *)

(** {9 Extracting Ca_2p from Atom_zerotied_cation_plus_two from Atom_zerotied_cation.} *)

(* No Extraction from doublet ca_2p. *)

(** {9 Extracting Fe_2p from Atom_zerotied_cation_plus_two from Atom_zerotied_cation.} *)

(* No Extraction from doublet fe_2p. *)

(** {9 Extracting Zn_2p from Atom_zerotied_cation_plus_two from Atom_zerotied_cation.} *)

(* No Extraction from doublet zn_2p. *)

(** {9 Extracting Cu_2p from Atom_zerotied_cation_plus_two from Atom_zerotied_cation.} *)

(* No Extraction from doublet cu_2p. *)

(** {6 Extracting Atom_zerotied_cation_plus_three from Atom_zerotied_cation.} *)

val atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_cation_symbol :
  Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol ->
    Atom_zerotied_cation_plus_three_symbol_t.atom_zerotied_cation_plus_three_symbol
;;

(** {9 Extracting Fe_3p from Atom_zerotied_cation_plus_three from Atom_zerotied_cation.} *)

(* No Extraction from doublet fe_3p. *)

(** {9 Extracting Ni_3p from Atom_zerotied_cation_plus_three from Atom_zerotied_cation.} *)

(* No Extraction from doublet ni_3p. *)

(** {6 Querying.} *)

(** {6 Querying Atom_zerotied_cation_plus_one in Atom_zerotied_cation.} *)

val is_atom_zerotied_cation_plus_one_symbol_off_atom_zerotied_cation_symbol :
  Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol ->
  bool
;;

(** {9 Querying H_1p in Atom_zerotied_cation_plus_one in Atom_zerotied_cation.} *)

(* No Query from h_1p 0. *)

(** {9 Querying K_1p in Atom_zerotied_cation_plus_one in Atom_zerotied_cation.} *)

(* No Query from k_1p 0. *)

(** {9 Querying Li_1p in Atom_zerotied_cation_plus_one in Atom_zerotied_cation.} *)

(* No Query from li_1p 0. *)

(** {9 Querying Na_1p in Atom_zerotied_cation_plus_one in Atom_zerotied_cation.} *)

(* No Query from na_1p 0. *)

(** {9 Querying Ni_1p in Atom_zerotied_cation_plus_one in Atom_zerotied_cation.} *)

(* No Query from ni_1p 0. *)

(** {9 Querying Cu_1p in Atom_zerotied_cation_plus_one in Atom_zerotied_cation.} *)

(* No Query from cu_1p 0. *)

(** {6 Querying Atom_zerotied_cation_plus_two in Atom_zerotied_cation.} *)

val is_atom_zerotied_cation_plus_two_symbol_off_atom_zerotied_cation_symbol :
  Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol ->
  bool
;;

(** {9 Querying Mg_2p in Atom_zerotied_cation_plus_two in Atom_zerotied_cation.} *)

(* No Query from mg_2p 0. *)

(** {9 Querying Ca_2p in Atom_zerotied_cation_plus_two in Atom_zerotied_cation.} *)

(* No Query from ca_2p 0. *)

(** {9 Querying Fe_2p in Atom_zerotied_cation_plus_two in Atom_zerotied_cation.} *)

(* No Query from fe_2p 0. *)

(** {9 Querying Zn_2p in Atom_zerotied_cation_plus_two in Atom_zerotied_cation.} *)

(* No Query from zn_2p 0. *)

(** {9 Querying Cu_2p in Atom_zerotied_cation_plus_two in Atom_zerotied_cation.} *)

(* No Query from cu_2p 0. *)

(** {6 Querying Atom_zerotied_cation_plus_three in Atom_zerotied_cation.} *)

val is_atom_zerotied_cation_plus_three_symbol_off_atom_zerotied_cation_symbol :
  Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol ->
  bool
;;

(** {9 Querying Fe_3p in Atom_zerotied_cation_plus_three in Atom_zerotied_cation.} *)

(* No Query from fe_3p 0. *)

(** {9 Querying Ni_3p in Atom_zerotied_cation_plus_three in Atom_zerotied_cation.} *)

(* No Query from ni_3p 0. *)

(** {6 Upgrading from Atom_zerotied_cation_plus_one to Atom_zerotied_cation.} *)

val atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_one_symbol :
  Atom_zerotied_cation_plus_one_symbol_t.atom_zerotied_cation_plus_one_symbol ->
    Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol
;;

(** {9 Upgrading from H_1p through Atom_zerotied_cation_plus_one to Atom_zerotied_cation.} *)

val h_1p : Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol;;

(** {9 Upgrading from K_1p through Atom_zerotied_cation_plus_one to Atom_zerotied_cation.} *)

val k_1p : Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol;;

(** {9 Upgrading from Li_1p through Atom_zerotied_cation_plus_one to Atom_zerotied_cation.} *)

val li_1p : Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol;;

(** {9 Upgrading from Na_1p through Atom_zerotied_cation_plus_one to Atom_zerotied_cation.} *)

val na_1p : Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol;;

(** {9 Upgrading from Ni_1p through Atom_zerotied_cation_plus_one to Atom_zerotied_cation.} *)

val ni_1p : Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol;;

(** {9 Upgrading from Cu_1p through Atom_zerotied_cation_plus_one to Atom_zerotied_cation.} *)

val cu_1p : Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol;;

(** {6 Upgrading from Atom_zerotied_cation_plus_two to Atom_zerotied_cation.} *)

val atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_two_symbol :
  Atom_zerotied_cation_plus_two_symbol_t.atom_zerotied_cation_plus_two_symbol ->
    Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol
;;

(** {9 Upgrading from Mg_2p through Atom_zerotied_cation_plus_two to Atom_zerotied_cation.} *)

val mg_2p : Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol;;

(** {9 Upgrading from Ca_2p through Atom_zerotied_cation_plus_two to Atom_zerotied_cation.} *)

val ca_2p : Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol;;

(** {9 Upgrading from Fe_2p through Atom_zerotied_cation_plus_two to Atom_zerotied_cation.} *)

val fe_2p : Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol;;

(** {9 Upgrading from Zn_2p through Atom_zerotied_cation_plus_two to Atom_zerotied_cation.} *)

val zn_2p : Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol;;

(** {9 Upgrading from Cu_2p through Atom_zerotied_cation_plus_two to Atom_zerotied_cation.} *)

val cu_2p : Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol;;

(** {6 Upgrading from Atom_zerotied_cation_plus_three to Atom_zerotied_cation.} *)

val atom_zerotied_cation_symbol_of_atom_zerotied_cation_plus_three_symbol :
  Atom_zerotied_cation_plus_three_symbol_t.atom_zerotied_cation_plus_three_symbol ->
    Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol
;;

(** {9 Upgrading from Fe_3p through Atom_zerotied_cation_plus_three to Atom_zerotied_cation.} *)

val fe_3p : Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol;;

(** {9 Upgrading from Ni_3p through Atom_zerotied_cation_plus_three to Atom_zerotied_cation.} *)

val ni_3p : Atom_zerotied_cation_symbol_t.atom_zerotied_cation_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh atom_zerotied_cation 12 January 2011. *)

