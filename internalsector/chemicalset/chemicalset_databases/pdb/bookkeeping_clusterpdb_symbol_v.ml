(** {3 The Symbol functionnalities for a Bookkeeping Pack of a Pdb Entry} *)

let nam_cod = "Bookkeeping_clusterpdb_symbol_v";;


let name = function
  | Bookkeeping_clusterpdb_symbol_t.MASTER -> Format.sprintf "MASTER"
  | Bookkeeping_clusterpdb_symbol_t.END -> Format.sprintf "END"
;;

