(** {3 The Keypdb functionnalities for an Entry of the Pdb.} *)

let nam_cod = "Entrypdb_keypdb_v";;


(** {6 Extracting.} *)

let string_off_entrypdb = Entrypdb_symbol_v.string_off_entrypdb ;;

let name = Entrypdb_symbol_v.name;;

let print = Entrypdb_symbol_v.print;;

let filename_of_entrypdb_keypdb = Entrypdb_symbol_v.filename_of_entrypdb_symbol;;

let compare = Entrypdb_symbol_v.compare;;
