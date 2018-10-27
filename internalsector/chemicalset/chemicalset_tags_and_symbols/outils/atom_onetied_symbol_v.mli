(** {3 A Symbol for a Atom_onetied.} *)


let name :
  Atom_onetied_symbol_t.atom_onetied_symbol ->
    string
;;


val print : Format.Formatter ->
  Atom_onetied_symbol_t.atom_onetied_symbol ->
    unit
;;


(** {6 Extracting.} *)

val atom_onetied_symbol_off_atom_onetied_conjugated_symbol :
  Atom_onetied_symbol_t.atom_onetied_symbol ->
    A1cs_v
;;

val atom_onetied_symbol_off_atom_onetied_double_symbol :
  Atom_onetied_symbol_t.atom_onetied_symbol ->
    A1ds_v
;;

val atom_onetied_symbol_off_atom_onetied_single_symbol :
  Atom_onetied_symbol_t.atom_onetied_symbol ->
    A1ss_v
;;

val atom_onetied_symbol_off_atom_onetied_triple_symbol :
  Atom_onetied_symbol_t.atom_onetied_symbol ->
    A1ts_v
;;


(** {6 Querying.} *)

val is_atom_onetied_symbol_off_atom_onetied_conjugated_symbol :
  Atom_onetied_symbol_t.atom_onetied_symbol ->
    bool
;;

val is_atom_onetied_symbol_off_atom_onetied_double_symbol :
  Atom_onetied_symbol_t.atom_onetied_symbol ->
    bool
;;

val is_atom_onetied_symbol_off_atom_onetied_single_symbol :
  Atom_onetied_symbol_t.atom_onetied_symbol ->
    bool
;;

val is_atom_onetied_symbol_off_atom_onetied_triple_symbol :
  Atom_onetied_symbol_t.atom_onetied_symbol ->
    bool
;;


(** {6 Upgrading.} *)

val atom_onetied_symbol_of_atom_onetied_conjugated_symbol :
  Atom_onetied_conjugated_symbol_t.atom_onetied_conjugated_symbol ->
    A1s_v
;;

val o_c : Atom_onetied_symbol_t.atom_onetied_symbol;;

val atom_onetied_symbol_of_atom_onetied_double_symbol :
  Atom_onetied_double_symbol_t.atom_onetied_double_symbol ->
    A1s_v
;;

val o_d : Atom_onetied_symbol_t.atom_onetied_symbol;;

val atom_onetied_symbol_of_atom_onetied_single_symbol :
  Atom_onetied_single_symbol_t.atom_onetied_single_symbol ->
    A1s_v
;;

val h_s : Atom_onetied_symbol_t.atom_onetied_symbol;;

val f_s : Atom_onetied_symbol_t.atom_onetied_symbol;;

val atom_onetied_symbol_of_atom_onetied_triple_symbol :
  Atom_onetied_triple_symbol_t.atom_onetied_triple_symbol ->
    A1s_v
;;

val n_t : Atom_onetied_symbol_t.atom_onetied_symbol;;

val o_t : Atom_onetied_symbol_t.atom_onetied_symbol;;



(** created by ./generator atom_onetied v symbol at 9:28 26 Apr 2011. *)



