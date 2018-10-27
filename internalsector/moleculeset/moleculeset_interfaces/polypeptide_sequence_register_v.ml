(** {3 The (internal) Register for all Cefp Single of a Basisset.} *)

let nam_cod = "polypeptide_sequence_register_v.ml";;

(** {6 Modules.} *)


(** {6 Register.} *)
        
let polypeptide_sequence_register : (Polypeptide_symbol_t.polypeptide_symbol, Polypeptide_sequence_t.polypeptide_sequence) Register_t.register = Register_v.make 137;;

let store sym_plp seq_plp =
  try Register_v.store polypeptide_sequence_register sym_plp seq_plp 
  with Failure ("Already_stored:Register_v.store") ->
    failwith ("Already_stored:Psr_v.store")
;;

let retrieve sym_plp =
  try Register_v.retrieve polypeptide_sequence_register sym_plp
  with Failure ("Not_stored:Register_v.retrieve") ->
    failwith ("Not_stored:Psr_v.retrieve")
;;  


