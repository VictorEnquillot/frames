(** {3 A Symbol for a Atom_threetied.} *)


let name :
  Atom_threetied_symbol_t.atom_threetied_symbol ->
    string
;;


val print : Format.Formatter ->
  Atom_threetied_symbol_t.atom_threetied_symbol ->
    unit
;;


(** {6 Extracting.} *)

val atom_threetied_symbol_off_atom_threetied_single_single_single_symbol :
  Atom_threetied_symbol_t.atom_threetied_symbol ->
    A3ssss_v
;;

val atom_threetied_symbol_off_atom_threetied_single_single_double_symbol :
  Atom_threetied_symbol_t.atom_threetied_symbol ->
    A3ssds_v
;;

val atom_threetied_symbol_off_atom_threetied_single_conjugated_conjugated_symbol :
  Atom_threetied_symbol_t.atom_threetied_symbol ->
    A3sccs_v
;;

val atom_threetied_symbol_off_atom_threetied_conjugated_conjugated_conjugated_symbol :
  Atom_threetied_symbol_t.atom_threetied_symbol ->
    A3cccs_v
;;

val atom_threetied_symbol_off_atom_threetied_double_double_double_symbol :
  Atom_threetied_symbol_t.atom_threetied_symbol ->
    A3ddds_v
;;


(** {6 Querying.} *)

val is_atom_threetied_symbol_off_atom_threetied_single_single_single_symbol :
  Atom_threetied_symbol_t.atom_threetied_symbol ->
    bool
;;

val is_atom_threetied_symbol_off_atom_threetied_single_single_double_symbol :
  Atom_threetied_symbol_t.atom_threetied_symbol ->
    bool
;;

val is_atom_threetied_symbol_off_atom_threetied_single_conjugated_conjugated_symbol :
  Atom_threetied_symbol_t.atom_threetied_symbol ->
    bool
;;

val is_atom_threetied_symbol_off_atom_threetied_conjugated_conjugated_conjugated_symbol :
  Atom_threetied_symbol_t.atom_threetied_symbol ->
    bool
;;

val is_atom_threetied_symbol_off_atom_threetied_double_double_double_symbol :
  Atom_threetied_symbol_t.atom_threetied_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val atom_threetied_symbol_of_atom_threetied_single_single_single_symbol :
  Atom_threetied_single_single_single_symbol_t.atom_threetied_single_single_single_symbol ->
    A3s_v
;;

val n_sss : Atom_threetied_symbol_t.atom_threetied_symbol;;

val cl_sss : Atom_threetied_symbol_t.atom_threetied_symbol;;

val atom_threetied_symbol_of_atom_threetied_single_single_double_symbol :
  Atom_threetied_single_single_double_symbol_t.atom_threetied_single_single_double_symbol ->
    A3s_v
;;

val c_ssd : Atom_threetied_symbol_t.atom_threetied_symbol;;

val n_sdd : Atom_threetied_symbol_t.atom_threetied_symbol;;

val s_sdd : Atom_threetied_symbol_t.atom_threetied_symbol;;

val atom_threetied_symbol_of_atom_threetied_single_conjugated_conjugated_symbol :
  Atom_threetied_single_conjugated_conjugated_symbol_t.atom_threetied_single_conjugated_conjugated_symbol ->
    A3s_v
;;

val c_scc : Atom_threetied_symbol_t.atom_threetied_symbol;;

val n_scc : Atom_threetied_symbol_t.atom_threetied_symbol;;

val atom_threetied_symbol_of_atom_threetied_conjugated_conjugated_conjugated_symbol :
  Atom_threetied_conjugated_conjugated_conjugated_symbol_t.atom_threetied_conjugated_conjugated_conjugated_symbol ->
    A3s_v
;;

val c_ccc : Atom_threetied_symbol_t.atom_threetied_symbol;;

val n_ccc : Atom_threetied_symbol_t.atom_threetied_symbol;;

val atom_threetied_symbol_of_atom_threetied_double_double_double_symbol :
  Atom_threetied_double_double_double_symbol_t.atom_threetied_double_double_double_symbol ->
    A3s_v
;;

val s_ddd : Atom_threetied_symbol_t.atom_threetied_symbol;;



(** created by ./generator atom_threetied v symbol at 9:28 26 Apr 2011. *)



