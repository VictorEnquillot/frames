open Make_test_v;;

testing "Recordpdb_seqres_v";;

(* toplevel 
   #use "trecordpdb_seqres_v.ml";; 
*)

let str =
(*        1         2         3         4         5         6         7         8
 12345678901234567890123456789012345678901234567890123456789012345678901234567890
           1         2         3         4         5         6         7         8
 012345678901234567890123456789012345678901234567890123456789012345678901234567890
*)
"SEQRES   4 B   58  ALA LYS ARG ASN ASN PHE LYS SER ALA GLU ASP CYS MET  4PTI  73  ";;

let ib = Scanf.Scanning.from_string str;;

let str_atm =
"ATOM     15  CD2 LEU A   2      20.031   3.495   1.202  1.00 29.07           C  ";;

let ib_atm = Scanf.Scanning.from_string str_atm;;

let get_type_at_n ib =
  Scanf.bscanf ib "%6s%n" (fun rec_typ n -> rec_typ, n)
;;

let skip_n_char ib n =
  for i = 1 to n do
    Scanf.bscanf ib "%1c" (fun c -> ())
  done;
;;

let read_type ib =
  let (r, n) = get_type_at_n ib in
  let str_n = String.make (6-n) ' ' in
  r^str_n
;;

let get_at_n ib =
  Scanf.bscanf ib "%n" (fun n -> n) 
;;

let get_achar_at_n ib =
  Scanf.bscanf ib "%c%n" (fun c n -> c, n) 
;;

let typ = read_type ib;;

test_number 1 (
 read_type (Scanf.Scanning.from_string "SEQRES   4 B")
=
"SEQRES"
);;

test_number 2 (
 read_type (Scanf.Scanning.from_string "SEQRESX   4 B")
=
"SEQRES"
);;

test_number 3 (
 read_type (Scanf.Scanning.from_string "ATOM     4 B")
=
"ATOM  "
);;

(***

let read ib =

  Scanf.bscanf ib "%0c" (fun c ->
    match letter_lex_class c with
    | One -> 
	if len = 1 
	then 
	  Scanf.sscanf str "%1s" mendeleev_symbol_of_string 
	else failwith "One_character:read"
    | One_or_two ->
	if len = 1 
	then 
	  Scanf.sscanf str "%1s" mendeleev_symbol_of_string 
        else if len = 2
	then Scanf.sscanf str "%2s" mendeleev_symbol_of_string 
	else failwith "One_or_two_characters:read"
    | Two -> 
	if len = 2
	then Scanf.sscanf str "%2s" mendeleev_symbol_of_string 
	else failwith "Two_characters:read"
    | One_or_three ->
	if len = 1 
	then 
	  Scanf.sscanf str "%1s" mendeleev_symbol_of_string 
        else if len = 3
	then Scanf.sscanf str "%3s" mendeleev_symbol_of_string 
	else failwith "One_or_three_characters:read"
			 )
;;

Scanf.bscanf ib
  "%6s %6i %4s %3s \
   %c %4i \
   %f %f %f \
   %f %f \
   %s"
 (fun kwd atom_idx atom_name residue_name
      chain_idx residue_idx
      x y z
      percent b_factor
      label ->
  kwd, atom_idx, atom_name, residue_name,
  chain_idx, residue_idx,
  x, y, z,
  percent, b_factor,
  label)
;;


(* Reading *)

type lex_class =
  | One
  | One_or_two
  | One_or_three
  | Two
;;

let letter_lex_class = function
  | 'A' -> Two
  | 'B' | 'C' -> One_or_two
  | 'D' | 'E' -> Two
  | 'F' | 'H' | 'I' | 'K' -> One_or_two
  | 'L' | 'M' -> Two
  | 'N' | 'O' | 'P' -> One_or_two
  | 'R' -> Two
  | 'S' -> One_or_two
  | 'T' -> Two
  | 'U' -> One_or_three
  | 'V' | 'W' -> One
  | 'X' -> Two
  | 'Y' -> One_or_two
  | 'Z' -> Two
  | 'G' | 'J' | 'Q' | _ as c ->
    failwith
      (Printf.sprintf
         "Atomic_symbol.read: %c is not a valid beginning for atomic symbols."
         c)
;;

let read ib =
  let str = Scanf.bscanf ib "%s" (fun s -> s) in
  let len = String.length str in

  Scanf.sscanf str "%0c" (fun c ->
    match letter_lex_class c with
    | One -> 
	if len = 1 
	then 
	  Scanf.sscanf str "%1s" mendeleev_symbol_of_string 
	else failwith "One_character:read"
    | One_or_two ->
	if len = 1 
	then 
	  Scanf.sscanf str "%1s" mendeleev_symbol_of_string 
        else if len = 2
	then Scanf.sscanf str "%2s" mendeleev_symbol_of_string 
	else failwith "One_or_two_characters:read"
    | Two -> 
	if len = 2
	then Scanf.sscanf str "%2s" mendeleev_symbol_of_string 
	else failwith "Two_characters:read"
    | One_or_three ->
	if len = 1 
	then 
	  Scanf.sscanf str "%1s" mendeleev_symbol_of_string 
        else if len = 3
	then Scanf.sscanf str "%3s" mendeleev_symbol_of_string 
	else failwith "One_or_three_characters:read"
			 )
;;


let rcd_nam_w = 
  Recordpdb_seqres_v.get_current_word str Fieldpdb_symbol_t.Record_label;;
let rcd_num_w = 
  Recordpdb_seqres_v.get_current_word str Fieldpdb_symbol_t.Record_number;;
let chn_lbl_w = 
  Recordpdb_seqres_v.get_current_word str Fieldpdb_symbol_t.Chain_index;;
let seq_len_w = 
  Recordpdb_seqres_v.get_current_word str Fieldpdb_symbol_t.Seqres_sequence_length;;
let trn_nam_w = 
  Recordpdb_seqres_v.get_current_word str Fieldpdb_symbol_t.Seqres_thirteen_names;;

test_number 4 (
Recordpdb_seqres_v.get_current_word str Fieldpdb_symbol_t.Record_label
=
 "SEQRES"
);;

test_number 5 (
Recordpdb_seqres_v.get_current_word str Fieldpdb_symbol_t.Record_number
=
" 4"
);;

test_number 6 (
Recordpdb_seqres_v.get_current_word str Fieldpdb_symbol_t.Chain_index
=
"B"
);;

test_number 7 (
Recordpdb_seqres_v.get_current_word str Fieldpdb_symbol_t.Seqres_sequence_length
=
"  58"
);;

test_number 8 (
Recordpdb_seqres_v.get_current_word str Fieldpdb_symbol_t.Seqres_thirteen_names
=
  "ALA LYS ARG ASN ASN PHE LYS SER ALA GLU ASP CYS MET"
);;

test_number 9 (
Recordpdb_seqres_v.seqres_record_of_string  str
=
{
  Recordpdb_seqres_t.record_label = Recordpdb_symbol_t.SEQRES;
  Recordpdb_seqres_t.record_number = 4;
  Recordpdb_seqres_t.chain_index_pdb = Polypeptide_identifier_t.Chain_B;
  Recordpdb_seqres_t.sequence_length = 58;
  Recordpdb_seqres_t.thirteen_names =
  "ALA LYS ARG ASN ASN PHE LYS SER ALA GLU ASP CYS MET"
}
);;

*****)
