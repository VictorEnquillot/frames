(** {3 The Key functionnalities for a Record of a Pdb Entry} *)

let nam_cod = "Recordpdb_keypdb_v";;


(** {6 Making.} *)

let print_fatal_error nam_fun sym_pkp chr_l =
  let nam_c_l c_l = List_v.name (Format.sprintf "%c ") c_l in
  Format.fprintf 
    Format.err_formatter 
    "@.@[<hov>%s.%s: --- Fatal Error ---@.\
     @.     expecting %i chain_id[s] associated with Symbol >%s<.\      
     found [%s] chain_id list.\      
     cure : check making of key.@]@."
     nam_cod nam_fun
    (List.length (Recordpdb_symbol_v.chain_idpdb_column_list_of_recordpdb_symbol sym_pkp)) 
    (Recordpdb_symbol_v.name sym_pkp) (nam_c_l chr_l)
;;

let make sym_pkp chr_l =
  let len = List.length chr_l in
  if len = (List.length (Recordpdb_symbol_v.chain_idpdb_column_list_of_recordpdb_symbol sym_pkp))
  then Doublet_v.make sym_pkp chr_l 
  else (print_fatal_error "make" sym_pkp chr_l; assert false)
;;

let read ib =
  Utils_v.not_yet_implemented nam_cod "read"
;;

(** {6 Converting.} *)

let name key_pkp =
  Doublet_v.name Recordpdb_symbol_v.name (List_v.name (Format.sprintf "%c")) key_pkp
;;

let print ppf key_pkp = 
  let prt_chr ppf chr =
    Format.fprintf ppf "%c" chr in 
  Doublet_v.print Recordpdb_symbol_v.print (List_v.print prt_chr) ppf key_pkp
;;

let compare key_a key_b =
  String.compare (name key_a) (name key_b)
;;

