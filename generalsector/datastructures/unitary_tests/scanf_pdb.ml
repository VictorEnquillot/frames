open Make_test_v;;

testing "tscanf_pdb";;

(* toplevel 
   #use "scanf_pdb.ml";; 
*)

let str_seq =
(*        1         2         3         4         5         6         7         8
 12345678901234567890123456789012345678901234567890123456789012345678901234567890
           1         2         3         4         5         6         7         8
 012345678901234567890123456789012345678901234567890123456789012345678901234567890
*)
"SEQRES   4 B   58  ALA LYS ARG ASN ASN PHE LYS SER ALA GLU ASP CYS MET  4PTI  73  ";;

let ib_seq = Scanf.Scanning.from_string str_seq;;

let str_atm =
"ATOM     15  CD2 LEU A   2      20.031   3.495   1.202  1.00 29.07           C  ";;

let name ib =
  Scanf.bscanf ib "%s@\n" (fun s -> s)
;;

let skip_n_char ib n =
  if n <= 0 then ()
  else 
    for i = 1 to n do
      Scanf.bscanf ib "%1c" (fun c -> ())
    done;
;;

let skip_n_pad_of_scanbuf_of_string_of_remainder ib str res =
  (* pad string remainder if any with blanks *) 
  let str_n = String.make res ' ' in
  (* move cursor *) 
  skip_n_char ib res;
  str^str_n
;;

let number_of_read_characters_of_scanbuf ib =
  Scanf.bscanf ib "%n" (fun n -> n) 
;;

let where_in_scanbuf ib =
  Scanf.bscanf ib "%n" (fun n -> n) 
;;

let move_cursor_of_scanbuf_before_column ib col =
  let nbc = number_of_read_characters_of_scanbuf ib in
  skip_n_char ib (col - nbc -1)
;;

let character_n_cursor_of_scanbuf ib =
  Scanf.bscanf ib "%c%n" (fun fld n -> fld, n)
;;

let string3_n_cursor_of_scanbuf ib =
  Scanf.bscanf ib "%3s%n" (fun fld n -> fld, n)
;;

let string6_n_cursor_of_scanbuf ib =
  Scanf.bscanf ib "%6s%n" (fun fld n -> fld, n)
;;

let integer3_n_cursor_of_scanbuf ib =
  Scanf.bscanf ib "%0c" 
    ( function
      | ' ' -> Scanf.bscanf ib " %3i%n" (fun fld n -> fld, n)
      | _ -> Scanf.bscanf ib "%3i%n" (fun fld n -> fld, n)
     )
;;

let integer4_n_cursor_of_scanbuf ib =
  Scanf.bscanf ib "%0c" 
    ( function
      | ' ' -> Scanf.bscanf ib " %4i%n" (fun fld n -> fld, n)
      | _ -> Scanf.bscanf ib "%4i%n" (fun fld n -> fld, n)
     )
;;

let read_character_at ccos ib col =
  move_cursor_of_scanbuf_before_column ib col ;
  let (fld, nchr) = ccos ib in
  fld
;;

let read_string_from_to scos ib col1 col2 =
  move_cursor_of_scanbuf_before_column ib col1 ;
  let wid = col2 - col1 + 1 in
  let (str, nchr) = scos ib in
  let res = wid - nchr in
  skip_n_pad_of_scanbuf_of_string_of_remainder ib str res
;;

let read_integer_from_to icos ib col1 col2 =
  move_cursor_of_scanbuf_before_column ib col1 ;
  let (fld, nchr) = icos ib in
  fld
;;

let read_recordname ib =
  read_string_from_to string6_n_cursor_of_scanbuf ib 1 6
;;

let read_serialnumber ib =
  read_integer_from_to integer3_n_cursor_of_scanbuf ib 8 10
;;

let read_chainid ib =
  read_character_at character_n_cursor_of_scanbuf ib 12
;;

let read_residuecount ib =
  read_integer_from_to integer4_n_cursor_of_scanbuf ib 14 17
;;

let read_residuename ib =
  read_string_from_to string3_n_cursor_of_scanbuf ib 20 22
;;

let ib_atm = Scanf.Scanning.from_string str_atm;;

test_number 1 (
 read_recordname ib_atm
=
"ATOM  "
);;

test_number 2 (
 where_in_scanbuf ib_atm
=
6
);;

test_number 3 (
Scanf.bscanf (Scanf.Scanning.from_string str_seq)
"%s      %d %s  %d  %s  %s  %s  %s  %s  %s  %s  %s  %s  %s  %s  %s  %s  %n %s %n "
 (fun
  s1      n1 s2  n2  s3  s4  s5  s6  s7  s8  s9 s10 s11 s12 s13 s14 s15 n3 s16 n4
 -> s1, n1, s2, n2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, n3, s16, n4)
=
("SEQRES", 4, "B", 58, "ALA", "LYS", "ARG", "ASN", "ASN", "PHE", "LYS",
 "SER", "ALA", "GLU", "ASP", "CYS", "MET", 72, "4PTI", 78)
);;

let ib_seq = Scanf.Scanning.from_string str_seq;;
test_number 4 (
 string6_n_cursor_of_scanbuf ib_seq (* : string * int *)
= 
("SEQRES", 6)
);;

let ib_seq = Scanf.Scanning.from_string str_seq;;
move_cursor_of_scanbuf_before_column ib_seq 6;;
test_number 5 (
where_in_scanbuf ib_seq
(* : int *)
= 
5
);;

let ib_seq = Scanf.Scanning.from_string str_seq;;
move_cursor_of_scanbuf_before_column ib_seq 1;;

test_number 6 (
name ib_seq
(* : int *)
= "SEQRES   4 B   58  ALA LYS ARG ASN ASN PHE LYS SER ALA GLU ASP CYS MET  4PTI  73  "
);;

let ib_seq = Scanf.Scanning.from_string str_seq;;
test_number 7 (
read_string_from_to string6_n_cursor_of_scanbuf ib_seq 1 6
(* : string *)
  = "SEQRES"
);;

let ib_seq = Scanf.Scanning.from_string str_seq;;
test_number 8 (
read_recordname ib_seq
  =
"SEQRES"
);;

test_number 9 (
 where_in_scanbuf ib_seq
=
6
);;

let ib_seq = Scanf.Scanning.from_string str_seq;;
test_number 10 (
read_chainid ib_seq
  =
'B'
);;

test_number 11 (
 where_in_scanbuf ib_seq
=
12
);;

let ib_seq = Scanf.Scanning.from_string str_seq;;
test_number 12 (
read_chainid ib_seq
  =
'B'
);;

test_number 13 (
 where_in_scanbuf ib_seq
=
12
);;

let ib_seq = Scanf.Scanning.from_string str_seq;;
test_number 14 (
read_residuecount ib_seq
  =
58
);;

test_number 15 (
 where_in_scanbuf ib_seq
=
17
);;

test_number 16 (
true
(*
read_residuename ib_seq
  =
""*)
);;

test_number 17 (
 where_in_scanbuf ib_seq
=
17
);;

(***
let f1 = Scanf.sscanf "fmt:\"number is %u\"" "fmt:%{%i%}" (fun fmt -> fmt);;
test_number 18 (
Scanf.sscanf "number is 4" f1 (fun i -> i)
=
4
);;

let str_f1 = Scanf.sscanf "fmt:\"number is %u\"" "fmt:%{%i%}" string_of_format;;
test_number 19 (
str_f1 (* : string *)
=
 "number is %u"
);;

let f2 = Scanf.sscanf "fmt:\"number is %u\"" "fmt:%{%i%}" (fun fmt -> fmt);;
let f3 = format_of_string f1;; 
test_number 20 (
f2 (* : (int -> '_a, '_b, '_c, '_d, '_d, '_a) format6  = <abstr> *)
=
f3
);;


***)
