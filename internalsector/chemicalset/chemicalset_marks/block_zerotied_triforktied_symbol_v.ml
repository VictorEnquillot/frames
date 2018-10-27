(** {3 The functionalities for a Symbol for a Block_zerotied_triforktied.} *)

let nam_cod = "block_zerotied_triforktied_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_zerotied_triforktied_symbol_t.Block_none_singlesinglesingle_symbol sym_bns ->
      Block_none_singlesinglesingle_symbol_v.name sym_bns
  | Block_zerotied_triforktied_symbol_t.Block_none_singlesingledouble -> "block_none_singlesingledouble"
;;


(** {6 Upgrading} *)


let block_zerotied_triforktied_symbol_of_block_none_singlesinglesingle_symbol sym_bns = 
  Block_zerotied_triforktied_symbol_t.Block_none_singlesinglesingle_symbol sym_bns
;;

let block_zerotied_triforktied_symbol_of_block_none_singlesinglesingle_diatomic_symbol sym_nsd = 
  let sym_bns = Block_none_singlesinglesingle_symbol_v.block_none_singlesinglesingle_symbol_of_block_none_singlesinglesingle_diatomic_symbol sym_nsd in
    block_zerotied_triforktied_symbol_of_block_none_singlesinglesingle_symbol sym_bns
;;

let block_zerotied_triforktied_symbol_of_block_none_singlesinglesingle_monoatomic_symbol sym_nsm = 
  let sym_bns = Block_none_singlesinglesingle_symbol_v.block_none_singlesinglesingle_symbol_of_block_none_singlesinglesingle_monoatomic_symbol sym_nsm in
    block_zerotied_triforktied_symbol_of_block_none_singlesinglesingle_symbol sym_bns
;;


(** {6 Abbreviating} *)


let n_ch_sss = block_zerotied_triforktied_symbol_of_block_none_singlesinglesingle_symbol Block_none_singlesinglesingle_symbol_v.n_ch_sss;;

let n_n_sss = block_zerotied_triforktied_symbol_of_block_none_singlesinglesingle_symbol Block_none_singlesinglesingle_symbol_v.n_n_sss;;

let block_none_singlesingledouble = Block_zerotied_triforktied_symbol_t.Block_none_singlesingledouble;;


(** {6 Making} *)


let make = function
  | "n_ch_sss" -> n_ch_sss
  | "n_n_sss" -> n_n_sss
  | "block_none_singlesingledouble" -> block_none_singlesingledouble
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_none_singlesinglesingle_symbol_off_block_zerotied_triforktied_symbol = function
  | Block_zerotied_triforktied_symbol_t.Block_none_singlesinglesingle_symbol sym_bns -> sym_bns
  | sym_b0t -> Error_messages_v.print_fatal_error
      nam_cod "block_none_singlesinglesingle_symbol_off_block_zerotied_triforktied_symbol"
      "Block_none_singlesinglesingle_symbol"
      (name sym_b0t) "check"
;;

let block_none_singlesinglesingle_diatomic_symbol_off_block_zerotied_triforktied_symbol sym_b0t = 
  let sym_bns = block_none_singlesinglesingle_symbol_off_block_zerotied_triforktied_symbol sym_b0t in 
    Block_none_singlesinglesingle_symbol_v.block_none_singlesinglesingle_diatomic_symbol_off_block_none_singlesinglesingle_symbol sym_bns
;;

let block_none_singlesinglesingle_monoatomic_symbol_off_block_zerotied_triforktied_symbol sym_b0t = 
  let sym_bns = block_none_singlesinglesingle_symbol_off_block_zerotied_triforktied_symbol sym_b0t in 
    Block_none_singlesinglesingle_symbol_v.block_none_singlesinglesingle_monoatomic_symbol_off_block_none_singlesinglesingle_symbol sym_bns
;;


(** {6 Querying} *)


let is_block_none_singlesinglesingle_symbol_off_block_zerotied_triforktied_symbol = function
  | Block_zerotied_triforktied_symbol_t.Block_none_singlesinglesingle_symbol _ -> true
  | _ -> false
;;

let is_block_none_singlesinglesingle_diatomic_symbol_off_block_zerotied_triforktied_symbol sym_b0t =
  if not (is_block_none_singlesinglesingle_symbol_off_block_zerotied_triforktied_symbol sym_b0t)
  then false
  else
    begin
     let sym_bns = block_none_singlesinglesingle_symbol_off_block_zerotied_triforktied_symbol sym_b0t in 
     Block_none_singlesinglesingle_symbol_v.is_block_none_singlesinglesingle_diatomic_symbol_off_block_none_singlesinglesingle_symbol sym_bns
    end
;;

let is_block_none_singlesinglesingle_monoatomic_symbol_off_block_zerotied_triforktied_symbol sym_b0t =
  if not (is_block_none_singlesinglesingle_symbol_off_block_zerotied_triforktied_symbol sym_b0t)
  then false
  else
    begin
     let sym_bns = block_none_singlesinglesingle_symbol_off_block_zerotied_triforktied_symbol sym_b0t in 
     Block_none_singlesinglesingle_symbol_v.is_block_none_singlesinglesingle_monoatomic_symbol_off_block_none_singlesinglesingle_symbol sym_bns
    end
;;


(** created by ./generator block_zerotied_triforktied implementation symbol at 14:23 25 Feb 2012. *)



