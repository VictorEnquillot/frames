(** {3 The functionalities for a Symbol for a Block_none_singlesinglesingle.} *)

let nam_cod = "block_none_singlesinglesingle_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_none_singlesinglesingle_symbol_t.Block_none_singlesinglesingle_diatomic_symbol sym_nsd ->
      Block_none_singlesinglesingle_diatomic_symbol_v.name sym_nsd
  | Block_none_singlesinglesingle_symbol_t.Block_none_singlesinglesingle_monoatomic_symbol sym_nsm ->
      Block_none_singlesinglesingle_monoatomic_symbol_v.name sym_nsm
;;


(** {6 Upgrading} *)


let block_none_singlesinglesingle_symbol_of_block_none_singlesinglesingle_diatomic_symbol sym_nsd = 
  Block_none_singlesinglesingle_symbol_t.Block_none_singlesinglesingle_diatomic_symbol sym_nsd
;;

let block_none_singlesinglesingle_symbol_of_block_none_singlesinglesingle_monoatomic_symbol sym_nsm = 
  Block_none_singlesinglesingle_symbol_t.Block_none_singlesinglesingle_monoatomic_symbol sym_nsm
;;


(** {6 Abbreviating} *)


let n_ch_sss = block_none_singlesinglesingle_symbol_of_block_none_singlesinglesingle_diatomic_symbol Block_none_singlesinglesingle_diatomic_symbol_v.n_ch_sss;;

let n_n_sss = block_none_singlesinglesingle_symbol_of_block_none_singlesinglesingle_monoatomic_symbol Block_none_singlesinglesingle_monoatomic_symbol_v.n_n_sss;;


(** {6 Making} *)


let make = function
  | "n_ch_sss" -> n_ch_sss
  | "n_n_sss" -> n_n_sss
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_none_singlesinglesingle_diatomic_symbol_off_block_none_singlesinglesingle_symbol = function
  | Block_none_singlesinglesingle_symbol_t.Block_none_singlesinglesingle_diatomic_symbol sym_nsd -> sym_nsd
  | sym_bns -> Error_messages_v.print_fatal_error
      nam_cod "block_none_singlesinglesingle_diatomic_symbol_off_block_none_singlesinglesingle_symbol"
      "Block_none_singlesinglesingle_diatomic_symbol"
      (name sym_bns) "check"
;;

let block_none_singlesinglesingle_monoatomic_symbol_off_block_none_singlesinglesingle_symbol = function
  | Block_none_singlesinglesingle_symbol_t.Block_none_singlesinglesingle_monoatomic_symbol sym_nsm -> sym_nsm
  | sym_bns -> Error_messages_v.print_fatal_error
      nam_cod "block_none_singlesinglesingle_monoatomic_symbol_off_block_none_singlesinglesingle_symbol"
      "Block_none_singlesinglesingle_monoatomic_symbol"
      (name sym_bns) "check"
;;


(** {6 Querying} *)


let is_block_none_singlesinglesingle_diatomic_symbol_off_block_none_singlesinglesingle_symbol = function
  | Block_none_singlesinglesingle_symbol_t.Block_none_singlesinglesingle_diatomic_symbol _ -> true
  | _ -> false
;;

let is_block_none_singlesinglesingle_monoatomic_symbol_off_block_none_singlesinglesingle_symbol = function
  | Block_none_singlesinglesingle_symbol_t.Block_none_singlesinglesingle_monoatomic_symbol _ -> true
  | _ -> false
;;


(** created by ./generator block_none_singlesinglesingle implementation symbol at 14:23 25 Feb 2012. *)



