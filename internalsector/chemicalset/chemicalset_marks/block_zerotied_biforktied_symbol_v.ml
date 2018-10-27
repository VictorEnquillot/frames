(** {3 The functionalities for a Symbol for a Block_zerotied_biforktied.} *)

let nam_cod = "block_zerotied_biforktied_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Block_zerotied_biforktied_symbol_t.Block_none_singlesingle_symbol sym_bns ->
      Block_none_singlesingle_symbol_v.name sym_bns
  | Block_zerotied_biforktied_symbol_t.Block_none_singleconjugated -> "block_none_singleconjugated"
  | Block_zerotied_biforktied_symbol_t.Block_none_singledouble_symbol sym_bns ->
      Block_none_singledouble_symbol_v.name sym_bns
  | Block_zerotied_biforktied_symbol_t.Block_none_singletriple_symbol sym_bns ->
      Block_none_singletriple_symbol_v.name sym_bns
  | Block_zerotied_biforktied_symbol_t.Block_none_doublesingle_symbol sym_bnd ->
      Block_none_doublesingle_symbol_v.name sym_bnd
  | Block_zerotied_biforktied_symbol_t.Block_none_doubleconjugated -> "block_none_doubleconjugated"
  | Block_zerotied_biforktied_symbol_t.Block_none_doubledouble -> "block_none_doubledouble"
;;


(** {6 Upgrading} *)


let block_zerotied_biforktied_symbol_of_block_none_singlesingle_symbol sym_bns = 
  Block_zerotied_biforktied_symbol_t.Block_none_singlesingle_symbol sym_bns
;;

let block_zerotied_biforktied_symbol_of_block_none_singlesingle_benttwolonepair_symbol sym_nsb = 
  let sym_bns = Block_none_singlesingle_symbol_v.block_none_singlesingle_symbol_of_block_none_singlesingle_benttwolonepair_symbol sym_nsb in
    block_zerotied_biforktied_symbol_of_block_none_singlesingle_symbol sym_bns
;;

let block_zerotied_biforktied_symbol_of_block_none_singledouble_symbol sym_bns = 
  Block_zerotied_biforktied_symbol_t.Block_none_singledouble_symbol sym_bns
;;

let block_zerotied_biforktied_symbol_of_block_none_singledouble_trigonalplanar_symbol sym_nst = 
  let sym_bns = Block_none_singledouble_symbol_v.block_none_singledouble_symbol_of_block_none_singledouble_trigonalplanar_symbol sym_nst in
    block_zerotied_biforktied_symbol_of_block_none_singledouble_symbol sym_bns
;;

let block_zerotied_biforktied_symbol_of_block_none_singletriple_symbol sym_bns = 
  Block_zerotied_biforktied_symbol_t.Block_none_singletriple_symbol sym_bns
;;

let block_zerotied_biforktied_symbol_of_block_none_singletriple_monoatomic_symbol sym_nsm = 
  let sym_bns = Block_none_singletriple_symbol_v.block_none_singletriple_symbol_of_block_none_singletriple_monoatomic_symbol sym_nsm in
    block_zerotied_biforktied_symbol_of_block_none_singletriple_symbol sym_bns
;;

let block_zerotied_biforktied_symbol_of_block_none_doublesingle_symbol sym_bnd = 
  Block_zerotied_biforktied_symbol_t.Block_none_doublesingle_symbol sym_bnd
;;

let block_zerotied_biforktied_symbol_of_block_none_doublesingle_trigonalplanar_symbol sym_ndt = 
  let sym_bnd = Block_none_doublesingle_symbol_v.block_none_doublesingle_symbol_of_block_none_doublesingle_trigonalplanar_symbol sym_ndt in
    block_zerotied_biforktied_symbol_of_block_none_doublesingle_symbol sym_bnd
;;


(** {6 Abbreviating} *)


let n_o_ss = block_zerotied_biforktied_symbol_of_block_none_singlesingle_symbol Block_none_singlesingle_symbol_v.n_o_ss;;

let block_none_singleconjugated = Block_zerotied_biforktied_symbol_t.Block_none_singleconjugated;;

let n_ch_sd = block_zerotied_biforktied_symbol_of_block_none_singledouble_symbol Block_none_singledouble_symbol_v.n_ch_sd;;

let n_c_st = block_zerotied_biforktied_symbol_of_block_none_singletriple_symbol Block_none_singletriple_symbol_v.n_c_st;;

let n_ch_ds = block_zerotied_biforktied_symbol_of_block_none_doublesingle_symbol Block_none_doublesingle_symbol_v.n_ch_ds;;

let block_none_doubleconjugated = Block_zerotied_biforktied_symbol_t.Block_none_doubleconjugated;;

let block_none_doubledouble = Block_zerotied_biforktied_symbol_t.Block_none_doubledouble;;


(** {6 Making} *)


let make = function
  | "n_o_ss" -> n_o_ss
  | "block_none_singleconjugated" -> block_none_singleconjugated
  | "n_ch_sd" -> n_ch_sd
  | "n_c_st" -> n_c_st
  | "n_ch_ds" -> n_ch_ds
  | "block_none_doubleconjugated" -> block_none_doubleconjugated
  | "block_none_doubledouble" -> block_none_doubledouble
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let block_none_singlesingle_symbol_off_block_zerotied_biforktied_symbol = function
  | Block_zerotied_biforktied_symbol_t.Block_none_singlesingle_symbol sym_bns -> sym_bns
  | sym_b0b -> Error_messages_v.print_fatal_error
      nam_cod "block_none_singlesingle_symbol_off_block_zerotied_biforktied_symbol"
      "Block_none_singlesingle_symbol"
      (name sym_b0b) "check"
;;

let block_none_singlesingle_benttwolonepair_symbol_off_block_zerotied_biforktied_symbol sym_b0b = 
  let sym_bns = block_none_singlesingle_symbol_off_block_zerotied_biforktied_symbol sym_b0b in 
    Block_none_singlesingle_symbol_v.block_none_singlesingle_benttwolonepair_symbol_off_block_none_singlesingle_symbol sym_bns
;;

let block_none_singledouble_symbol_off_block_zerotied_biforktied_symbol = function
  | Block_zerotied_biforktied_symbol_t.Block_none_singledouble_symbol sym_bns -> sym_bns
  | sym_b0b -> Error_messages_v.print_fatal_error
      nam_cod "block_none_singledouble_symbol_off_block_zerotied_biforktied_symbol"
      "Block_none_singledouble_symbol"
      (name sym_b0b) "check"
;;

let block_none_singledouble_trigonalplanar_symbol_off_block_zerotied_biforktied_symbol sym_b0b = 
  let sym_bns = block_none_singledouble_symbol_off_block_zerotied_biforktied_symbol sym_b0b in 
    Block_none_singledouble_symbol_v.block_none_singledouble_trigonalplanar_symbol_off_block_none_singledouble_symbol sym_bns
;;

let block_none_singletriple_symbol_off_block_zerotied_biforktied_symbol = function
  | Block_zerotied_biforktied_symbol_t.Block_none_singletriple_symbol sym_bns -> sym_bns
  | sym_b0b -> Error_messages_v.print_fatal_error
      nam_cod "block_none_singletriple_symbol_off_block_zerotied_biforktied_symbol"
      "Block_none_singletriple_symbol"
      (name sym_b0b) "check"
;;

let block_none_singletriple_monoatomic_symbol_off_block_zerotied_biforktied_symbol sym_b0b = 
  let sym_bns = block_none_singletriple_symbol_off_block_zerotied_biforktied_symbol sym_b0b in 
    Block_none_singletriple_symbol_v.block_none_singletriple_monoatomic_symbol_off_block_none_singletriple_symbol sym_bns
;;

let block_none_doublesingle_symbol_off_block_zerotied_biforktied_symbol = function
  | Block_zerotied_biforktied_symbol_t.Block_none_doublesingle_symbol sym_bnd -> sym_bnd
  | sym_b0b -> Error_messages_v.print_fatal_error
      nam_cod "block_none_doublesingle_symbol_off_block_zerotied_biforktied_symbol"
      "Block_none_doublesingle_symbol"
      (name sym_b0b) "check"
;;

let block_none_doublesingle_trigonalplanar_symbol_off_block_zerotied_biforktied_symbol sym_b0b = 
  let sym_bnd = block_none_doublesingle_symbol_off_block_zerotied_biforktied_symbol sym_b0b in 
    Block_none_doublesingle_symbol_v.block_none_doublesingle_trigonalplanar_symbol_off_block_none_doublesingle_symbol sym_bnd
;;


(** {6 Querying} *)


let is_block_none_singlesingle_symbol_off_block_zerotied_biforktied_symbol = function
  | Block_zerotied_biforktied_symbol_t.Block_none_singlesingle_symbol _ -> true
  | _ -> false
;;

let is_block_none_singlesingle_benttwolonepair_symbol_off_block_zerotied_biforktied_symbol sym_b0b =
  if not (is_block_none_singlesingle_symbol_off_block_zerotied_biforktied_symbol sym_b0b)
  then false
  else
    begin
     let sym_bns = block_none_singlesingle_symbol_off_block_zerotied_biforktied_symbol sym_b0b in 
     Block_none_singlesingle_symbol_v.is_block_none_singlesingle_benttwolonepair_symbol_off_block_none_singlesingle_symbol sym_bns
    end
;;

let is_block_none_singledouble_symbol_off_block_zerotied_biforktied_symbol = function
  | Block_zerotied_biforktied_symbol_t.Block_none_singledouble_symbol _ -> true
  | _ -> false
;;

let is_block_none_singledouble_trigonalplanar_symbol_off_block_zerotied_biforktied_symbol sym_b0b =
  if not (is_block_none_singledouble_symbol_off_block_zerotied_biforktied_symbol sym_b0b)
  then false
  else
    begin
     let sym_bns = block_none_singledouble_symbol_off_block_zerotied_biforktied_symbol sym_b0b in 
     Block_none_singledouble_symbol_v.is_block_none_singledouble_trigonalplanar_symbol_off_block_none_singledouble_symbol sym_bns
    end
;;

let is_block_none_singletriple_symbol_off_block_zerotied_biforktied_symbol = function
  | Block_zerotied_biforktied_symbol_t.Block_none_singletriple_symbol _ -> true
  | _ -> false
;;

let is_block_none_singletriple_monoatomic_symbol_off_block_zerotied_biforktied_symbol sym_b0b =
  if not (is_block_none_singletriple_symbol_off_block_zerotied_biforktied_symbol sym_b0b)
  then false
  else
    begin
     let sym_bns = block_none_singletriple_symbol_off_block_zerotied_biforktied_symbol sym_b0b in 
     Block_none_singletriple_symbol_v.is_block_none_singletriple_monoatomic_symbol_off_block_none_singletriple_symbol sym_bns
    end
;;

let is_block_none_doublesingle_symbol_off_block_zerotied_biforktied_symbol = function
  | Block_zerotied_biforktied_symbol_t.Block_none_doublesingle_symbol _ -> true
  | _ -> false
;;

let is_block_none_doublesingle_trigonalplanar_symbol_off_block_zerotied_biforktied_symbol sym_b0b =
  if not (is_block_none_doublesingle_symbol_off_block_zerotied_biforktied_symbol sym_b0b)
  then false
  else
    begin
     let sym_bnd = block_none_doublesingle_symbol_off_block_zerotied_biforktied_symbol sym_b0b in 
     Block_none_doublesingle_symbol_v.is_block_none_doublesingle_trigonalplanar_symbol_off_block_none_doublesingle_symbol sym_bnd
    end
;;


(** created by ./generator block_zerotied_biforktied implementation symbol at 14:23 25 Feb 2012. *)



