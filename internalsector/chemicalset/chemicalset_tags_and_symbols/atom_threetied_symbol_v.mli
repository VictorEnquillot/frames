(** {3 A Symbol for a Atom_threetied.} *)

(** {6 Displaying.} *)

val name :
  Atom_threetied_symbol_t.atom_threetied_symbol ->
    string
;;

val print : Format.formatter ->
  Atom_threetied_symbol_t.atom_threetied_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Atom_threetied_single_single_single from Atom_threetied.} *)

val atom_threetied_single_single_single_symbol_off_atom_threetied_symbol :
  Atom_threetied_symbol_t.atom_threetied_symbol ->
    Atom_threetied_single_single_single_symbol_t.atom_threetied_single_single_single_symbol
;;

(** {9 Extracting N_sss from Atom_threetied_single_single_single from Atom_threetied.} *)

(* No Extraction from doublet n_sss. *)

(** {9 Extracting Cl_sss from Atom_threetied_single_single_single from Atom_threetied.} *)

(* No Extraction from doublet cl_sss. *)

(** {6 Extracting Atom_threetied_single_single_double from Atom_threetied.} *)

val atom_threetied_single_single_double_symbol_off_atom_threetied_symbol :
  Atom_threetied_symbol_t.atom_threetied_symbol ->
    Atom_threetied_single_single_double_symbol_t.atom_threetied_single_single_double_symbol
;;

(** {9 Extracting C_ssd from Atom_threetied_single_single_double from Atom_threetied.} *)

(* No Extraction from doublet c_ssd. *)

(** {9 Extracting N_sdd from Atom_threetied_single_single_double from Atom_threetied.} *)

(* No Extraction from doublet n_sdd. *)

(** {9 Extracting S_sdd from Atom_threetied_single_single_double from Atom_threetied.} *)

(* No Extraction from doublet s_sdd. *)

(** {6 Extracting Atom_threetied_single_conjugated_conjugated from Atom_threetied.} *)

val atom_threetied_single_conjugated_conjugated_symbol_off_atom_threetied_symbol :
  Atom_threetied_symbol_t.atom_threetied_symbol ->
    Atom_threetied_single_conjugated_conjugated_symbol_t.atom_threetied_single_conjugated_conjugated_symbol
;;

(** {9 Extracting C_scc from Atom_threetied_single_conjugated_conjugated from Atom_threetied.} *)

(* No Extraction from doublet c_scc. *)

(** {9 Extracting N_scc from Atom_threetied_single_conjugated_conjugated from Atom_threetied.} *)

(* No Extraction from doublet n_scc. *)

(** {6 Extracting Atom_threetied_conjugated_conjugated_conjugated from Atom_threetied.} *)

val atom_threetied_conjugated_conjugated_conjugated_symbol_off_atom_threetied_symbol :
  Atom_threetied_symbol_t.atom_threetied_symbol ->
    Atom_threetied_conjugated_conjugated_conjugated_symbol_t.atom_threetied_conjugated_conjugated_conjugated_symbol
;;

(** {9 Extracting C_ccc from Atom_threetied_conjugated_conjugated_conjugated from Atom_threetied.} *)

(* No Extraction from doublet c_ccc. *)

(** {9 Extracting N_ccc from Atom_threetied_conjugated_conjugated_conjugated from Atom_threetied.} *)

(* No Extraction from doublet n_ccc. *)

(** {6 Extracting Atom_threetied_double_double_double from Atom_threetied.} *)

val atom_threetied_double_double_double_symbol_off_atom_threetied_symbol :
  Atom_threetied_symbol_t.atom_threetied_symbol ->
    Atom_threetied_double_double_double_symbol_t.atom_threetied_double_double_double_symbol
;;

(** {9 Extracting S_ddd from Atom_threetied_double_double_double from Atom_threetied.} *)

(* No Extraction from doublet s_ddd. *)

(** {6 Querying.} *)

(** {6 Querying Atom_threetied_single_single_single in Atom_threetied.} *)

val is_atom_threetied_single_single_single_symbol_off_atom_threetied_symbol :
  Atom_threetied_symbol_t.atom_threetied_symbol ->
  bool
;;

(** {9 Querying N_sss in Atom_threetied_single_single_single in Atom_threetied.} *)

(* No Query from n_sss 0. *)

(** {9 Querying Cl_sss in Atom_threetied_single_single_single in Atom_threetied.} *)

(* No Query from cl_sss 0. *)

(** {6 Querying Atom_threetied_single_single_double in Atom_threetied.} *)

val is_atom_threetied_single_single_double_symbol_off_atom_threetied_symbol :
  Atom_threetied_symbol_t.atom_threetied_symbol ->
  bool
;;

(** {9 Querying C_ssd in Atom_threetied_single_single_double in Atom_threetied.} *)

(* No Query from c_ssd 0. *)

(** {9 Querying N_sdd in Atom_threetied_single_single_double in Atom_threetied.} *)

(* No Query from n_sdd 0. *)

(** {9 Querying S_sdd in Atom_threetied_single_single_double in Atom_threetied.} *)

(* No Query from s_sdd 0. *)

(** {6 Querying Atom_threetied_single_conjugated_conjugated in Atom_threetied.} *)

val is_atom_threetied_single_conjugated_conjugated_symbol_off_atom_threetied_symbol :
  Atom_threetied_symbol_t.atom_threetied_symbol ->
  bool
;;

(** {9 Querying C_scc in Atom_threetied_single_conjugated_conjugated in Atom_threetied.} *)

(* No Query from c_scc 0. *)

(** {9 Querying N_scc in Atom_threetied_single_conjugated_conjugated in Atom_threetied.} *)

(* No Query from n_scc 0. *)

(** {6 Querying Atom_threetied_conjugated_conjugated_conjugated in Atom_threetied.} *)

val is_atom_threetied_conjugated_conjugated_conjugated_symbol_off_atom_threetied_symbol :
  Atom_threetied_symbol_t.atom_threetied_symbol ->
  bool
;;

(** {9 Querying C_ccc in Atom_threetied_conjugated_conjugated_conjugated in Atom_threetied.} *)

(* No Query from c_ccc 0. *)

(** {9 Querying N_ccc in Atom_threetied_conjugated_conjugated_conjugated in Atom_threetied.} *)

(* No Query from n_ccc 0. *)

(** {6 Querying Atom_threetied_double_double_double in Atom_threetied.} *)

val is_atom_threetied_double_double_double_symbol_off_atom_threetied_symbol :
  Atom_threetied_symbol_t.atom_threetied_symbol ->
  bool
;;

(** {9 Querying S_ddd in Atom_threetied_double_double_double in Atom_threetied.} *)

(* No Query from s_ddd 0. *)

(** {6 Upgrading from Atom_threetied_single_single_single to Atom_threetied.} *)

val atom_threetied_symbol_of_atom_threetied_single_single_single_symbol :
  Atom_threetied_single_single_single_symbol_t.atom_threetied_single_single_single_symbol ->
    Atom_threetied_symbol_t.atom_threetied_symbol
;;

(** {9 Upgrading from N_sss through Atom_threetied_single_single_single to Atom_threetied.} *)

val n_sss : Atom_threetied_symbol_t.atom_threetied_symbol;;

(** {9 Upgrading from Cl_sss through Atom_threetied_single_single_single to Atom_threetied.} *)

val cl_sss : Atom_threetied_symbol_t.atom_threetied_symbol;;

(** {6 Upgrading from Atom_threetied_single_single_double to Atom_threetied.} *)

val atom_threetied_symbol_of_atom_threetied_single_single_double_symbol :
  Atom_threetied_single_single_double_symbol_t.atom_threetied_single_single_double_symbol ->
    Atom_threetied_symbol_t.atom_threetied_symbol
;;

(** {9 Upgrading from C_ssd through Atom_threetied_single_single_double to Atom_threetied.} *)

val c_ssd : Atom_threetied_symbol_t.atom_threetied_symbol;;

(** {9 Upgrading from N_sdd through Atom_threetied_single_single_double to Atom_threetied.} *)

val n_sdd : Atom_threetied_symbol_t.atom_threetied_symbol;;

(** {9 Upgrading from S_sdd through Atom_threetied_single_single_double to Atom_threetied.} *)

val s_sdd : Atom_threetied_symbol_t.atom_threetied_symbol;;

(** {6 Upgrading from Atom_threetied_single_conjugated_conjugated to Atom_threetied.} *)

val atom_threetied_symbol_of_atom_threetied_single_conjugated_conjugated_symbol :
  Atom_threetied_single_conjugated_conjugated_symbol_t.atom_threetied_single_conjugated_conjugated_symbol ->
    Atom_threetied_symbol_t.atom_threetied_symbol
;;

(** {9 Upgrading from C_scc through Atom_threetied_single_conjugated_conjugated to Atom_threetied.} *)

val c_scc : Atom_threetied_symbol_t.atom_threetied_symbol;;

(** {9 Upgrading from N_scc through Atom_threetied_single_conjugated_conjugated to Atom_threetied.} *)

val n_scc : Atom_threetied_symbol_t.atom_threetied_symbol;;

(** {6 Upgrading from Atom_threetied_conjugated_conjugated_conjugated to Atom_threetied.} *)

val atom_threetied_symbol_of_atom_threetied_conjugated_conjugated_conjugated_symbol :
  Atom_threetied_conjugated_conjugated_conjugated_symbol_t.atom_threetied_conjugated_conjugated_conjugated_symbol ->
    Atom_threetied_symbol_t.atom_threetied_symbol
;;

(** {9 Upgrading from C_ccc through Atom_threetied_conjugated_conjugated_conjugated to Atom_threetied.} *)

val c_ccc : Atom_threetied_symbol_t.atom_threetied_symbol;;

(** {9 Upgrading from N_ccc through Atom_threetied_conjugated_conjugated_conjugated to Atom_threetied.} *)

val n_ccc : Atom_threetied_symbol_t.atom_threetied_symbol;;

(** {6 Upgrading from Atom_threetied_double_double_double to Atom_threetied.} *)

val atom_threetied_symbol_of_atom_threetied_double_double_double_symbol :
  Atom_threetied_double_double_double_symbol_t.atom_threetied_double_double_double_symbol ->
    Atom_threetied_symbol_t.atom_threetied_symbol
;;

(** {9 Upgrading from S_ddd through Atom_threetied_double_double_double to Atom_threetied.} *)

val s_ddd : Atom_threetied_symbol_t.atom_threetied_symbol;;

(** created by ./do_entitysum_symbol_v_mli.sh atom_threetied 12 January 2011. *)

