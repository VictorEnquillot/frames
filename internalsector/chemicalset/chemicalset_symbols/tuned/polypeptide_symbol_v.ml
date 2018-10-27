(** {3 The functionalities for a Symbol for a Polypeptide.} *)

let nam_cod = "polypeptide_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Making} *)




(** {6 Naming} *)


let name = function
  | Polypeptide_symbol_t.Polypeptide_frompdbid _ -> "polypeptide_frompdbid"
;;

let string_off = function
  | Polypeptide_symbol_t.Polypeptide_frompdbid s -> s
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let polypeptide_frompdbid s = Polypeptide_symbol_t.Polypeptide_frompdbid s;;

(** created by ./generator polypeptide implementation symbol at 10:6 9 Feb 2012. *)


(** {6 Extracting Including} *)

let chain_symbol_off_polypeptide_symbol sym_pol =
  let str = string_off sym_pol in
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



