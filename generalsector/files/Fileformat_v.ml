(** {3 The functionalities for a Format (extension) of a File.} *)

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

let fileformat_of_string = function
  | "Charmm" -> Fileformat_t.Charmm
  | "Frames" -> Fileformat_t.Frames
  | "Pdb" -> Fileformat_t.Pdb
  | str -> 
      print_error_string "Fileformat" str "fileformat_of_string";
      assert false
 ;;

let fileformat_of_fileextension = function
  | "chm" -> Fileformat_t.Charmm
  | "frm" -> Fileformat_t.Frames
  | "pdb" -> Fileformat_t.Pdb
  | str -> 
      print_error_string "Fileformat" str "fileformat_of_string";
      assert false
 ;;

let read ib =
  Scanf.bscanf ib "%s" (fun s -> fileformat_of_string s) 
;;

(** {6 Extracting.} *)

(** {6 Converting.} *)

let name = function 
  | Fileformat_t.Charmm -> Format.sprintf "chm"
  | Fileformat_t.Frames -> Format.sprintf "frm"  
  | Fileformat_t.Pdb -> Format.sprintf "pdb"
;;

let fileextension_of_string str =
  let flf = fileformat_of_string str in
  name flf
 ;;
 
let print ppf = function
  | Fileformat_t.Charmm -> Format.fprintf ppf "%s" "Charmm"  
  | Fileformat_t.Frames -> Format.fprintf ppf "%s" "Frames"  
  | Fileformat_t.Pdb -> Format.fprintf ppf "%s" "Pdb"  
;;
