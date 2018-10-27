(** {3 The functionalities for a Format of a File.} *)

let nam_mod = "Fileformat_v";;

(** {6 Error Printing.} *)

let print_error_string nam str her =
    Format.fprintf Format.err_formatter 
    "@.@[<hov>%s.%s: --- Fatal Error ---@.\
    unkown %s >%s<@.\
    Please add it to the menu above.@]@." 
    nam_mod her nam str 
;;

(** {6 Making.} *)

let file_symbol_of_string  = function
  | "Charmm" -> File_symbol_t.Charmm
  | "Frames" -> File_symbol_t.Frames
  | "Pdb" -> File_symbol_t.Pdb
  | str -> 
      print_error_string "Fileformat" str "fileformat_of_string";
      assert false
 ;;
 
let read ib =
  Scanf.bscanf ib "%s" (fun s -> file_symbol_of_string s) 
;;

(** {6 Extracting.} *)

(** {6 Converting.} *)

let short_name = function (* also extension *)
  | File_symbol_t.Charmm -> Format.sprintf "chm"
  | File_symbol_t.Frames -> Format.sprintf "frm"  
  | File_symbol_t.Pdb -> Format.sprintf "pdb"
;;

let name = function
  | File_symbol_t.Charmm -> Format.sprintf "%s" "Charmm"  
  | File_symbol_t.Frames -> Format.sprintf "%s" "Frames"  
  | File_symbol_t.Pdb -> Format.sprintf "%s" "Pdb"  
;;
