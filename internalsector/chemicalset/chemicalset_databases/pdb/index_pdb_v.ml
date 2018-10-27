(* $Id: Exp $ *)

let nam_cod = "Index_pdb_v";;
let octr_ppf = Format.formatter_of_out_channel Tools_v.oc_trace;;

let rec print ppf = function 
  | Index_pdb_t.Altloc (idx) -> print_alternate_location_index ppf idx
  | Index_pdb_t.Branch (idx) -> print_branch_index_pdb ppf idx
  | Index_pdb_t.Chain (idx) -> print_chain_index_pdb ppf idx 
  | Index_pdb_t.Hydrogen (idx) -> print_h_index_pdb ppf idx
  | Index_pdb_t.Insertion (idx) -> print_insertion_index_pdb ppf idx
  | Index_pdb_t.Remote (idx) -> print_remote_index_pdb ppf idx 

and print_alternate_location_index ppf = function
  | Index_pdb_t.Alternate_blank -> Format.fprintf ppf "%s" " " 
  | Index_pdb_t.Alternate_A -> Format.fprintf ppf "%s" "A" 
  | Index_pdb_t.Alternate_B -> Format.fprintf ppf "%s" "B"  
  | Index_pdb_t.Alternate_C -> Format.fprintf ppf "%s" "C"  

and print_chain_index_pdb =
  Polypeptide_identifier_v.print_chain_index
 
and print_branch_index_pdb ppf = function
  | Index_pdb_t.Branch_blank -> Format.fprintf ppf "%s" " " 
  | Index_pdb_t.Branch_one -> Format.fprintf ppf "%s" "1" 
  | Index_pdb_t.Branch_two -> Format.fprintf ppf "%s" "2" 
  | Index_pdb_t.Branch_three -> Format.fprintf ppf "%s" "3" 
  | Index_pdb_t.Branch_four -> Format.fprintf ppf "%s" "4"
  | Index_pdb_t.Branch_five -> Format.fprintf ppf "%s" "5" 
  | Index_pdb_t.Branch_six -> Format.fprintf ppf "%s" "6" 
  | Index_pdb_t.Branch_t -> Format.fprintf ppf "%s" "T" 

and print_h_index_pdb ppf = function
  | Index_pdb_t.H_blank -> Format.fprintf ppf "%s" " "
  | Index_pdb_t.H_one -> Format.fprintf ppf "%s" "1"
  | Index_pdb_t.H_two -> Format.fprintf ppf "%s" "2"
  | Index_pdb_t.H_three -> Format.fprintf ppf "%s" "3" 

and print_insertion_index_pdb ppf = function
  | Index_pdb_t.Insertion_blank -> Format.fprintf ppf "%s" " "
  | Index_pdb_t.Insertion_A -> Format.fprintf ppf "%s" "A"
  | Index_pdb_t.Insertion_B -> Format.fprintf ppf "%s" "B"
  | Index_pdb_t.Insertion_C -> Format.fprintf ppf "%s" "C"
  | Index_pdb_t.Insertion_D -> Format.fprintf ppf "%s" "D"
  | Index_pdb_t.Insertion_E -> Format.fprintf ppf "%s" "E"
  | Index_pdb_t.Insertion_F -> Format.fprintf ppf "%s" "F"
  | Index_pdb_t.Insertion_G -> Format.fprintf ppf "%s" "G"
  | Index_pdb_t.Insertion_H -> Format.fprintf ppf "%s" "H"
  | Index_pdb_t.Insertion_one -> Format.fprintf ppf "%s" "1"
  | Index_pdb_t.Insertion_two -> Format.fprintf ppf "%s" "2"
  | Index_pdb_t.Insertion_three -> Format.fprintf ppf "%s" "3" 

and print_remote_index_pdb ppf = function
  | Index_pdb_t.Remote_blank -> Format.fprintf ppf "%s" " "
  | Index_pdb_t.Remote_A -> Format.fprintf ppf "%s" "A"
  | Index_pdb_t.Remote_B -> Format.fprintf ppf "%s" "B"
  | Index_pdb_t.Remote_G -> Format.fprintf ppf "%s" "G"
  | Index_pdb_t.Remote_D -> Format.fprintf ppf "%s" "D"
  | Index_pdb_t.Remote_E -> Format.fprintf ppf "%s" "E"
  | Index_pdb_t.Remote_H -> Format.fprintf ppf "%s" "H"
  | Index_pdb_t.Remote_Z -> Format.fprintf ppf "%s" "Z"
;;

let print_alternate_location_index_pdb = print_alternate_location_index
;;

let string_of_index_pdb idp =
  print Format.str_formatter idp;
  Format.flush_str_formatter () 
;;

let int_of_index_pdb  idp =
  try int_of_string (string_of_index_pdb  idp)
  with Failure "int_of_string" -> 
    Format.fprintf Format.err_formatter 
   "@.@.@[Index_pdb_t.int_of_index:@ \
    Fatal Error: index >%a< not an integer.@]@." 
   print idp; assert false
;;	 

let print_error_index c mes her =
    Format.fprintf (Format.err_formatter) 
    "@.@[<hov>%s.%s: --- Fatal Error ---@.\
    expecting character %s .@.\
    found character \'%1c\'@.\
    Please add it to the menu above.@]@." 
    nam_cod her mes c;       
;;

let read_remote_index_pdb ib =
  Scanf.bscanf ib "%1c" (function
    | ' ' -> Index_pdb_t.Remote_blank 
    | 'A' -> Index_pdb_t.Remote_A 
    | 'B' -> Index_pdb_t.Remote_B
    | 'G' -> Index_pdb_t.Remote_G
    | 'D' -> Index_pdb_t.Remote_D 
    | 'E' -> Index_pdb_t.Remote_E
    | 'Z' -> Index_pdb_t.Remote_Z  
    | 'H' -> Index_pdb_t.Remote_H  
    | c -> begin print_error_index 
	  c "' ' 'A' 'B' 'G' 'D' 'E' 'Z' 'H'"  "read_remote_index_pdb"; 
	assert false end )
;;

let remote_index_pdb_of_string str =
  read_remote_index_pdb (Scanf.Scanning.from_string str)
;;

let print_error_int i f e her =
    Format.fprintf (Format.err_formatter) 
    "@.@[<hov>%s.%s: --- Fatal Error ---@.\
    expecting integer between %i to %i. found >%i<@.\
    Please add it to the menu above.@]@." 
    nam_cod her i f e;       
;;

let remote_index_pdb_of_int = function
  | 0 -> Index_pdb_t.Remote_blank
  | 1 -> Index_pdb_t.Remote_A  (* alpha *)
  | 2 -> Index_pdb_t.Remote_B  (* betaa *)
  | 3 -> Index_pdb_t.Remote_G  (* gamma *)
  | 4 -> Index_pdb_t.Remote_D  (* delta *)
  | 5 -> Index_pdb_t.Remote_E  (* epsilon *)
  | 6 -> Index_pdb_t.Remote_Z  (* zeta *)
  | 7 -> Index_pdb_t.Remote_H  (* eta *)
  | i -> begin print_error_int i 0 7 "remote_index_pdb_of_int" ; 
      assert false end
;;

let read_alternate_location_index ib =
  Scanf.bscanf ib "%1c" (function
    | ' ' | '_' -> Index_pdb_t.Alternate_blank 
    | 'A' -> Index_pdb_t.Alternate_A 
    | 'B' -> Index_pdb_t.Alternate_B
    | 'C' -> Index_pdb_t.Alternate_C
    | c -> begin print_error_index 
     c "' ' 'A' 'B' 'C'" "read_alternate_location_index";
            assert false end)
;;

let read_branch_index_pdb ib =
  Scanf.bscanf ib "%1c" (function
    | ' ' | '_' -> Index_pdb_t.Branch_blank
    | '1' -> Index_pdb_t.Branch_one
    | '2' -> Index_pdb_t.Branch_two
    | '3' -> Index_pdb_t.Branch_three
    | '4' -> Index_pdb_t.Branch_four
    | '5' -> Index_pdb_t.Branch_five
    | '6' -> Index_pdb_t.Branch_six
    | 'T' -> Index_pdb_t.Branch_t
    | c -> begin print_error_index 
      c "' ' '_' '1' '2' '3' '4' '5' '6' 'T'" "read_branch_index_pdb";
           assert false end)
;;

let read_h_index_pdb ib =
  Scanf.bscanf ib "%1c" (function
    | ' ' | '_' -> Index_pdb_t.H_blank
    | '1' -> Index_pdb_t.H_one
    | '2' -> Index_pdb_t.H_two
    | '3' -> Index_pdb_t.H_three
    | c -> begin print_error_index 
      c "' ' '_' '1' '2' '3'" "read_h_index_pdb";
           assert false end)
;;

let read_insertion_index_pdb ib =
  Scanf.bscanf ib "%1c" (function
    | ' ' -> Index_pdb_t.Insertion_blank
    | 'A' -> Index_pdb_t.Insertion_A
    | 'B' -> Index_pdb_t.Insertion_B
    | 'C' -> Index_pdb_t.Insertion_C
    | c ->  begin print_error_index 
     c "' ' 'A' 'B' 'C'" "read_insertion_index_pdb";
           assert false end)
;;

let insertion_index_pdb_of_string str =
  read_insertion_index_pdb (Scanf.Scanning.from_string str) 
;;

let h_index_pdb_of_int = function
  | 0 -> Index_pdb_t.H_blank 
  | 1 -> Index_pdb_t.H_one 
  | 2 -> Index_pdb_t.H_two 
  | 3 -> Index_pdb_t.H_three 
  | i -> begin print_error_int i 0 3 "h_index_pdb_of_int" ; 
      assert false end
;;

let h_index_pdb_of_string str =
  read_h_index_pdb (Scanf.Scanning.from_string str) 
;;

let alternate_location_index_of_string str =
  read_alternate_location_index (Scanf.Scanning.from_string str) 
;;

let branch_index_pdb_of_string str =
  read_branch_index_pdb (Scanf.Scanning.from_string str) 
;;

let branch_index_pdb_of_int = function
  | 0 -> Index_pdb_t.Branch_blank
  | 1 -> Index_pdb_t.Branch_one
  | 2 -> Index_pdb_t.Branch_two
  | 3 -> Index_pdb_t.Branch_three
  | 4 -> Index_pdb_t.Branch_four
  | 5 -> Index_pdb_t.Branch_five
  | 6 -> Index_pdb_t.Branch_six
  | i -> begin print_error_int i 0 6 "branch_index_pdb_of_int" ; 
      assert false end
;;
