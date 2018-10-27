(* $Id: Exp $ *)

let nam_cod = "Aminoacid_symbol_pdb_v";;
let octr_ppf = Format.formatter_of_out_channel Tools_v.oc_trace;;

(** {3 The Functions to handle Aminoacid_symbol_pdb_v.} *)

(** {6 Extra Aminoacid_symbol_pdb.} *)

let string_of_extra_aminoacid_symbol_pdb = function
  | Aminoacid_symbol_pdb_t.Asx -> "Asx"
  | Aminoacid_symbol_pdb_t.Glx -> "Glx"
  | Aminoacid_symbol_pdb_t.Ini -> "Ini"
  | Aminoacid_symbol_pdb_t.Ter -> "Ter"
  | Aminoacid_symbol_pdb_t.Unk -> "Unk"
;;

let extra_aminoacid_symbol_pdb_string_array () = 
[| "Asx"; "Glx"; "Ini"; "Ter"; "Unk";|]
;;

let extra_aminoacid_symbol_pdb_of_string str = 
 match (Tools_v.capitalize_force str) with
  | "Asx" -> Aminoacid_symbol_pdb_t.Asx;
  | "Glx" -> Aminoacid_symbol_pdb_t.Glx;
  | "Ini" -> Aminoacid_symbol_pdb_t.Ini;
  | "Ter" -> Aminoacid_symbol_pdb_t.Ter;
  | "Unk" -> Aminoacid_symbol_pdb_t.Unk;
  | str -> 
      Format.fprintf  Format.err_formatter
      "@.@[<h>Aminoacid_symbol_pdb_v.of_string:@.\
      Fatal Error.@.\
      Attempt to interpret a string as a non existing standard amino-acid symbol@.\
      Incoming string: >%s<@.\
      List of standard amino_acids is:@.%s@]@."
      str	
      (Tools_v.column_of_string_list 
	 (Aminoacid_symbol_v.aminoacid_symbol_string_list ()));
    assert (false)
;;

(** {6 Standard Aminoacid_symbol_pdb.} *)

let string_of_standard_aminoacid_symbol_pdb sym_ama =
  Aminoacid_symbol_v.string_of_aminoacid_symbol sym_ama
;;

(** {6 Aminoacid_symbol_pdb.} *)

let string_of_aminoacid_symbol_pdb = function
  | Aminoacid_symbol_pdb_t.Standard sym_ama -> 
      string_of_standard_aminoacid_symbol_pdb sym_ama
  | Aminoacid_symbol_pdb_t.Extra sym_xaa -> 
      string_of_extra_aminoacid_symbol_pdb sym_xaa
;;

let chemical_name_of_extra_aminoacid_symbol_pdb = function
  | Aminoacid_symbol_pdb_t.Asx -> "Asparagine or Aspartic acid"
  | Aminoacid_symbol_pdb_t.Glx -> "Glutamine or Glutamic acid"
  | Aminoacid_symbol_pdb_t.Ini -> "INI ???"
  | Aminoacid_symbol_pdb_t.Ter -> "C Terminal"
  | Aminoacid_symbol_pdb_t.Unk -> "Unknown"
;;

(** {9 Aminoacid_symbol_pdb_t Printings.} *)

let uppercase_of_aminoacid_symbol_pdb  sym_ams_pdb = 
  String.uppercase (string_of_aminoacid_symbol_pdb  sym_ams_pdb)
;;

let print  ppf  sym_ama =
  Format.fprintf ppf "%s" (string_of_aminoacid_symbol_pdb  sym_ama)
;;

let print_upper  ppf  sym_ama =
  Format.fprintf ppf "%s" (uppercase_of_aminoacid_symbol_pdb  sym_ama)
;;

(** {6 Aminoacid_symbol_pdb_t_of_... .} *)

let aminoacid_symbol_pdb_of_aminoacid_symbol sym_ama = 
  Aminoacid_symbol_pdb_t.Standard sym_ama
;;

let aminoacid_symbol_pdb_of_aminoacid_symbol sym_ama =
  Aminoacid_symbol_pdb_t.Standard  sym_ama 
;; 

let standard_aminoacid_symbol_pdb_of_string str = 
  let sym_ama =
    try (Aminoacid_symbol_v.aminoacid_symbol_of_string str)
    with Failure "Unknown_aminoacid_symbol" ->
   begin
    Format.fprintf (Format.err_formatter) 
   "@.@[<hov>%s.standard_aminoacid_symbol_pdb_of_string: --- Fatal Error ---@.\
   str >%s< does not represent a standard aminoacid@.\
   standard aminoacid list is %s@]@."
   nam_cod str 
   (Tools_v.column_of_string_list 
      (Aminoacid_symbol_v.aminoacid_symbol_string_list ()));
   assert false;
  end

  in
  aminoacid_symbol_pdb_of_aminoacid_symbol sym_ama 
;;

let aminoacid_symbol_pdb_of_string  str =
  let cap = Tools_v.capitalize_force str in
  try standard_aminoacid_symbol_pdb_of_string cap
  with Failure "Unknown_aminoacid_symbol" ->
    Aminoacid_symbol_pdb_t.Extra (extra_aminoacid_symbol_pdb_of_string cap)
;;

let aminoacid_symbol_pdb_of_anycase str =
  aminoacid_symbol_pdb_of_string (Tools_v.capitalize_force str)
;;

let aminoacid_symbol_pdb_of_path pth =
  let sym_ama = Path_v.aminoacid_symbol_of_path pth in
  aminoacid_symbol_pdb_of_aminoacid_symbol sym_ama
;;

let print_aminoacid_symbol_pdb ppf sym_ams_pdb =
  Format.fprintf ppf "%s" (string_of_aminoacid_symbol_pdb sym_ams_pdb)
;;

(** {9 ..._of_aminoacid_symbol_pdb} *)

let aminoacid_symbol_of_aminoacid_symbol_pdb = function
    | Aminoacid_symbol_pdb_t.Standard sym_ama -> sym_ama
    | _ -> raise (Failure "No_such_aminoacid_symbol")
;;

let name_of_aminoacid_symbol_pdb = function
  | Aminoacid_symbol_pdb_t.Standard sym_ama -> 
      Aminoacid_symbol_v.name_of_aminoacid_symbol sym_ama
  | Aminoacid_symbol_pdb_t.Extra sym_xaa ->  
      chemical_name_of_extra_aminoacid_symbol_pdb sym_xaa
;;

(** {9 Pdb_one_letter_code_of_...} *)

let rec one_letter_code_pdb_of_aminoacid_symbol_pdb = function
  | Aminoacid_symbol_pdb_t.Standard sym_ama -> 
      One_letter_code_pdb_t.Standard 
	(Aminoacid_symbol_v.one_letter_code_of_aminoacid_symbol sym_ama)
  | Aminoacid_symbol_pdb_t.Extra sym_xaa -> 
      One_letter_code_pdb_t.Extra 
	(one_letter_code_pdb_of_extra_aminoacid_symbol_pdb sym_xaa)

and one_letter_code_pdb_of_extra_aminoacid_symbol_pdb = function
  | Aminoacid_symbol_pdb_t.Asx -> One_letter_code_pdb_t.B  (* all these are fake *)
  | Aminoacid_symbol_pdb_t.Glx -> One_letter_code_pdb_t.X
  | Aminoacid_symbol_pdb_t.Ini -> One_letter_code_pdb_t.J
  | Aminoacid_symbol_pdb_t.Ter -> One_letter_code_pdb_t.O
  | Aminoacid_symbol_pdb_t.Unk -> One_letter_code_pdb_t.U
;;

let rec one_letter_code_pdb_of_char  char =
  try pdb_standard_one_letter_code_of_char  char 
  with Not_found -> pdb_extra_one_letter_code_of_char char

and pdb_standard_one_letter_code_of_char  char =
  One_letter_code_pdb_t.Standard 
    (
  try Aminoacid_symbol_v.one_letter_code_of_char char
  with Failure ("Aminoacid_symbol_v.one_letter_code_of_char: unknown amino acid one letter symbol") -> raise Not_found
    )  
and pdb_extra_one_letter_code_of_char = function
 | 'B' -> One_letter_code_pdb_t.Extra One_letter_code_pdb_t.B 
 | 'X' -> One_letter_code_pdb_t.Extra One_letter_code_pdb_t.X 
 | 'J' -> One_letter_code_pdb_t.Extra One_letter_code_pdb_t.J 
 | 'O' -> One_letter_code_pdb_t.Extra One_letter_code_pdb_t.O 
 | 'U' -> One_letter_code_pdb_t.Extra One_letter_code_pdb_t.U
 | _ -> raise (Failure "Aminoacid_symbol_pdb_v.pdb_extra_one_letter_code_of_char: unknown extra amino acid one letter symbol")
;;

let aminoacid_symbol_pdb_of_one_letter_code_pdb = function
  | One_letter_code_pdb_t.Standard (std_olc) -> 
      Aminoacid_symbol_pdb_t.Standard 
	(Aminoacid_symbol_v.aminoacid_symbol_of_one_letter_code std_olc)
  | One_letter_code_pdb_t.Extra (ext_olc) -> 
      match ext_olc with
        | One_letter_code_pdb_t.B -> 
	    Aminoacid_symbol_pdb_t.Extra Aminoacid_symbol_pdb_t.Asx
	| One_letter_code_pdb_t.X -> 
	    Aminoacid_symbol_pdb_t.Extra Aminoacid_symbol_pdb_t.Glx 
	| One_letter_code_pdb_t.J -> 
	    Aminoacid_symbol_pdb_t.Extra Aminoacid_symbol_pdb_t.Ini
	| One_letter_code_pdb_t.O -> 
	    Aminoacid_symbol_pdb_t.Extra Aminoacid_symbol_pdb_t.Ter
	| One_letter_code_pdb_t.U -> 
	    Aminoacid_symbol_pdb_t.Extra Aminoacid_symbol_pdb_t.Unk
;;

let aminoacid_symbol_pdb_of_char chr =
  aminoacid_symbol_pdb_of_aminoacid_symbol 
    (Aminoacid_symbol_v.aminoacid_symbol_of_char chr)
;;

let rec char_of_one_letter_code_pdb  = function
  | One_letter_code_pdb_t.Standard (std_olc) ->
      Aminoacid_symbol_v.char_of_one_letter_code std_olc
  | One_letter_code_pdb_t.Extra (ext_olc) -> 
      char_of_pdb_extra_one_letter_code  ext_olc

and char_of_pdb_extra_one_letter_code = function
  | One_letter_code_pdb_t.B -> 'B'
  | One_letter_code_pdb_t.X -> 'X'
  | One_letter_code_pdb_t.J -> 'J'
  | One_letter_code_pdb_t.O -> 'O'
  | One_letter_code_pdb_t.U -> 'U'
;;

(** {9 Pdb_symbol Readings.} *)

let read_aminoacid_symbol_pdb ib =
 Scanf.bscanf ib "%s" (function str -> aminoacid_symbol_pdb_of_string str)
;;

let read_anycase_aminoacid_symbol_pdb ib =
  Scanf.bscanf ib "%3s" (function str -> aminoacid_symbol_pdb_of_anycase str)
;;
 

