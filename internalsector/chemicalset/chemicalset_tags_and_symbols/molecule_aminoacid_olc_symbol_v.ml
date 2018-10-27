(** {3 A Symbol for a Molecule_aminoacid_olc.} *)

let nam_mod = "Molecule_aminoacid_olc_symbol_v";;

(** {6 Modules.} *)

module Mafos_t = Molecule_aminoacid_fragmented_olc_symbol_t
module Mafos_v = Molecule_aminoacid_fragmented_olc_symbol_v
module Maos_t = Molecule_aminoacid_olc_symbol_t
module Maros_t = Molecule_aminoacid_regular_olc_symbol_t
module Maros_v = Molecule_aminoacid_regular_olc_symbol_v
module Masos_t = Molecule_aminoacid_segmented_olc_symbol_t
module Masos_v = Molecule_aminoacid_segmented_olc_symbol_v

(** {6 Displaying.} *)

let name = function
  | Maos_t.Molecule_aminoacid_segmented_olc_symbol smb_aos -> 
      Masos_v.name smb_aos
  | Maos_t.Molecule_aminoacid_fragmented_olc_symbol smb_aof -> 
      Mafos_v.name smb_aof
;;

let print ppf = function
  | Maos_t.Molecule_aminoacid_segmented_olc_symbol smb_aos -> 
      Masos_v.print ppf smb_aos
  | Maos_t.Molecule_aminoacid_fragmented_olc_symbol smb_aof -> 
      Mafos_v.print ppf smb_aof
;;

(** {6 Extracting.} *)

let print_fatal_error nam_fun nam_exp nam_fnd =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s.%s: --- Fatal Error ---\
     @.    expecting Level One subtype >%s<.\
     @.    found molecule_aminoacid_olc_symbol >%s<.\
     @.    cure : check.@]@."
     nam_mod nam_fun nam_exp nam_fnd;
     assert false;
;;

(** {6 Extracting Molecule_aminoacid_segmented_olc from Molecule_aminoacid_olc.} *)

let molecule_aminoacid_segmented_olc_symbol_off_molecule_aminoacid_olc_symbol = function
  | Maos_t.Molecule_aminoacid_segmented_olc_symbol smb_aos -> smb_aos
  | s ->  print_fatal_error
      "molecule_aminoacid_segmented_olc_symbol_off_molecule_aminoacid_olc_symbol"
      "Molecule_aminoacid_segmented_olc_symbol" (name s)
;;

(** {9 Extracting G from Molecule_aminoacid_segmented_olc from Molecule_aminoacid_olc.} *)

(* No Extraction from g 0. *)

(** {6 Extracting Molecule_aminoacid_fragmented_olc from Molecule_aminoacid_olc.} *)

let molecule_aminoacid_fragmented_olc_symbol_off_molecule_aminoacid_olc_symbol = function
  | Maos_t.Molecule_aminoacid_fragmented_olc_symbol smb_aof -> smb_aof
  | s ->  print_fatal_error
      "molecule_aminoacid_fragmented_olc_symbol_off_molecule_aminoacid_olc_symbol"
      "Molecule_aminoacid_fragmented_olc_symbol" (name s)
;;

(** {9 Extracting P from Molecule_aminoacid_fragmented_olc from Molecule_aminoacid_olc.} *)

(* No Extraction from p 0. *)

(** {9 Extracting Molecule_aminoacid_regular_olc from Molecule_aminoacid_fragmented_olc from Molecule_aminoacid_olc.} *)

let molecule_aminoacid_regular_olc_symbol_off_molecule_aminoacid_olc_symbol smb_amo =
  let smb_aof = molecule_aminoacid_fragmented_olc_symbol_off_molecule_aminoacid_olc_symbol smb_amo in
    Mafos_v.molecule_aminoacid_regular_olc_symbol_off_molecule_aminoacid_fragmented_olc_symbol smb_aof
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

let is_molecule_aminoacid_segmented_olc_symbol_off_molecule_aminoacid_olc_symbol = function
  | Maos_t.Molecule_aminoacid_segmented_olc_symbol _ -> true
  | _ -> false
;;

(** {9 Querying G in Molecule_aminoacid_segmented_olc in Molecule_aminoacid_olc.} *)

(* No Query from g 0. *)


(** {6 Querying Molecule_aminoacid_fragmented_olc in Molecule_aminoacid_olc.} *)

let is_molecule_aminoacid_fragmented_olc_symbol_off_molecule_aminoacid_olc_symbol = function
  | Maos_t.Molecule_aminoacid_fragmented_olc_symbol _ -> true
  | _ -> false
;;

(** {9 Querying P in Molecule_aminoacid_fragmented_olc in Molecule_aminoacid_olc.} *)

(* No Query from p 0. *)


(** {9 Querying Molecule_aminoacid_regular_olc in Molecule_aminoacid_fragmented_olc in Molecule_aminoacid_olc.} *)

let is_molecule_aminoacid_regular_olc_symbol_off_molecule_aminoacid_olc_symbol smb_amo =
  if not (is_molecule_aminoacid_fragmented_olc_symbol_off_molecule_aminoacid_olc_symbol smb_amo)
  then false
  else
    begin
      let smb_aof = molecule_aminoacid_fragmented_olc_symbol_off_molecule_aminoacid_olc_symbol smb_amo in
      Mafos_v.is_molecule_aminoacid_regular_olc_symbol_off_molecule_aminoacid_fragmented_olc_symbol smb_aof
    end
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

let molecule_aminoacid_olc_symbol_of_molecule_aminoacid_segmented_olc_symbol smb_aos =
  Maos_t.Molecule_aminoacid_segmented_olc_symbol smb_aos
;;

(** {9 Upgrading from G through Molecule_aminoacid_segmented_olc to Molecule_aminoacid_olc.} *)

let g = molecule_aminoacid_olc_symbol_of_molecule_aminoacid_segmented_olc_symbol Masos_t.G;;

(** {6 Upgrading from Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

let molecule_aminoacid_olc_symbol_of_molecule_aminoacid_fragmented_olc_symbol smb_aof =
  Maos_t.Molecule_aminoacid_fragmented_olc_symbol smb_aof
;;

(** {9 Upgrading from P through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

let p = molecule_aminoacid_olc_symbol_of_molecule_aminoacid_fragmented_olc_symbol Mafos_t.P;;

(** {9 Upgrading from Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

let molecule_aminoacid_olc_symbol_of_molecule_aminoacid_regular_olc_symbol smb_aor =
  let smb_aof = Mafos_v.molecule_aminoacid_fragmented_olc_symbol_of_molecule_aminoacid_regular_olc_symbol smb_aor in
  molecule_aminoacid_olc_symbol_of_molecule_aminoacid_fragmented_olc_symbol smb_aof
;;

(** {12 Upgrading from A through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

let a = molecule_aminoacid_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.A;;

(** {12 Upgrading from C through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

let c = molecule_aminoacid_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.C;;

(** {12 Upgrading from D through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

let d = molecule_aminoacid_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.D;;

(** {12 Upgrading from E through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

let e = molecule_aminoacid_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.E;;

(** {12 Upgrading from F through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

let f = molecule_aminoacid_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.F;;

(** {12 Upgrading from H through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

let h = molecule_aminoacid_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.H;;

(** {12 Upgrading from I through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

let i = molecule_aminoacid_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.I;;

(** {12 Upgrading from K through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

let k = molecule_aminoacid_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.K;;

(** {12 Upgrading from L through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

let l = molecule_aminoacid_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.L;;

(** {12 Upgrading from M through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

let m = molecule_aminoacid_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.M;;

(** {12 Upgrading from N through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

let n = molecule_aminoacid_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.N;;

(** {12 Upgrading from Q through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

let q = molecule_aminoacid_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.Q;;

(** {12 Upgrading from R through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

let r = molecule_aminoacid_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.R;;

(** {12 Upgrading from S through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

let s = molecule_aminoacid_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.S;;

(** {12 Upgrading from T through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

let t = molecule_aminoacid_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.T;;

(** {12 Upgrading from V through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

let v = molecule_aminoacid_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.V;;

(** {12 Upgrading from W through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

let w = molecule_aminoacid_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.W;;

(** {12 Upgrading from Y through Molecule_aminoacid_regular_olc through Molecule_aminoacid_fragmented_olc to Molecule_aminoacid_olc.} *)

let y = molecule_aminoacid_olc_symbol_of_molecule_aminoacid_regular_olc_symbol Maros_t.Y;;

(** {6 Including.} *)

module Mas_t = Molecule_aminoacid_symbol_t

let molecule_aminoacid_symbol_of_molecule_aminoacid_olc_symbol = function
  | Maos_t.Molecule_aminoacid_segmented_olc_symbol smb -> 
      Mas_t.Molecule_aminoacid_segmented_symbol
	(Masos_v.molecule_aminoacid_segmented_symbol_of_molecule_aminoacid_segmented_olc_symbol smb)

  | Maos_t.Molecule_aminoacid_fragmented_olc_symbol smb_aon ->
      Mas_t.Molecule_aminoacid_fragmented_symbol
	(Mafos_v.molecule_aminoacid_fragmented_symbol_of_molecule_aminoacid_fragmented_olc_symbol smb_aon)
;;

let char_of_molecule_aminoacid_olc_symbol smb_amo =
  let str = name smb_amo in
  String.get str 0  
;;

let molecule_aminoacid_olc_symbol_of_molecule_aminoacid_regular_olc_symbol smb_aor =
  Maos_t.Molecule_aminoacid_fragmented_olc_symbol
    (Mafos_t.Molecule_aminoacid_regular_olc_symbol smb_aor)
;;

let molecule_aminoacid_olc_symbol_of_char = function
  | 'g'
  | 'G' -> g
  | 'p'
  | 'P' -> p
  | chr -> 
      molecule_aminoacid_olc_symbol_of_molecule_aminoacid_regular_olc_symbol 
	(Maros_v.molecule_aminoacid_regular_olc_symbol_of_char chr)
;;
	
let molecule_aminoacid_olc_symbol_of_string str =
  if String.length str = 1 
  then
    begin
      let c = String.get str 1 in
      molecule_aminoacid_olc_symbol_of_char c
    end
  else
    failwith "Not_character:Maos_v.molecule_aminoacid_olc_symbol_of_string"
;;

let read ib =
  let str = Scanf.bscanf ib "%s" (fun s -> s) in
  Scanf.sscanf str "%0c" molecule_aminoacid_olc_symbol_of_char
;;

(** created by ./do_entitysum_symbol_v_ml.sh molecule_aminoacid_olc 13 January 2011. *)

