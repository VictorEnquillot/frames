(** {3 A Symbol for a Molecule_aminoacid_olc.} *)

(** {6 Displaying.} *)

val name :
  Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol ->
    string
;;

val print : Format.formatter ->
  Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol ->
    unit
;;

(** {6 Extracting.} *)

(** {6 Extracting Molecule_aminoacid_segmented_olc from Molecule_aminoacid_olc.} *)

val molecule_aminoacid_segmented_olc_symbol_off_molecule_aminoacid_olc_symbol :
  Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol ->
    Molecule_aminoacid_segmented_olc_symbol_t.molecule_aminoacid_segmented_olc_symbol
;;

(** {9 Extracting G from Molecule_aminoacid_segmented_olc from Molecule_aminoacid_olc.} *)

(* No Extraction from doublet g. *)

(** {6 Extracting Molecule_aminoacid_fragmented_olc from Molecule_aminoacid_olc.} *)

val molecule_aminoacid_fragmented_olc_symbol_off_molecule_aminoacid_olc_symbol :
  Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol ->
    Molecule_aminoacid_fragmented_olc_symbol_t.molecule_aminoacid_fragmented_olc_symbol
;;

(** {9 Extracting P from Molecule_aminoacid_fragmented_olc from Molecule_aminoacid_olc.} *)

(* No Extraction from doublet p. *)

(** {9 Extracting Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc from Molecule_aminoacid_olc.} *)

val molecule_aminoacid_regular_olc_symbol_off_molecule_aminoacid_olc_symbol :
  Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol ->
    Molecule_aminoacid_regular_olc_symbol_t.molecule_aminoacid_regular_olc_symbol
;;

(** {12 Extracting A from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc from Molecule_aminoacid_olc.} *)

(* No Extraction from a 0. *)

(** {12 Extracting C from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc from Molecule_aminoacid_olc.} *)

(* No Extraction from c 0. *)

(** {12 Extracting D from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc from Molecule_aminoacid_olc.} *)

(* No Extraction from d 0. *)

(** {12 Extracting E from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc from Molecule_aminoacid_olc.} *)

(* No Extraction from e 0. *)

(** {12 Extracting F from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc from Molecule_aminoacid_olc.} *)

(* No Extraction from f 0. *)

(** {12 Extracting H from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc from Molecule_aminoacid_olc.} *)

(* No Extraction from h 0. *)

(** {12 Extracting I from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc from Molecule_aminoacid_olc.} *)

(* No Extraction from i 0. *)

(** {12 Extracting K from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc from Molecule_aminoacid_olc.} *)

(* No Extraction from k 0. *)

(** {12 Extracting L from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc from Molecule_aminoacid_olc.} *)

(* No Extraction from l 0. *)

(** {12 Extracting M from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc from Molecule_aminoacid_olc.} *)

(* No Extraction from m 0. *)

(** {12 Extracting N from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc from Molecule_aminoacid_olc.} *)

(* No Extraction from n 0. *)

(** {12 Extracting Q from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc from Molecule_aminoacid_olc.} *)

(* No Extraction from q 0. *)

(** {12 Extracting R from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc from Molecule_aminoacid_olc.} *)

(* No Extraction from r 0. *)

(** {12 Extracting S from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc from Molecule_aminoacid_olc.} *)

(* No Extraction from s 0. *)

(** {12 Extracting T from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc from Molecule_aminoacid_olc.} *)

(* No Extraction from t 0. *)

(** {12 Extracting V from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc from Molecule_aminoacid_olc.} *)

(* No Extraction from v 0. *)

(** {12 Extracting W from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc from Molecule_aminoacid_olc.} *)

(* No Extraction from w 0. *)

(** {12 Extracting Y from Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc from Molecule_aminoacid_olc.} *)

(* No Extraction from y 0. *)

(** {6 Querying.} *)

(** {6 Querying Molecule_aminoacid_segmented_olc in Molecule_aminoacid_olc.} *)

val is_molecule_aminoacid_segmented_olc_symbol_off_molecule_aminoacid_olc_symbol :
  Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol ->
  bool
;;

(** {9 Querying G in Molecule_aminoacid_segmented_olc in Molecule_aminoacid_olc.} *)

(* No Query from g 0. *)

(** {6 Querying Molecule_aminoacid_fragmented_olc in Molecule_aminoacid_olc.} *)

val is_molecule_aminoacid_fragmented_olc_symbol_off_molecule_aminoacid_olc_symbol :
  Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol ->
  bool
;;

(** {9 Querying P in Molecule_aminoacid_fragmented_olc in Molecule_aminoacid_olc.} *)

(* No Query from p 0. *)

(** {9 Querying Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc in Molecule_aminoacid_olc.} *)

val is_molecule_aminoacid_regular_olc_symbol_off_molecule_aminoacid_olc_symbol :
  Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol ->
  bool
;;

(** {12 Querying A in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc in Molecule_aminoacid_olc.} *)

(* No Query from a 0. *)

(** {12 Querying C in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc in Molecule_aminoacid_olc.} *)

(* No Query from c 0. *)

(** {12 Querying D in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc in Molecule_aminoacid_olc.} *)

(* No Query from d 0. *)

(** {12 Querying E in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc in Molecule_aminoacid_olc.} *)

(* No Query from e 0. *)

(** {12 Querying F in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc in Molecule_aminoacid_olc.} *)

(* No Query from f 0. *)

(** {12 Querying H in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc in Molecule_aminoacid_olc.} *)

(* No Query from h 0. *)

(** {12 Querying I in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc in Molecule_aminoacid_olc.} *)

(* No Query from i 0. *)

(** {12 Querying K in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc in Molecule_aminoacid_olc.} *)

(* No Query from k 0. *)

(** {12 Querying L in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc in Molecule_aminoacid_olc.} *)

(* No Query from l 0. *)

(** {12 Querying M in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc in Molecule_aminoacid_olc.} *)

(* No Query from m 0. *)

(** {12 Querying N in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc in Molecule_aminoacid_olc.} *)

(* No Query from n 0. *)

(** {12 Querying Q in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc in Molecule_aminoacid_olc.} *)

(* No Query from q 0. *)

(** {12 Querying R in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc in Molecule_aminoacid_olc.} *)

(* No Query from r 0. *)

(** {12 Querying S in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc in Molecule_aminoacid_olc.} *)

(* No Query from s 0. *)

(** {12 Querying T in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc in Molecule_aminoacid_olc.} *)

(* No Query from t 0. *)

(** {12 Querying V in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc in Molecule_aminoacid_olc.} *)

(* No Query from v 0. *)

(** {12 Querying W in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc in Molecule_aminoacid_olc.} *)

(* No Query from w 0. *)

(** {12 Querying Y in Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc in Molecule_aminoacid_olc.} *)

(* No Query from y 0. *)

(** {6 Upgrading from Molecule_aminoacid_segmented_olc to Molecule_aminoacid_olc.} *)

val molecule_aminoacid_olc_symbol_of_molecule_aminoacid_segmented_olc_symbol :
  Molecule_aminoacid_segmented_olc_symbol_t.molecule_aminoacid_segmented_olc_symbol ->
    Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol
;;

(** {9 Upgrading from G through Molecule_aminoacid_segmented_olc to Molecule_aminoacid_olc.} *)

val g : Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol;;

(** {6 Upgrading from Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

val molecule_aminoacid_olc_symbol_of_molecule_aminoacid_fragmented_olc_symbol :
  Molecule_aminoacid_fragmented_olc_symbol_t.molecule_aminoacid_fragmented_olc_symbol ->
    Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol
;;

(** {9 Upgrading from P through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

val p : Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol;;

(** {9 Upgrading from Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

val molecule_aminoacid_olc_symbol_of_molecule_aminoacid_regular_olc_symbol :
  Molecule_aminoacid_regular_olc_symbol_t.molecule_aminoacid_regular_olc_symbol ->
    Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol
;;

(** {12 Upgrading from A through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

val a : Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol;;
(** {12 Upgrading from C through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

val c : Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol;;
(** {12 Upgrading from D through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

val d : Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol;;
(** {12 Upgrading from E through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

val e : Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol;;
(** {12 Upgrading from F through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

val f : Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol;;
(** {12 Upgrading from H through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

val h : Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol;;
(** {12 Upgrading from I through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

val i : Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol;;
(** {12 Upgrading from K through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

val k : Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol;;
(** {12 Upgrading from L through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

val l : Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol;;
(** {12 Upgrading from M through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

val m : Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol;;
(** {12 Upgrading from N through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

val n : Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol;;
(** {12 Upgrading from Q through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

val q : Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol;;
(** {12 Upgrading from R through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

val r : Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol;;
(** {12 Upgrading from S through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

val s : Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol;;
(** {12 Upgrading from T through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

val t : Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol;;
(** {12 Upgrading from V through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

val v : Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol;;
(** {12 Upgrading from W through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

val w : Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol;;
(** {12 Upgrading from Y through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

val y : Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol;;

val molecule_aminoacid_symbol_of_molecule_aminoacid_olc_symbol :
    Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol -> 
      Molecule_aminoacid_symbol_t.molecule_aminoacid_symbol
;;
 
val char_of_molecule_aminoacid_olc_symbol : 
    Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol -> 
  char
;;

val molecule_aminoacid_olc_symbol_of_char :
  char ->
  Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol
;;
	
val molecule_aminoacid_olc_symbol_of_string :
  string ->
    Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol
;;

val read : 
  Scanf.Scanning.scanbuf -> 
    Molecule_aminoacid_olc_symbol_t.molecule_aminoacid_olc_symbol
;;

(** created by ./do_entitysum_symbol_v_mli.sh molecule_aminoacid_olc 13 January 2011. *)

