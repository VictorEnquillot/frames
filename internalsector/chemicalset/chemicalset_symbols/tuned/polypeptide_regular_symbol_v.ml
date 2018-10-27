(** {3 The functionalities for a Symbol for a Polypeptide_regular.} *)

let nam_cod = "polypeptide_regular_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Making} *)




(** {6 Naming} *)


let name = function
  | Polypeptide_regular_symbol_t.Frompdbid _ -> "frompdbid"
;;

let string_off = function
  | Polypeptide_regular_symbol_t.Frompdbid s -> s
;;

(** {6 Extracting} *)



(** {6 Querying} *)



(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let frompdbid s = Polypeptide_regular_symbol_t.Frompdbid s;;

(** {6 Extracting Including} *)

let chain_symbol_off_polypeptide_regular_symbol sym_prg =
  let str = string_off sym_prg in
  let cid = try String_v.truncate_head_of_string_of_char str '_'
  with Failure "Not_found:String_v.truncate_head_of_string_of_char" ->
    Error_messages_v.print_fatal_error nam_cod 
      "chain_id_off_polypeptide_regular_symbol"
      "Polypeptide Pdb Id has got a chain_id"
      str
      "Check"
  in
  Chain_symbol_v.make cid
;;

(** created by ./generator polypeptide_regular implementation symbol at 9:58 31 Jan 2012. *)



