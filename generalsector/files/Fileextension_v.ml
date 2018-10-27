(** {3 The functionalities for a Format (extension) of a File.} *)

let nam_cod = "Fileextension_v.ml";;


(** {6 Making.} *)

let make = function
  | "adb" -> Fileextension_t.Adb
  | "annot" -> Fileextension_t.Annot
  | "chm" -> Fileextension_t.Chm
  | "cma" -> Fileextension_t.Cma
  | "cmax" -> Fileextension_t.Cmax
  | "cmi" -> Fileextension_t.Cmi
  | "cmo" -> Fileextension_t.Cmo
  | "cmx" -> Fileextension_t.Cmx
  | "dat" -> Fileextension_t.Dat
  | "db1" -> Fileextension_t.Db1
  | "db2" -> Fileextension_t.Db2
  | "db3" -> Fileextension_t.Db3
  | "err" -> Fileextension_t.Err  
  | "fra" -> Fileextension_t.Fra
  | "htm" -> Fileextension_t.Htm
  | "html" -> Fileextension_t.Htm
  | "inp" -> Fileextension_t.Inp
  | "ldb" -> Fileextension_t.Ldb
  | "log" -> Fileextension_t.Log
  | "mea" -> Fileextension_t.Mea
  | "mk" -> Fileextension_t.Mk
  | "ml" -> Fileextension_t.Ml
  | "mli" -> Fileextension_t.Mli
  | "out" -> Fileextension_t.Out
  | "pdb" -> Fileextension_t.Pdb
  | "pro" -> Fileextension_t.Pro
  | "set" -> Fileextension_t.Set
  | "" -> Fileextension_t.Empty
  | str -> 
      Error_messages_v.print_fatal_error 
	nam_cod 
	"make"
	"adb|chm|dat|err|fra|htm|html|inp|log|ml|mli|out|pdb|set"
	(">"^str^"<") 
	"check or add it to menu above"
 ;;

let read ib =
  Scanf.bscanf ib "%s" (fun s -> make s) 
;;

let extract_off_string str =  
(* ../..//d/i/r/contentsymbol.ext *)
  if String.length str = 0 
  then 
    Error_messages_v.print_fatal_error 
      nam_cod 
      "extract_off_string"
      "non empty string" "empty string" "check"
  else ();

  let ssu = String_v.suppress_leading_string_off_string "./" str in  
  
  let rvs = String_v.reverse_of_string ssu in
  let dot_idx = 
    try String.index rvs '.' 
    with Not_found -> 0
  in
  let sst = 
    try String.sub rvs 0 dot_idx 
    with Invalid_argument ("String.sub") -> ""
  in
  let s = String_v.reverse_of_string sst in
  make s
;;

(** {6 Extracting.} *)

(** {6 Converting.} *)

let short_name = function 
  | Fileextension_t.Adb -> Format.sprintf "adb"
  | Fileextension_t.Annot -> Format.sprintf "%s" "Annot"  
  | Fileextension_t.Chm -> Format.sprintf "chm"
  | Fileextension_t.Cma -> Format.sprintf "cma"
  | Fileextension_t.Cmax -> Format.sprintf "cmax"
  | Fileextension_t.Cmi -> Format.sprintf "cmi"
  | Fileextension_t.Cmo -> Format.sprintf "cmo"
  | Fileextension_t.Cmx -> Format.sprintf "cmx"
  | Fileextension_t.Dat -> Format.sprintf "dat"  
  | Fileextension_t.Db1 -> Format.sprintf "db1"  
  | Fileextension_t.Db2 -> Format.sprintf "db2"  
  | Fileextension_t.Db3 -> Format.sprintf "db3"  
  | Fileextension_t.Empty -> Format.sprintf ""
  | Fileextension_t.Err -> Format.sprintf "err"
  | Fileextension_t.Fra -> Format.sprintf "fra"  
  | Fileextension_t.Htm -> Format.sprintf "html"
  | Fileextension_t.Inp -> Format.sprintf "inp"
  | Fileextension_t.Ldb -> Format.sprintf "ldb"
  | Fileextension_t.Log -> Format.sprintf "log"
  | Fileextension_t.Mea -> Format.sprintf "mea"
  | Fileextension_t.Mk -> Format.sprintf "mk"
  | Fileextension_t.Ml -> Format.sprintf "ml"
  | Fileextension_t.Mli -> Format.sprintf "mli"
  | Fileextension_t.Out -> Format.sprintf "out"
  | Fileextension_t.Pdb -> Format.sprintf "pdb"
  | Fileextension_t.Pro -> Format.sprintf "pro"
  | Fileextension_t.Set -> Format.sprintf "set"
;;

let name = function
  | Fileextension_t.Adb -> Format.sprintf "%s" "Alien Database"  
  | Fileextension_t.Annot -> Format.sprintf "%s" "Annot"  
  | Fileextension_t.Chm -> Format.sprintf "%s" "Charmm"  
  | Fileextension_t.Cma -> Format.sprintf "cma"
  | Fileextension_t.Cmax -> Format.sprintf "cmax"
  | Fileextension_t.Cmi -> Format.sprintf "cmi"
  | Fileextension_t.Cmo -> Format.sprintf "cmo"
  | Fileextension_t.Cmx -> Format.sprintf "cmx"
  | Fileextension_t.Dat -> Format.sprintf "%s" "Data"  
  | Fileextension_t.Db1 -> Format.sprintf "%s" "Db1"  
  | Fileextension_t.Db2 -> Format.sprintf "%s" "Db2"  
  | Fileextension_t.Db3 -> Format.sprintf "%s" "Db3"  
  | Fileextension_t.Empty -> Format.sprintf "%s" ""
  | Fileextension_t.Err -> Format.sprintf "%s" "Error"
  | Fileextension_t.Fra -> Format.sprintf "%s" "Frames"  
  | Fileextension_t.Htm -> Format.sprintf "%s" "Html"  
  | Fileextension_t.Inp -> Format.sprintf "%s" "Input"
  | Fileextension_t.Ldb -> Format.sprintf "%s" "Local Database"  
  | Fileextension_t.Log -> Format.sprintf "%s" "Log"
  | Fileextension_t.Mea -> Format.sprintf "%s" "Measure"  
  | Fileextension_t.Mk  -> Format.sprintf "%s" "Makefile element"  
  | Fileextension_t.Ml  -> Format.sprintf "%s" "Caml implementation"  
  | Fileextension_t.Mli -> Format.sprintf "%s" "Caml interface"  
  | Fileextension_t.Out -> Format.sprintf "%s" "Output"
  | Fileextension_t.Pdb -> Format.sprintf "%s" "Protein Database"  
  | Fileextension_t.Pro -> Format.sprintf "%s" "Property"  
  | Fileextension_t.Set -> Format.sprintf "%s" "Caml interface"  
;;
